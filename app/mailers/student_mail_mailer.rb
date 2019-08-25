class StudentMailMailer < ApplicationMailer
  def sample_email
    @greeting = "Hi"
    @students = Student.order(:name).limit(50)
    mail(to: "to@example.org", subject: "A mail containing 50 students")
  end
end
