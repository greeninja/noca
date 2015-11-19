class IncidentUpdatesController < ApplicationController

  before_action :find_incident

  def index
    @updates = IncidentUpdate.where(:incident_id => @incident.id).sorted
  end

  def show
    @update = IncidentUpdate.find(params[:id])
  end

  def new
    @update = IncidentUpdate.new({:incident_id => @incident.id})
  end

  def create
    @update = IncidentUpdate.new(update_params)
    if @update.save
      flash[:notice] = "Update '#{@update.id}' created successfully"
      redirect_to(:action => 'index', :incident_id => @incident.id)
    else
      render('new')
    end
  end

  def edit
    @update = IncidentUpdate.find(params[:id])
  end

  def update
    @update = IncidentUpdate.find(params[:id])
    if @update.update_attributes(update_params)
      flash[:notice] = "Update '#{@update.id}' saved successfully"
      redirect_to(:action => 'index', :incident_id => @incident.id)
    else
      render('edit')
    end
  end

private
  def find_incident
    if params[:incident_id]
      @incident = Incident.find(params[:incident_id])
    end
  end

  def update_params
    params.require(:update).permit(:cs_update, :tech_update, :incident_id)
  end

end
