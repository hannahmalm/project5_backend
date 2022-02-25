class Api::V1::LogsController < ApplicationController

    before_action :find_log

    #just want the logs associted with a specific type of run 
    def index 
        @logs = @run.logs
        render json: @logs
    end 


    #if the log saves, render the run
    def create 
        @log = @run.logs.new(log_params)
        if @log.save 
            render json: @run
        else
            render json: {error: 'Please complete required fields'}
        end    
    end 

    def show 
        @log = Log.find(params[:id])
        render json: @log
    end 

    def destroy
        # binding.pry
        @log = Log.find(params[:id])
        # @run = Run.find(log.run_id)
        @run = Run.find(params[:run_id])
        @log.destroy
        render json: @run
        #send back the run instead of the actual log

    end 

    private 
     #api/v1/runs/1/logs
    #run_id is within the logs table so you are finding all the logs associated with a run
    #Run.find(1).logs.find(1).run_id
    def find_log 
        @run = Run.find(params[:run_id])
    end 


    def log_params
        params.require(:log).permit(:distance, :pace, :notes, :date, :run_id)
    end


end
