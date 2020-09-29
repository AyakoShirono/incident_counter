class IncidentsController < ApplicationController
  def index
    @incidents = Incident.all
  end

  def create
    Incident.create(incidents_count: 1)
    redirect_to root_path
  end

end
