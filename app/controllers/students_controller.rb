class StudentsController < ApplicationController
  def index
    @students = Student.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @student = Student.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params[:student])
    respond_to do |format|
      if @student.save
        format.html { redirect_to(@student, :notice => 'Student was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @student = Student.find(params[:id])
    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to(@student, :notice => 'Student was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy   
  end

  def show
     @student = Student.find(params[:id])
     respond_to do |format|
       format.html
     end
   end
end
