class StudentcohortsController < ApplicationController
  def index
    # @cohorts=Cohort.all
    # @student= Student.all
    @st = StudentCohort.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
