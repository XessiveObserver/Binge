class BingeStaticPagesController < ApplicationController
  def index
    @movies = Movie.all
  end
end
