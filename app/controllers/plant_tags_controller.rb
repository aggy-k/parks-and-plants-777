class PlantTagsController < ApplicationController
  before_action :set_plant

  def new
    @plant_tag = PlantTag.new
  end

  def create
    puts "PARAMS ????? #{params}"
    # {"plant_tag"=>{"tag"=>["11", "12"]}}
    tags = Tag.where(id: params[:plant_tag][:tag])
    tags.each do |tag|
      # tag -> Tag instance
      plant_tag = PlantTag.new(plant: @plant, tag: tag)
      plant_tag.save
    end
    redirect_to garden_path(@plant.garden)
    # raise
    # @plant_tag = PlantTag.new(plant_tag_params)
    # @plant_tag.plant = @plant
    # if @plant_tag.save
    #   redirect_to garden_path(@plant.garden)
    # else
    #   render :new
    # end
  end

  private
    def set_plant
      @plant = Plant.find(params[:plant_id])
    end

    def plant_tag_params
      params.require(:plant_tag).permit(:tag_id)
    end
end
