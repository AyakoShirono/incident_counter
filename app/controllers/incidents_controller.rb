class IncidentsController < ApplicationController
  def index
    @incidents = Incident.all
  end

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.create(incident_params)
    redirect_to root_path
  end

  private
  def incident_params
    params.permit(:type, :incidents_count)
    
  end

end
