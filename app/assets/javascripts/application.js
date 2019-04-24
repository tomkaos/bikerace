// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= //require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require jquery.countdown.min
//= require lightbox
//= require_tree .

setPhotoLoaders = () => {
    if($('body').hasClass('photos')) {
        // Initialize Photo image preloaders
        $('.photo-list img').each(function(){
            const src = this.getAttribute('src');
            $('<img/>').attr('src', src).on('load', function(){
                const that = this;
                const url = that.getAttribute('src');
                const img = $('.photo-list').find('img[src$="'+url+'"]');
                const index = img.data('index');
                img.remove();
                $('.photo-list .photo[data-index="'+index+'"]').css('background-image', 'url('+url+')').addClass('loaded');
            });
        });
    }
};

setCounter = () => {
    if ($('body').hasClass('home')) {
        // initialize counter on home page
        const event_date = $('#event_date');
        if (event_date.length > 0) {
            $("#timer").countdown(event_date.val(), function(e) {
                $(this).html(e.strftime(
                    '<span>%m</span> months ' +
                    '<span>%n</span> days ' +
                    '<span>%H</span>hr ' +
                    '<span>%M</span>min ' +
                    '<span>%S</span>sec'
                ));
            });
        }
    }
};

$(document).ready(function() {
    setCounter();
    setPhotoLoaders();
});
