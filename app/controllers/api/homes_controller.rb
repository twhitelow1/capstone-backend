class Api::HomesController < ApplicationController
  def show
    @home = Home.find_by(id: params[:id])
    render "show.json.jb"
  end

  def index
    @homes = Home.all 
    render "index.json.jb"
  end
end
