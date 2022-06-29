class PlantsController < ApplicationController

    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    def create
    plant = Plant.create(params_plant)

    render json: plant, status: :created
    end

    private
    def params_plant
        params.permit(:name, :image, :price)
    end


end
