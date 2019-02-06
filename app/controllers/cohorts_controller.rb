class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
    @students = Student.all.uniq
    
    
  end

  def show
    
    @cohort = Cohort.find(params[:id])
    @students = (@cohort.students.all).uniq
    
  end

  def new
    @cohort = Cohort.new
    @teachers = Teacher.all
    @courses = Course.all
    @students = Student.all
  end

  def create
    @cohort = Cohort.new(
      name: params[:cohort][:name],
      startdate: params[:cohort][:startdate],
      enddate: params[:cohort][:enddate],
      course_id: params[:cohort][:course_id]
    )

   
  if @cohort.save
      StudentCohort.create(
        student_id: params[:cohort][:student_id],
        cohort_id: @cohort.id
      )
      redirect_to @cohort
    else
      render 'new'
    end
  
  end

  def edit
    @cohort = Cohort.find(params[:id])
    @teachers = Teacher.all
    @courses = Course.all
    @students = Student.all
  end

  def update
    @courses = Course.all
    @teachers = Teacher.all
    cohort = Cohort.find(params[:id])
    cohort.update(
      name: params[:cohort][:name],
      startdate: params[:cohort][:startdate],
      enddate: params[:cohort][:enddate],
      course_id: params[:cohort][:course_id]
      
    )

    if cohort.save
      StudentCohort.create(
        student_id: params[:cohort][:student_id],
        cohort_id: cohort.id
      )
      redirect_to cohort_path(cohort)
    else
      render 'edit'
    end

    

  end

  def destroy

    cohort = Cohort.find(params[:id])

    cohort.destroy

    redirect_to '/cohorts'
  end


end
