class Api::V1::LogsController < ApplicationController

    before_action :set_log

    #just want the logs associted with a specific type of run 
    def index 
        @logs = @run.logs
        render json: @logs
    end 


    #api/v1/runs/1/logs
    #run_id is within the logs table so you are finding all the logs associated with a run
    def set_log 
        @run = Run.find(params[:run_id])
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
