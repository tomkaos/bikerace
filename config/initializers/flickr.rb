require "active_support/cache"
require "active_support/core_ext/numeric/time"

# Configure Flickr
Flickr.configure do |config|
  config.api_key       = 'fa9c239905189ae45e70543cded0f5bc'
  config.shared_secret = '5b8eade9a2583475'
  config.pagination = :will_paginate
  # config.cache = ActiveSupport::Cache::MemoryStore(expires_in: 1.day)
end