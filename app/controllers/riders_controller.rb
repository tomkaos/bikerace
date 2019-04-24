class RidersController < ApplicationController
  def index
    @riders = Rider.order('first_name desc').all
  end
end
