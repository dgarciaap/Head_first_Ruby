class Vehicle
    attr_accessor :odometer, :gas_used

    def accelarate
        puts "Floor it!"
    end

    def sound_horn
        puts "Beep! Beep!"
    end

    def steer 
        puts "Turn front 2 wheels."
    end

    def mileage
        return @odometer / @gas_used
    end

end

class Car < Vehicle

end

class Truck < Vehicle

    attr_accessor :cargo

    def load_bed(contents)
        puts "Securing #{contents} in the truck bed."
        @cargo = contents
    end
end

class Motorcycle < Vehicle

    def steer
        puts "Turn front wheel"
    end
end

truck = Truck.new
truck.load_bed("259 bouncy balls")
puts "The truck is caring #{truck.cargo}."

car = Car.new
car.odometer = 11432
car.gas_used = 366

puts "Lifetime MPG:"
puts car.mileage

moto = Motorcycle.new
moto.steer

class Camera

    def take_picture 
        puts "Triggering shutter"
    end
    
    def load
        puts "Winding film."
    end

end

class DigitalCamera < Camera

    def load
        puts "Inserting memory card."
    end

end

camera = Camera.new
camera.load
camera.take_picture

camera2 = DigitalCamera.new
camera2.load
camera2.take_picture