class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    render 'index'
  end

  def show
  end

  def activate
    @student = Student.find(params[:student_id])
    @student.update(active: !@student.active)
    render 'show'
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
