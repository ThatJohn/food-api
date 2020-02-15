class TrucksController < ApplicationController
    attr_accessor :status

    def index
        @trucks = Truck.all
        render json: @trucks.as_json(methods: [:isItOpen])
    end

    def create
        @truck = Truck.create(truck_params)
        render json: @truck
    end

    def show
        @truck = Truck.find(params[:id])
        render json: @truck.as_json(methods: [:isItOpen])
    end

    def destroy
        @truck = Truck.destroy(params[:id])
    end

    def update
        @truck = Truck.find(params[:id])
        @truck.update_attributes(truck_params)
        render json: @truck
    end

    def open
        @trucks = Truck.select{ |x| x.isItOpen == true }
        render json: @trucks.as_json(methods: [:isItOpen])
    end

    def closed
        @trucks = Truck.select{ |x| x.isItOpen == false }
        render json: @trucks.as_json(methods: [:isItOpen])
    end

    private

    def truck_params
        params.require(:truck).permit(:applicant, :optionaltext, :start24, :end24, :location, :locationdesc, :isItOpen)
    end

end

### SAMPLE RESPONSE TO REFERENCE LATER ###

# {
#     "id": 51,
#     "applicant": "El Calamar Perubian Food Truck",
#     "optionaltext": "Lomo Saltado, Jalea, Ceviche, Calamar, Tilapia plate, chicken special. Soda, Water.",
#     "start24": "10:00",
#     "end24": "15:00",
#     "location": "85 02ND ST",
#     "locationdesc": "Mobile Food Truck Located approximately 40 ft from the intersection of 2nd St and Mission St",
#     "created_at": "2020-02-13T10:25:14.291Z",
#     "updated_at": "2020-02-13T10:25:14.291Z"
# }