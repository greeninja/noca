class IncidentUpdatesController < ApplicationController

  before_action :find_incident

  def index
    @updates = IncidentUpdate.where(:incident_id => @incident.id).sorted
    #@updates = IncidentUpdate.where(:incident_id => @incident.id).sorted
  end

  def show
  end

  def new
  end

  def edit
  end

private
  def find_incident
    if params[:id]
      @incident = Incident.find(params[:id])
    end
  end

end
