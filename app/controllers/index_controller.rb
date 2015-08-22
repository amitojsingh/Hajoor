class IndexController < ApplicationController
  def search
  end

  def show
@results= RegWord.new.search(params[:search])
  end
end
