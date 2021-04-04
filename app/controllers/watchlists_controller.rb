class WatchlistsController < ApplicationController

    def new
        @watchlist = Watchlist.new
        binding.pry
    end
    
    def create
        binding.pry 
        if params[:watchlist][:watchlist_id]
            wl = WatchlistMovie.new(watchlist_id: params[:watchlist][:watchlist_id], movie_id: params[:watchlist][:movie_id])
            binding.pry
            if wl.save
            redirect_to user_path(current_user)
            else
            flash[:notice]="Unable to add to watchlist."
            redirect_to movies
            end
        end
        binding.pry
        @watchlist = Watchlist.new(watchlist_params)
        @watchlist.user = current_user
        if @watchlist.save
            redirect_to user_path(current_user)
        else
            render 'new'
        end
    end

    def add_to_watchlist(watchlist_id, movie_id)
        binding.pry
        wl = WatchlistMovie.new(watchlist_id, movie_id)
        if wl.save
            redirect_to current_user
        else
            flash[:notice]="Unable to add to watchlist."
            redirect_to movies
        end
    end

    private
    def watchlist_params
        params.require(:watchlist).permit(:name, :user_id, :watchlist_id, :movie_id)
    end
end
