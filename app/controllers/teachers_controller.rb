class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:notice] = "Teacher record created"
      redirect_to(:action => "index")
    else
      render("new")
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update_attributes(teacher_params)
      redirect_to(:action => "show", :id => @teacher.id)
    else
      flash[:notice] = "Validation error"
      render("edit") 
    end
  end

  def delete
    @teacher = Teacher.find(params[:id])
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to(:action => "index")
  end

  def index
    if params[:search]
      @teachers = Teacher.search_it(params[:search])
    else
      @teachers = Teacher.all
    end
  end

  private
    def teacher_params
     params.require(:teacher).permit(:name, :email)
    end
  end