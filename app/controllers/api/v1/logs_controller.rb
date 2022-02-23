class Api::V1::LogsController < ApplicationController


    def index 
        @logs = Log.all 
        render json: @logs
    end 

    def create 
        @logs = Log.new(log_params)
        if @logs.save 
            render json: @logs
        else 
            render json:{error: 'Please try again'}
        end 
    end 

    def show 
        @log = Log.find(params[:id])
        render json: @log
    end 

    def destroy
        @log = Log.find(params[:id])
        @log.destroy
    end 

    private log_params
        params.require(:log).permit(:distance, :pace, :notes, :date, :run_id)
    end
end
