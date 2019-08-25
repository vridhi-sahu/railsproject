class EmployeePdf < Prawn::Document
  def initialize(employees)
    super()
    @employees = employees
    employee_id
  end

  def employee_id
    table employee_id_all do
      row(0).font_style = :bold
      columns(1..5).align = :right
      self.row_colors = %w[DDDDDD FFFFFF]
      self.header = true
    end
  end

  def employee_id_all
    [%w[id name email phone_number]] +
      @employees.map do |employee|
        [employee.id, employee.name, employee.email, employee.phone]
      end
  end
end