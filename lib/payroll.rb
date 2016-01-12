class Payroll
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
      weekly_payroll = @employees.reduce(0) { | sum, employee | 
      	puts "#{employee.name}'s salary is $#{employee.calculate_salary} per week."
      	sum + employee.calculate_salary 
      }

      puts "--"
      puts "The total payroll is $#{weekly_payroll} per week."

      weekly_taxes = weekly_payroll * 0.18
      puts "--"
      puts "Taxes are $#{weekly_taxes} per week."

      puts "The total payroll including taxes is $#{weekly_taxes + weekly_payroll} per week."
      puts "--"
      
  end
end