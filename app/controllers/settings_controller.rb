class SettingsController < ApplicationController
  
  def index
    @settings = Setting.setting_models
    @settings_model = Setting.display
  end

  def show
    @settings = Setting.where(:setting_model => params[:setting_model])
  end

  def new_model
    @setting = Setting.new
  end

  def new
    @setting = Setting.new(params[:setting_model])
    @settings = Setting.setting_models
  end

  def create
    @setting = Setting.new(setting_params)
    if @setting.save
      flash[:notice] = "New Setting Created = '#{@setting.id}'"
      redirect_to(:action => 'show', :setting_model => @setting.setting_model)
    else
      render('new')
    end
  end

  def edit
    @setting = Setting.find(params[:id])
    @settings = Setting.setting_models
  end

  def edit_setting
    @setting = Setting.find(params[:id])
  end

  def update
    @setting = Setting.find(params[:id])
    if @setting.update_attributes(setting_params)
      flash[:notice] = "Setting '#{@setting.id}' updated successfully"
      redirect_to(:action => 'show', :setting_model => @setting.setting_model)
    else
      render('edit_setting')
    end
  end

  def delete
    @setting = Setting.find(params[:id])
  end

  def destroy
    @setting = Setting.find(params[:id]).destroy
    flash[:notice] = "Setting '#{@setting.setting_name}' deleted"
    redirect_to(:action => 'index')
  end 

private
  def setting_params
    params.require(:setting).permit(:setting_model, :setting_name, :setting_value, :setting_nice)
  end
end
