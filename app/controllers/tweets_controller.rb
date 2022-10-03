class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all 
    end
    
    def new
        @tweet = Tweet.new
    end
    
    def create
        @tweets = Tweet.new(message: params[:tweet] [:message], tdate: Time.current)
       
        if @tweets.save
          flash[:notice] = '1レコード追加しました'
          redirect_to 'root_path'
        else
            render 'new'
        end
        @tweets.save
    end
        
    def destroy
        @tweets = Tweet.find(params[:id])
        @tweets.destroy
        redirect_to 'root_path'
    end
    
    def show
        @tweets = Tweet.find(params[:id])
    end
    
    def edit
        @tweets = Tweet.find(params[:id])
    end
    
    def update
        tweet = Tweet.find(params[:id])
        tweet.update(message: params[:tweet] [:message],
        tdate: params[:tweet] [:tdate])
        redirect_to 'root_path'
    end

end
        
    