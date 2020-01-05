require "rails_helper"

describe ChampionController, type: :controller do
	fixtures :champions
 describe "editing a champion" do
 	before :each do 
 		@mock_params = {
 			"champion"=>{"name"=>"Camille", "rating"=>"1", "corigin"=>"Hextech", "cclass"=>"Blademaster"}, 
			"method"=>"put", 
			"id"=> 1
		}
 	end
 	
 	it "redirects the user to the champion show page" do 
 		put :update, @mock_params
 		expect(response).to redirect_to(champion_path @mock_params["id"])
 	end
 end
end