class Mage
    attr_accessor :name, :spell

    def enchant(target)
        puts "#{@name} casts #{@spell} on #{target.name}!"
    end
end

morgana = Mage.new
morgana.name = "Morgana"
morgana.spell = "Burn"
merlin = Mage.new
merlin.name = "Merlin"
morgana.enchant(merlin)

class Robot
    def head
        @head
    end

    def arms=(value)
        @arms = value
    end

    attr_reader :legs, :body

    attr_writer :eyes

    attr_accessor :feet

    def assemble
        @legs = "RubyTek Walkers"
        @body = "BurlyBot Frame"
        @head = "SuperAI 9000"
    end

    def diagnostic
        puts @arms
        puts @eyes
    end

end

robot = Robot.new
robot.assemble

robot.arms = "MagGrip Claws"
robot.eyes = "X-Ray Scopes"
robot.feet = "MagGrip Boots"

puts robot.head
puts robot.legs
puts robot.body
puts robot.feet
robot.diagnostic