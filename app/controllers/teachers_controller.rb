class TeachersController < ApplicationController
  before_action :find_teacher, except:[:index, :new, :create]

  def index
    if params[:search]
      @teachers = Teacher.search_it(params[:search])
    else
      @teachers = Teacher.all
    end
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    
    if @teacher.save
      flash[:notice] = "Teacher record created"
      redirect_to teachers_path
    else
      flash.now[:error] = "Invalid data entry"
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @teacher.update_attributes(teacher_params)
      redirect_to teacher_path(@teacher)
    else
      flash[:error] = "Validation error"
      render("edit") 
    end
  end

  def destroy
    @teacher.destroy
    redirect_to(:action => "index")
  end

  private
    def teacher_params
     params.require(:teacher).permit(:name, :email)
    end

    def find_teacher
      @teacher = Teacher.find(params[:id])
    end
  end