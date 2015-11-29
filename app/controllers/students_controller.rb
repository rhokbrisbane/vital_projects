class StudentsController < ApplicationController
  before_action :student_is_admin, only: [:create, :index, :new]
  before_action :authenticate_student!

  def dashboard
    @surveys = Survey.all
  end

  def improving_human_values
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_list_path, notice: "Student was successfully created."
    else
      redirect_to student_list_path, notice: "Student was not created."
    end
  end

  private

  def student_params
    params.require(:student).permit(
      :email,
      :password
    )
  end

  def student_is_admin
    if current_student.admin?
    else
      redirect_to :back, notice: "Unauthorized access"
    end
  end
end