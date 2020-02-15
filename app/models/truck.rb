class Truck < ApplicationRecord
    def isItOpen
        currentTime = Time.now.seconds_since_midnight.to_i
        startTime = self.start24.to_i
        endTime = self.end24.to_i
        
        if endTime == 0
            currentTime > startTime && currentTime > endTime  ? true : false
        else
            currentTime > startTime && currentTime < endTime  ? true : false
        end
    end
end