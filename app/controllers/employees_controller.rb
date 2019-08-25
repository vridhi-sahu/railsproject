class EmployeesController < ApplicationController
    def load
      @employees = Employee.order(:name).limit(50)
        respond_to do |format|
          format.html
          format.pdf do
            pdf = EmployeePdf.new(@employees)
            send_data(pdf.render, filename: "employees-#{Time.now}.pdf", type: "application/pdf")
          end
        end
    end
end