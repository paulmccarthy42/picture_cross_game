class V1::BoardsController < ApplicationController
  def index
    render json: Board.all
  end

  def show
    render json: Board.find_by(id: params[:id]).as_json
  end
end
