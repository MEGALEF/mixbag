class ItemsController < ApplicationController

	def index
		@items = Item.all
		
	end

	def new
		@bag = Bag.find(params[:bag_id])
	end

	def create
		@item = Item.new(item_params)
		@bag = Bag.find(item_params[:bag_id])

		if @item.save
			redirect_to @bag
		end
	end

	def show
		@item = Item.find(params[:id])
	end

	def destroy
		item = Item.find(params[:id])
		@bag = item.bag

		item.destroy 

		redirect_to @bag
	end

	private

	def item_params
		params.require(:item).permit(:name, :bag_id)
	end
end
