class ChampionController < ApplicationController
    
    def index
        @champions = Champion.all
        respond_to do |client_wants|
            client_wants.html {}
            client_wants.xml { render :xml => @champions.to_xml}
            client_wants.json { render :xml => @champions.to_json}
        end
    end
    
    def new 
        @champion = Champion.new
    end
    
    def edit 
        @champion = Champion.find params[:id]
    end
    
    def update
        @champion = Champion.find params[:id]
        @champion.update_attributes!(champion_params)
        flash[:notice] = "#{@champion.name} was sucessfully updated."
        redirect_to champion_path @champion
    end
    
    def create
        @champion = Champion.create!(champion_params)
        flash[:notice] = "#{@champion.name} was sucessfully created."
        redirect_to champion_index_path
    end
    
    def destroy
        champion = Champion.find params[:id]
        cname = champion.name
        champion.destroy!
        flash[:notice] = "#{cname} was sucessfully destroyed."
        redirect_to champion_index_path
    end
    
    def show
        @champion = Champion.find params[:id]
    end
    
    private 
    def champion_params
        params.require(:champion).permit(:name, :rating, :corigin, :cclass)
    end
end
