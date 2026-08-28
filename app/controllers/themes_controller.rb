class ThemesController < ApplicationController
  def update
    session[:theme] = session[:theme] == 'dark' ? 'light' : 'dark'
    redirect_back(fallback_location: root_path)
  end
end