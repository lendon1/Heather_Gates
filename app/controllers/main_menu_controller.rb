class MainMenuController < ApplicationController

  #    before_filter :authenticate_user!, :except => [:show, :index]
  def main_menu
  end

  def welcome
    respond_to do |format|
      format.html { render 'main_menu/main_menu.html.erb' }
      format.json { render json: @contacts }
    end
  end
end
