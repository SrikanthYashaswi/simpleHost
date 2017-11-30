class DiariesController < ApplicationController
  def index

  end

  def create
    diary = Diary.new(params.permit(:name))
    diary.save
    head :ok
  end
end