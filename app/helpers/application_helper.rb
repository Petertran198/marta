module ApplicationHelper

    #longitude = horizontal 
    #latitude = vertical 
    #If it is in a .7 mile range horizontally and vertically then it pass
    def nearby(lng1, lat1, lng2, lat2)
        if (lng1 - lng2).abs <= 0.01 && (lat1 - lat2).abs <= 0.01
            true 
        else 
            false 
        end
    end

    def valid_location(location) 
        if location.latitude == nil || location.longitude == nil 
            false
        else
            true 
        end
    end
    
end
