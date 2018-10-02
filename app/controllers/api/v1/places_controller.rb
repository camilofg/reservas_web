module Api
    module V1
        class PlacesController < ApplicationController
            skip_before_action :verify_authenticity_token
            def index
                places = Place.order('name');
                render json: {status: 'success', message: 'places loaded', data: places}, status: 200
            end

            def show
                place = Place.find(params[:id])
                render json: {status: 'success', message: 'place loaded', data: place}, status: 200
            end

            def create
                place = Place.new(place_params)

                if place.save
                    render json: {status: 'success', message: 'place saved', data: place}, status: 200
                else 
                    render json: {status: 'error', message: 'place not saved', data: place.error}, status: 500
                end
            end

            def destroy
                place = Place.find(params[:id])
                place.destroy
                render json: {status: 'success', message: 'place deleted', data: place}, status: 200
            end

            def update
                place = Place.find(params[:id])
                if place.update_attributes(place_params)
                    render json: {status: 'success', message: 'place updated', data: place}, status: 200
                else
                    render json: {status: 'error', message: 'place not updated', data: place.error}, status: 500
                end
            end

            private

            def place_params
                params.permit(:name, :address, :phone, :celphone, :email, :whatsapp  )
            end
        end
    end
end
