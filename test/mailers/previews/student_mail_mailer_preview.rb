# Preview all emails at http://localhost:3000/rails/mailers/student_mail_mailer
class StudentMailMailerPreview < ActionMailer::Preview
    def sample_mail_preview
        ExampleMailer.sample_email(User.first)
    end    
end
