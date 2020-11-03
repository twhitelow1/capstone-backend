class Api::ChoresController < ApplicationController
  def index 
    @chores = Chore.all 
    render "index.json.jb"
  end
end
