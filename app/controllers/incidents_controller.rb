class IncidentsController < ApplicationController
  def index
    @incidents = Incident.opensorted
  end

  def show
    @incident = Incident.find(params[:id])
  end

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)
    if @incident.save
      # If the save is successful flash a message on return to index
      flash[:notice] = "New Incident Created = '#{@incident.title}'"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @incident = Incident.find(params[:id])
  end

  def update
    @incident = Incident.find(params[:id])
    if @incident.update_attributes(incident_params)
      flash[:notice] = "Incident '#{@incident.title} successfully updated"
      redirect_to(:action => 'show', :id => @incident.id)
    else
      render('edit')
    end
  end

private
  def incident_params
    params.require(:incident).permit(:title, :source, :incident_manager, :impact, :platform, :cs_status, :tech_status, :update_due, :callout, :severity)
  end

end
