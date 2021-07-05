class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
    
  end

  def activate
    if @student.active == false
      @student.active = true
      @student.save
    else @student.active == true
      @student.active = false
      @student.save
    end 
    redirect_to "/students/#{@student.id}"
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end