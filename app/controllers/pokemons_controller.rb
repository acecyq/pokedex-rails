class PokemonsController < ApplicationController

	def index
		@index = Pokemon.all
	end

	def show
		@index = Pokemon.find([params[:id]])
		render "index"
	end

	def new
		@pokemon = Pokemon.new
	end

	def edit
		@pokemon = Pokemon.find(params[:id])
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.save
		redirect_to pokemons_path
	end

	def update
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update(pokemon_params)
		redirect_to @pokemon
	end

	def destroy
		@pokemon = Pokemon.find(params[:id])
		@pokemon.destroy
		redirect_to pokemons_path
	end

	private

		def pokemon_params
			params.require(:pokemon).permit(:num, :name, :img, :height, :weight, :candy, :candy_count, :egg, :avg_spawns, :spawn_time)
		end

end