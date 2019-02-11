require "poros_r_us/version"
require "http"

  class Building
    attr_accessor :name, :address, :height, :construction_date, :architect, :id
    def initialize(input_options)
      @id = input_options["id"]
      @name = input_options["name"]
      @address = input_options["address"]
      @height = input_options["height"]
      @construction_date = input_options["construction_date"]
      @architect = input_options["architect"]
    end

    def self.all
      response = HTTP.get("http://localhost:3000/api/buildings")
      all_buildings_hash = response.parse
      all_buildings = []
      all_buildings_hash.each do |building|
        all_buildings << Building.new(building)
      end
      all_buildings
    end

    def self.create(input_options)
      client_params = input_options
      response = HTTP.post(
                            "http://localhost:3000/api/buildings",
                            form: client_params
                            )

      created_building = response.parse

      Building.new(created_building)
    end

    def self.find(input_id)
      response = HTTP.get("http://localhost:3000/api/buildings/#{input_id}")
      building_hash = response.parse
      Building.new(building_hash)
    end


    def self.edit(input_id)
      response = HTTP.get("http://localhost:3000/api/buildings/#{input_id}")
      building_hash = response.parse
      render 'edit.html.erb'
    end

    def update(input_options)
      client_params = input_options
      response = HTTP.patch(
                            "http://localhost:3000/api/buildings/#{id}",
                            form: client_params
                            )

      updated_building = response.parse

      Building.new(updated_building)
    end

    def destroy
      response = HTTP.delete("http://localhost:3000/api/buildings/#{id}")
    end

  end


