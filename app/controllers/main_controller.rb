class MainController < ApplicationController

	def index
		@lists = List.all
	end

	# def create

	# end

	# def show

	# end

	def all_lists
		@lists = List.all

	end

	def savelist
		name = params[:name]

		l = List.new(name: name)

		l.save
			
		render json: l

		head :ok
		
	end

	def all_items
		@items = Item.all
	end

	def saveitem
		listID = params[:listID]
		stuff = params[:stuff]

		i = Item.new(listID: listID, stuff: stuff)

		i.save
			
		render json: i

		head :ok
		
	end

	def create_items
		@items = Item.all
		@lists = List.all

	end


	# def destroy
	# 	@item = Item.find(params[:id])
	# 	@item.destroy

	# 	respond_to do |format|
	# 		format.html { redirect_to posts_url }
	# 		format.json { head :no_content }
	# 	end
	# end



end
