class Run < ApplicationRecord
    has_many :logs
    validates :category, presence: true

    #add up the total distance based on logs distance
    #if run id == run_id
    def update_distance(log)
        if run.id == run_id 
            self.distance = self.distance + log.distance 
            self.save 
        else 
            return "Test"
        end 
    end 
end
