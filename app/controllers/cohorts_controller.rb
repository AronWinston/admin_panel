class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
    
    
  end

  def show
    @teachers = Teacher.all
    @cohort = Cohort.find(params[:id])
  end

  def new
    @cohort = Cohort.new
    @teachers = Teacher.all
    @courses = Course.all
  end

  def create
    @cohort = Cohort.create(
      name: params[:cohort][:name],
      startdate: params[:cohort][:startdate],
      enddate: params[:cohort][:enddate],
      students: params[:cohort][:students],
      teacher_id: params[:cohort][:teacher_id],
      course_id: params[:cohort][:course_id]
    )

    if @cohort.save
      redirect_to @cohort
    else
      render 'new'
    end
  end

  def edit
    @cohort = Cohort.find(params[:id])
    @teachers = Teacher.all
    @courses = Course.all
  end

  def update
    teacher = Teacher.find(params[:id])
    cohort = Cohort.find(params[:id])
    cohort.update(
      name: params[:cohort][:name],
      startdate: params[:cohort][:startdate],
      enddate: params[:cohort][:enddate],
      students: params[:cohort][:students],
      course_id: params[:cohort][:course_id]
    )

    redirect_to cohort_path(cohort)

  end

  def destroy

    cohort = Cohort.find(params[:id])

    cohort.destroy

    redirect_to '/cohorts'
  end


end
