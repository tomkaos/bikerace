class PageController < ApplicationController
  def home
    @event_date = '2020/04/01'
  end

  def photos
    @photos = Flickr.photos.search(
      tags: 'bikerace,BoulderBikeTour',
      per_page: 40,
      content_type: 1,
      extras: 'url_s,url_l',
      sort: 'date-posted-desc',
      page: params[:page]
    )
  end

  def map
    @google_maps_api_key = 'AIzaSyC_hMH3EQiAQSp6bGpnR36FlS0S5r6yTDk';
    @riders = Rider.all
    @center = @riders[0]
  end
end
