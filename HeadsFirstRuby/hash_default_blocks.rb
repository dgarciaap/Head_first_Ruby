class CelestialBody
    attr_accessor :type, :name
end

bodies = Hash.new do |hash, key| #When the block is called later, it will receive a reference to the hash and the key being accessed
    body = CelestialBody.new #we set up the obj which will become the value for this key
    body.type = 'planet'#default value
    hash[key] = body #Assign the object to the current hash key and returns it
end

bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'

p bodies