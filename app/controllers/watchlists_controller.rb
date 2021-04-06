class WatchlistsController < ApplicationController

    def new
        @watchlist = Watchlist.new
        
    end
    
    def create
        if params[:watchlist][:watchlist_id]
            add_to_watchlist
        end
        @watchlist = Watchlist.new(watchlist_params)
        @watchlist.user = current_user
        if @watchlist.save
            redirect_to user_path(current_user)
        else
            render 'new'
        end
    end


    def show
        @watchlist = Watchlist.find(params[:id])
    end

    def add_to_watchlist
        
        wl = WatchlistMovie.new(watchlist_id: params[:watchlist][:watchlist_id], movie_id: params[:watchlist][:movie_id])
        binding.pry
        if wl.save
        redirect_to user_path(current_user)
        else
        flash[:notice]="Unable to add to watchlist."
        redirect_to movies_path
        end
    end


    private
    def watchlist_params
        params.require(:watchlist).permit(:name, :user_id, :watchlist_id, :movie_id)
    end
end
