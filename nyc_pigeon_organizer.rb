require 'pry'

# def nyc_pigeon_organizer(data)
#   nyc_pigeon_hash = {}
#
#   data.each do |key_symbol, values|
#      # array = value.values.sort.flatten.uniq
#       values.each do |color, bird_names|
#
#         bird_names.each do |name|
#
#           nyc_pigeon_hash[name] ||= {}
#
#           nyc_pigeon_hash[name][key_symbol] ||= []
#
#             nyc_pigeon_hash[name][key_symbol] << color.to_s
#
#             # value.each do |k, v|
#             #   if data[key][k].include?(bird)
#             #     nyc_pigeon_hash[bird][key] << k.to_s
#             #
#             #       nyc_pigeon_hash
#
#       # binding.pry
#       end
#     end
#   end
#   # binding.pry
#   nyc_pigeon_hash
#   # binding.pry
# end


# bird_name => {
#   :color_type => ["color_name"]
#   :gender_type => ["gender_type"]
#   :lives_at => ["location"]
# }


def nyc_pigeon_organizer(data)
  nyc_pigeon_hash = {}

  data.each do |key, value|
     array = value.values.sort.flatten.uniq
     # binding.pry
      array.each do |bird|
        nyc_pigeon_hash[bird] ||= {}

          nyc_pigeon_hash[bird][key] ||= []

            value.each do |k, v|
              if data[key][k].include?(bird)
                nyc_pigeon_hash[bird][key] << k.to_s

                  # nyc_pigeon_hash

      # binding.pry
        end
      end
    end
  end
  nyc_pigeon_hash
  # binding.pry
end
