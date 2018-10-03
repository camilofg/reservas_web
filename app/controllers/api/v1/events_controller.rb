module Api
    module V1
        class EventsController < ApplicationController
            skip_before_action :verify_authenticity_token
            def index
                events = Event.where("field_id = ?", params[:field_id])
                #events = Event.order('start');
                render json: {status: 'success', message: 'events loaded', data: events}, status: 200
            end

            def show
                puts params[:id]
                events = Event.find_by(field_id: params[:id])
                render json: {status: 'success', message: 'events loaded', data: events}, status: 200
            end

            def create
                puts "event parameters"
                puts event_params
                event = Event.new(event_params)

                if event.save
                    render json: {status: 'success', message: 'event saved', data: event}, status: 200
                else 
                    render json: {status: 'error', message: 'event not saved', data: event.error}, status: 500
                end
            end

            def destroy
                event = Event.find(params[:id])
                event.destroy
                render json: {status: 'success', message: 'event deleted', data: event}, status: 200
            end

            def update
                event = Event.find(params[:id])
                if event.update_attributes(event_params)
                    render json: {status: 'success', message: 'event updated', data: event}, status: 200
                else
                    render json: {status: 'error', message: 'event not updated', data: event.error}, status: 500
                end
            end

            private

            def event_params
                params.permit(:title, :start, :end, :promo, :field_id, :user_id )
            end
        end
    end
end