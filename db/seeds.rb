require 'rest-client'

def createTrucks(applicant, optionaltext, start24, end24, location, locationdesc)
    if Truck.where(applicant: applicant).exists? || optionaltext == nil || locationdesc == nil
        return
    else
        Truck.create_or_find_by(
            applicant: applicant,
            optionaltext: optionaltext,
            start24: DateTime.parse(start24).seconds_since_midnight.to_i,
            end24: DateTime.parse(end24).seconds_since_midnight.to_i,
            location:location,
            locationdesc:locationdesc
        )
    end
end

trucks = RestClient.get "https://data.sfgov.org/resource/bbb8-hzi6.json"
jsonTrucks = JSON.parse(trucks)

jsonTrucks.each do |truck|
    createTrucks(truck["applicant"], truck["optionaltext"], truck["start24"], truck["end24"], truck["location"], truck["locationdesc"])
end

# rails g model Truck applicant:text optionaltext:text start24:string end24:string location:text locationdesc:text

