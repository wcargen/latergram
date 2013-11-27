class HashtagsController < ApplicationController

  def index
    @hashtags = Hashtag.all
  end

  def show

  end

  def new
    @hashtag = Hashtag.new
  end

  def create
    current_user.hashtags.create(name: params[:hashtag][:name])
    redirect_to new_hashtag_path

  end

  def destroy

  end
end
