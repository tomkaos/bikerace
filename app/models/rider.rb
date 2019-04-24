class Rider < ApplicationRecord
  def gmap_url
    "http://maps.google.com/maps?q=#{latitude},#{longitude}"
  end
end
