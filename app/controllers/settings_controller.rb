class SettingsController < ApplicationController
  def index
    @settings = current_user.settings
  end

  def edit
    @setting = current_user.settings.find(params[:id])
  end

  def update
    @setting = current_user.settings.find(params[:id])

    if @setting.update(setting_params)
      redirect_to settings_path, notice: "Setting updated."
    else
      render :edit
    end
  end

  private

  def setting_params
    params.require(:setting).permit(:value)
  end
end
