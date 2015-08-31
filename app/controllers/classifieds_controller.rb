class ClassifiedsController < ApplicationController

  def index

  end

  def new
    @classified = Classified.new
  end

end
