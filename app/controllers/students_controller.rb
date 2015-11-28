class StudentsController < ApplicationController
  before_action :authenticate_student!

  def dashboard
    @surveys = Survey.all
  end

  def improving_human_values
  end
end