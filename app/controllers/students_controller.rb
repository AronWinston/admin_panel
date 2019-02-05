class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    
  end

  def create
    @student = Student.create(
      firstname: params[:student][:firstname],
      lastname: params[:student][:lastname],
      age: params[:student][:age],
      education: params[:student][:education]
    )
    if @student.save
      redirect_to @student
    else
      flash[:error]="error"
      render 'new'
    end

  end
  
  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])

    student.update(
      firstname: params[:student][:firstname],
      lastname: params[:student][:lastname],
      age: params[:student][:age],
      education: params[:student][:education]
    )

    redirect_to student_path(student)
  end

  def destroy
    student = Student.find(params[:id])

    student.destroy

    redirect_to "/students"
  end

  
end
