class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    @cohorts = Cohort.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
    @cohorts = Cohort.all

    render :new
  end

  def create
  @teacher = Teacher.new(
    firstname: params[:teacher][:firstname],
    lastname: params[:teacher][:lastname],
    age: params[:teacher][:age],
    salary: params[:teacher][:salary],
    education: params[:teacher][:education],
    cohort_id: params[:teacher][:cohort_id]
  )

    if @teacher.save
      redirect_to @teacher
    else
      @cohorts = Cohort.all
      render :new
    end
  end
  
  def edit
    @teacher = Teacher.find(params[:id])
    @cohorts = Cohort.all
  end

  def update
    teacher = Teacher.find(params[:id])
    @cohorts = Cohort.all

    teacher.update(
      firstname: params[:teacher][:firstname],
      lastname: params[:teacher][:lastname],
      age: params[:teacher][:age],
      salary: params[:teacher][:salary],
      education: params[:teacher][:education],
      cohort_id: params[:teacher][:cohort_id]
    )

    redirect_to teacher_path(teacher)
  end

  def destroy

    teacher = Teacher.find(params[:id])

    teacher.destroy

    redirect_to '/'
  end

end
