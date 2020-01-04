class ChampionController < ApplicationController
    
    def index
        @champions = Champion.all
    end
    
    def new 
        @champion = Champion.new
    end
    
    def create
        @champion = Champion.create!(champion_params)
        flash[:notice] = "#{@champion.name} was sucessfully created."
        redirect_to champion_index_path
    end
    
    def destroy
        id = params[:id]
        champion = Champion.find(id)
        cname = champion.name
        champion.destroy
        flash[:notice] = "#{cname} was sucessfully destroyed."
        redirect_to champion_index_path
    end
    
    def show
        id = params[:id]
        @champion = Champion.find(id)
    end
    
    private 
    def champion_params
        params.require(:champion).permit(:name, :rating, :description)
    end
end
