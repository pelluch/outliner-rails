class OutlinesController < ApplicationController

	def show
		outlines = Outline.find(params[:id])
		render json: outline
	end

	def create
		outline = Outline.new(outline_params)
		if outline.save
			render json: outline, status: :created, root: false
		else
			render json: outline, status: :unprocessable_entity
		end
	end

	def update
		outline = Outline.find(params[:id])
		if outline.update_attributes(outline_params)
			render json: outline, status: :ok, root: false
		else
			render json: outline, status: :unprocessable_entity
		end
	end

	def destroy
		outline = Outline.find(params[:id])
		outline.destroy
		render nothing: true, status: :no_content
	end

	def index
		outlines = Outline.where(parent_id: nil)
		render json: outlines, root: false
	end

	private

	def outline_params
		params.require(:outline).permit(:name, :parent_id, :index, :content)
	end
end
