my_hash = {"one" => "two", :three => "four", 5 => "six"}
    puts my_hash[5]
    puts my_hash["one"]
    puts my_hash[:three]
    my_hash["seven"] = 8
    puts my_hash["seven"]

protons = { "He" => 2}

protons["C"] = 6
puts protons.has_key?("C")
puts protons.has_value?(119)
puts protons.keys
puts protons.values

puts protons.merge({ "C" => 0, "Uh" => 147.2 })