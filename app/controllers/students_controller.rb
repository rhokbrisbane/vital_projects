class StudentsController < ApplicationController

  def dashboard
    @surveys = Survey.all
  end
end
