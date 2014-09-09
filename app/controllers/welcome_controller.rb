class WelcomeController < ApplicationController
  def index
    @core_clients                       = Metric.find_by(name: "Core Clients")
    @core_locations                     = Metric.find_by(name: "Core Locations")
    @orion_clients                      = Metric.find_by(name: "Orion Clients")
    @orion_locations                    = Metric.find_by(name: "Orion Locations")
    @new_biz_orion_clients              = Metric.find_by(name: "New Biz Orion Clients")
    @new_biz_orion_locations            = Metric.find_by(name: "New Biz Orion Locations")
    @core_to_orion_client_conversions   = Metric.find_by(name: "Core to Orion Client Conversions")
    @core_to_orion_location_conversions = Metric.find_by(name: "Core to Orion Location Conversions")
  end
end
