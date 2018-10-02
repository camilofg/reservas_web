module Api
    module V1
        class FieldsController < ApplicationController
            skip_before_action :verify_authenticity_token
            def index
                fields = Field.order('place_id');
                render json: {status: 'success', message: 'fields loaded', data: fields}, status: 200
            end

            def show
                field = Field.find(params[:id])
                render json: {status: 'success', message: 'field loaded', data: field}, status: 200
            end

            def create
                field = Field.new(field_params)

                if field.save
                    render json: {status: 'success', message: 'field saved', data: field}, status: 200
                else 
                    render json: {status: 'error', message: 'field not saved', data: field.error}, status: 500
                end
            end

            def destroy
                field = Field.find(params[:id])
                field.destroy
                render json: {status: 'success', message: 'field deleted', data: field}, status: 200
            end

            def update
                field = Field.find(params[:id])
                if field.update_attributes(field_params)
                    render json: {status: 'success', message: 'field updated', data: field}, status: 200
                else
                    render json: {status: 'error', message: 'field not updated', data: field.error}, status: 500
                end
            end

            private

            def field_params
                params.permit(:number, :size, :roofed, :illuminated )
            end
        end
    end
end
