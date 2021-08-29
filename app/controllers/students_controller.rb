class StudentsController < ApplicationController

  def index
    students = Student.all
    students = Student.find_by(first_name: params[:first_name]) if params[:first_name].present?
    students = Student.find_by(last_name: params[:last_name]) if params[:last_name].present?
    render json: students
  end

  def show 
    student_by_id = Student.find(params[:id])
    render json: student_by_id
  end

  # def query
  #   student_by_name = Student.find_by(first_name: params[:first_name])
  #   render json: student_by_name
  # end

end
