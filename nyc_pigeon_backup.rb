def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {} #create empty hash to store altered hash
  new_keys = []
  new_inner_hash_keys = data.keys
  new_inner_hash_values = []
  data.each do |key, value|
    new_inner_hash_values << data[key].keys
    value.each do |key2, val2|
      if !(new_keys.include?(val2))
        new_keys << val2
      end
    end
  end
  new_keys.each do |name|
    new_inner_hash_keys.each do |key|
      new_inner_hash_values.each do |value|
        new_hash = {
          name => {
            key => new_inner_hash_values[]
          }
        }
