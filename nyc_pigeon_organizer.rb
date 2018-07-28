require 'pry'

def nyc_pigeon_organizer(data)
  dupe_array = []
  return_hash = {}
  data.each do |key1,value1|
    value1.each do |key2,value2|
      value2.each do |name|
        dupe_array << name
      end
    end
  end
  operating_array = dupe_array.uniq

  operating_array.each do |name|
    return_hash[name] = {:color => [], :gender => [], :lives => []}
    data.each do |key1,value1|
      value1.each do |key2,value2|
        i = 0
        while i < value2.length
          if value2[i] == name
            return_hash[name][key1] << key2.to_s
          end
          i += 1
        end
      end
    end
  end
    return_hash

end
