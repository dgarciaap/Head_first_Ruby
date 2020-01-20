class Employee 

    attr_reader :name

    def name=(name)
        if name == ""
            raise "Name can't be black!"
        end
        @name = name
    end

    #Initialize method works more like a constructor for the class (In Ruby: justa an ordinary instance method)
    def initialize(name = "Anonymous")
        self.name = name #self works like 'this', we're calling the name and salary method for validation
    end

    def print_name
        puts "Name: #{name}" #With @ we access directly to the variable, without it is like typing self.name but self is not necessary
    end

end

class SalariedEmployee < Employee
    
    attr_reader :salary

    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} isn't valid!"
        end
        @salary = salary
    end

    def initialize(name = "Anonymous", salary = 0.0)
        super(name)
        self.salary = salary
    end

    def print_pay_stub 
        print_name #inheritance from Employee class
        pay_for_period = ( salary / 365.0 ) * 14
        puts format("Pay this period: %0.2f.", pay_for_period) #Formatting numbers '%f' indicates float, 0.2 the decimals we wanna show (0 = no padding!!) 
    end

end

class HourlyEmployee < Employee

    attr_accessor :hourly_wage, :hours_per_week

    def hourly_wage=(hourly_wage)
        if hourly_wage < 0
            raise "A wage of #{hourly_wage} is invalid!"
        end
        @hourly_wage = hourly_wage
    end

    def hours_per_week=(hours_per_week)
        if hours_per_week < 0
            raise "A total of #{hours_per_week} hours per week is invalid!"
        end
        @hours_per_week = hours_per_week
    end

    #Class method (self.security_guard) so we can create new types of employees (Factory)
    def self.security_guard(name) 
        HourlyEmployee.new(name, 19.25, 30)
    end

    def self.cashier(name)
        HourlyEmployee.new(name, 12.75, 25)
    end

    def self.janitor(name)
        HourlyEmployee.new(name, 10.50, 20)
    end

    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
        super(name) #calls the method called the same
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def print_pay_stub 
        print_name #inheritance from Employee class
        pay_for_period = hours_per_week * hourly_wage * 2 
        puts format("Pay this period: %0.2f.", pay_for_period) #Formatting numbers '%f' indicates float, 0.2 the decimals we wanna show (0 = no padding!!) 
    end

end

salaried = SalariedEmployee.new("Diana", 5000)
salaried.print_pay_stub

hourly = HourlyEmployee.new("Laura", 14.97, 30)
hourly.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
angela.print_pay_stub
edwin = HourlyEmployee.janitor("Edwin Burgess")
edwin.print_pay_stub
ivan = HourlyEmployee.cashier("Ivan Stokes");
ivan.print_pay_stub

#----ON FORMAT----#
#%s for strings, %i for integers

#----ON SELF STATEMENT----#
# As we saw in the previous section, you have to include the self
# keyword when calling attribute writer methods, or Ruby will mistake
# the = for a variable assignment. But for any other kind of instance
# method call, you can leave self off, if you want.

# diana = Employee.new("Diana", 50000)
# diana.print_pay_stub

# marvs = Employee.new("Marvin", 50000.0)
# marvs.print_pay_stub

# anon = Employee.new
# marvs.print_pay_stub

class Boat

    def initialize(name)
        @name = name
    end

end

class PowerBoat < Boat

    def initialize(name, motor_type)
        super(name)
        @motor_type = motor_type
    end

    def info
        puts "Name: #{@name}"
        puts "Motor Type: #{@motor_type}"
    end

end

boat = PowerBoat.new("bob", "outboard")
boat.info
