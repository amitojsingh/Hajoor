class IndexController < ApplicationController
  def search
@gurbani=Gurbani.where("translation=?", params[:search])
  end
end
