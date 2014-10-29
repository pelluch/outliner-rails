class SectionsController < ApplicationController

	def show
		section = Section.find(params[:id])
		render json: section
	end

	def create
		section = Section.new(section_params)
		if section.save
			render json: section, status: :created, root: false
		else
			render json: section, status: :unprocessable_entity
		end
	end

	def update
		section = Section.find(params[:id])
		if section.update_attributes(section_params)
			render json: section, status: :ok, root: false
		else
			render json: section, status: :unprocessable_entity
		end
	end

	def destroy
		section = Section.find(params[:id])
		section.destroy
		render nothing: true, status: :no_content
	end

	def index
		sections = Section.where(parent_id: nil)
		render json: sections, root: false
	end

	private

	def section_params
		params.require(:section).permit(:name, :parent_id, :index, :content)
	end
end
