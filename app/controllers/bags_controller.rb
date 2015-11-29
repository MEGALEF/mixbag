class BagsController < ApplicationController


	def new

	end

	def create
		@bag = Bag.create(bag_params)
		@bag.user = current_user

		if @bag.save
			redirect_to bags_path
		end
	end

	def index
		@bags = Bag.where(user: current_user)
	end

	def show
		@bag = Bag.find(params[:id])
	end

	def generate
		@bag = Bag.find(params[:id])
		nbr = params[:nbr].to_i
		@items = @bag.items.sample(nbr)
	end

	private

	def bag_params
		params.require(:bag).permit(:name)
	end
end
