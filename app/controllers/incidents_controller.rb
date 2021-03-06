class IncidentsController < ApplicationController

  layout "admin"

  def index
    @incidents = Incident.opensorted
    @settings = Setting.where(:settings_model => 'incidents')
  end

  def closed
    @incidents = Incident.closedsorted
    @openincidents = Incident.opensorted
  end

  def show
    @incident = Incident.find(params[:id])
    @openincidents = Incident.opensorted
  end

  def new
    @incident = Incident.new
    @incident.incident_updates.new
  end

  def create
    @incident = Incident.new(incident_params)
    if @incident.save
      IncidentNotifier.send_incident_update(@incident).deliver_now
      # If the save is successful flash a message on return to index
      flash[:notice] = "New Incident Created = '#{@incident.title}'"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @incident = Incident.find(params[:id])
    @incident.incident_updates.new
  end

  def update
    @incident = Incident.find(params[:id])
    if @incident.update_attributes(incident_params)
      IncidentNotifier.send_incident_update(@incident).deliver_now
      flash[:notice] = "Incident '#{@incident.title} successfully updated"
      redirect_to(:action => 'show', :id => @incident.id)
    else
      render('edit')
    end
  end

private
  def incident_params
    params.require(:incident).permit(:title, :source, :incident_manager, :impact, :platform, :cs_status, :tech_status, :update_due, :callout, :severity, 
      :incident_updates_attributes => [:incident_id, :cs_update, :tech_update]
    )
  end

end
