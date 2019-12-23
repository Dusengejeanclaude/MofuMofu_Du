class PropertiesController < ApplicationController
    before_action :set_property, only: [:show, :edit, :update, :destroy]
    def index
      @properties = Property.all
    end
    def show
      @station = Station.all
    end
    def new
      @property = Property.new
      2.times { @property.stations.build }
    end
    def edit
    end
    def create
      @property = Property.new(property_params)
      if @property.save
        redirect_to @property, notice: 'Property was successfully created.'
      else
        render :new
      end
    end
    def update
      if @property.update(property_params)
        redirect_to @property, notice: 'Property was successfully updated.'
      else
        render :edit
      end
    end
    def destroy
      @property.destroy
      redirect_to properties_url, notice: 'Property was successfully destroyed.'
    end
  
    private
      def set_property
        @property = Property.find(params[:id])
      end
      def property_params
       params.require(:property).permit(:property, :rent, :adress, :building_age, :remarks, stations_attributes: [:id, :name_of_railway_line, :statation_name, :how_many_minutes_walks])
      end
end
