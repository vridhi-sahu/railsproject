class StudentsController < ApplicationController
  def mail  
    @students = Student.order(:name).limit(50)
    StudentMailMailer.sample_email.deliver
    flash[:notice] = "Student record has been sent."
  end
end
