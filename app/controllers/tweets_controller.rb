class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :update, :edit]

  def index
    @tweets = Tweet.all
  end 

  def comments
    # byebug
    @tweet = Tweet.find(params[:tweet_id])
  end

  def update
    @tweet.update(tweet_params)
    redirect_to tweet_path(@tweet)
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:name)
  end

end
