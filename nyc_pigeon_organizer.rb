require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  color = []
  
  data.each do |key, value|
    keys = value.values.flatten.uniq
    keys.each do |x|
      pigeon_list[x] = {}
    end
  end
  
  data.each do |key, value|
    value.each do |k1, v1|
      pigeon_list.each do |k2, v2|
        if v1.include?(k2) 
          pigeon_list[k2][key] = [k1.to_s]
          if key == :color
            pigeon_list[k2][key] = []
          end
        end
      end
    end
  end
  
  data[:color].each do |key, value|
    value.each do |name|
      if data[:color][key].include?(name)
        pigeon_list[name][:color] << key.to_s
      end
    end
  end
  
  pigeon_list
  #binding.pry
end