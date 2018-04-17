# def nyc_pigeon_organizer(data)
# all_values = []
# all_keys = []
# data.each do |info, values|
#   values.each do |k,v|
#     all_values << v
#     all_keys << info
#   end
# end
#
# names = all_values.flatten.uniq
# data_info = all_keys.uniq
#
# name_hash = Hash[names.collect { |item| [item, {}] } ]
# info_hash = Hash[data_info.collect { |item| [item, []] } ]
#
# name_hash.each do |name, hash|
#   name_hash[name] = info_hash
# end
#
# name_hash
#
#   data.each do |info, values|
#     values.each do |k,v|
#       name_hash.collect do |name, hash|
#         hash.each do |data, hsh|
#           if v.include?(name) && (name_hash[name][data].include?(k.to_s) != true)
#               name_hash[name][info] << k.to_s
#           end
#         end
#       end
#     end
#   end
#   name_hash
# end

def nyc_pigeon_organizer(data)
nyc_pigeon_hash = {}
  data.each do |key,value|
    array = value.values.flatten.uniq
    array.each do |bird|
      nyc_pigeon_hash[bird] ||= {}

      nyc_pigeon_hash[bird][key] ||= []

      value.each do |k, v|
        if data[key][k].include?(bird)
          nyc_pigeon_hash[bird][key] << k.to_s
        end
      end
    end
  end
  nyc_pigeon_hash
end
