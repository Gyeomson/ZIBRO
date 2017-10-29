class HomeController < ApplicationController
  def index
    @everypost = Position.all
    @everyuser = User.all
  end
  
  def write
        new_position = Position.new
        new_position.userId = params[:userId]
        new_position.longi = params[:Longi]
        new_position.lati = params[:Lati]
        new_position.save
        
        redirect_to '/'
  end
  
  def position
        new_position = Position.new
        new_position.userId = params[:userId]
        new_position.longi = params[:Longi]
        new_position.lati = params[:Lati]
        new_position.save
        
        @result = new_position

        respond_to do |format|
          format.html {render :json => nil}
          format.json {render :json => nil}
        end
  end
  
  def find 
        @find = Position.where("userId = ?", params[:userId])
        
        respond_to do |format|
          format.html {render :json => @find}
          format.json {render :json => @find}
        end
  end
  
  def last 
        @user_all = Position.where("userId = ?", params[:userId])
        
        @last = @user_all.last
        
        respond_to do |format|
          format.html {render :json => @last}
          format.json {render :json => @last}
        end
  end
  
  def user 
        @user = User.where("userId = ?", params[:userId])
        
        if @user == nil
          @result = "Not"
        else
          @result = @user
        end
        
        respond_to do |format|
          format.html {render :json => @result}
          format.json {render :json => @result}
        end
  end
  
  def create
        new_user = User.new
        new_user.userId = params[:userId]
        new_user.address = params[:address]
        new_user.home = params[:home]
        new_user.school = params[:school]
        new_user.parent1 = params[:parent1]
        new_user.parent2 = params[:parent2]
        new_user.save
        
        @result = new_user

        respond_to do |format|
          format.html {render :json => nil}
          format.json {render :json => nil}
        end
  end

end
