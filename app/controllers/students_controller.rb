class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def newa
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == true
        @student.active = false
    else
      @student.active = true 
    end
    @student.save

    redirect_to "/students/#{@student.id}"
  end

  # private

  #   def set_student
  #     @student = Student.find(params[:id])
  #   end
end