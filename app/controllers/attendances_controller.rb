class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @attendance = Attendance.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @attendance = Attendance.find(params[:id])
  end

  def create
    @attendance = Attendance.new(params[:attendance])
    respond_to do |format|
      if @attendance.save
        format.html { redirect_to(@attendance, :notice => 'Attendance was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @attendance = Attendance.find(params[:id])
    respond_to do |format|
      if @attendance.update_attributes(params[:attendance])
        format.html { redirect_to(@attendance, :notice => 'Attendance was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to(Attendance_url) }
    end
  end

  def show
     @attendance = Attendance.find(params[:id])
       respond_to do |format|
              format.html
       end
   end
end
