class StudentsController < ApplicationController

  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def index
    render json: Student.all
  end

  def create
    student = Student.new(student_params)
    student.save
    render json: {student: student}
  end

  def show
    student = Student.find(params[:id])
    render json: {student: student}
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    render json: {student: student}
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    render json: {deleted: student}
  end

  def student_params
    params.require(:student).permit(:name, :school, :twitter_handle, :email)
  end

  def record_not_found
    render json: {not_found: "student with id: {#{params[:id]}} not found"}, status: 404
  end

end
