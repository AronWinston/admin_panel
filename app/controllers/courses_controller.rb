class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(
      course_name: params[:course][:course_name],
      hours: params[:course][:hours]
    )

    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    course = Course.find(params[:id])
    
    course.update(
      course_name: params[:course][:course_name],
      hours: params[:course][:hours]
    )

    redirect_to course_path(course)

  end

  def destroy

    course = Course.find(params[:id])

    course.destroy

    redirect_to '/courses'
  end

end
