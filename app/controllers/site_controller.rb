class SiteController < ApplicationController

  def index
    @last_five_presses = Press.find(:all, :limit => 5, :order => "created_at DESC")

    @title = "Welcome to Society For Justice"

    render :layout => 'home_layout'
  end

  def staff
    @last_five_presses = Press.find(:all, :limit => 5, :order => "created_at DESC")

    @title = 'Management Section of ISSJHR'
  end

  def about
    @last_five_presses = Press.find(:all, :limit => 5, :order => "created_at DESC")

    @title = "Get To Know About ISSJHR"
  end

  def contact
    @last_five_presses = Press.find(:all, :limit => 5, :order => "created_at DESC")

    @title = "Get In Contact With ISSJHR"
  end

end

