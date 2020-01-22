=begin

Aliasing = But if we copy the reference instead, we
wind up with two references to the same
object, under two different names (the
variables betty and candace).
----EXAMPLE----------------
altair = CelestialBody.new
altair.name = 'Altair'
altair.type = 'star'
polaris = altair
polaris.name = 'Polaris'
vega = polaris
vega.name = 'Vega'

----CORRECT WAY--------------
altair = CelestialBody.new
altair.name = 'Altair'
altair.type = 'star'
polaris = CelestialBody.new #Create a new reference instead of copying it!
polaris.name = 'Polaris'
altary.type = 'star'
=end

class CelestialBody
    attr_accessor :type, :name
end

#We're modifying the same object
default_body = CelestialBody.new
default_body.type = 'planet'
bodies = Hash.new(default_body)

bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'Moon'
p bodies.default
