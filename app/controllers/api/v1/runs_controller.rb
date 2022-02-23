class Api::V1::RunsController < ApplicationController

    def index 
        @runs = Run.all 
        render json: @runs 
    end 

    def create 
        @run = Run.new(run_params)
        if @run.save 
            render json: @run
        else 
            render json:{error: 'Please try again'}
        end 
    end 

    def show 
        @run = Run.find(params[:id])
        render json: @run 
    end 

    def destroy
        @run = Run.find(params[:id])
        @run.destroy
    end 

    private 
    def run_params
        params.require(:run).permit(:category, :total_distance)
    end

end
