class PokemonsController < ApplicationController

    def capture
        @pokemon = Pokemon.find(params[:id])
        @pokemon.trainer_id = current_trainer.id
        @pokemon.save
        redirect_to root_path
    end

    def damage
    	@pokemon = Pokemon.find(params[:id])
    	@pokemon.update_column(:health, @pokemon.health - 10)
    	if @pokemon.health <= 0
  			@pokemon.destroy
  		end
  		@pokemon.save
  		redirect_to trainer_path(id: current_trainer)
  	end

    def new
      @pokemon = Pokemon.new
    end

    def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.level = 1
		@pokemon.health = 100
	  	@pokemon.trainer = current_trainer

	  	if @pokemon.save
	  		redirect_to trainer_path(id: current_trainer)
	  	else
	  		render "new"
	  		flash[:error] = @pokemon.errors.full_messages.to_sentence
	  	end
  	end
  
	def pokemon_params
		params.require(:pokemon).permit(:name, :ndex)
	end
end