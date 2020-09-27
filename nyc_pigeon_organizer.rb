require "pry"
def nyc_pigeon_organizer(data)
  # Convert hash data provided into a different structured hash
  # Organizes pidgeons to be by name instead of by attribute
  new_data = Hash.new
  names_array = Array.new
  category = ""
  descrption = ""
  # Collect the names of the pidgeions into an array
  data.collect do |key,value|
    value.collect do |key, value|
      # Now we are at the inner arrays of names for each category and description
      # Push all the names to an array so we can sort them
      value.each { |item| names_array.push(item) }
      # Get rid of any duplicate names in the array
      names_array.uniq!

    end
  end
  # Convert the names array into a hash
 names_array.each { |item| new_data[item]= Hash.new }

 # Reassemble the rest of the data into the new name hash
 data.collect do |key,value|
   # Store the category (top level)
   category = key
   value.collect do |key, value|
     # Store the desctiption(second level) grey, male, etc
     description = key

     # Use each name to assign each the category/description pair
     value.each do |item|
       # if the category already exists under the name then push the description to the array
       if new_data[item][category]
          new_data[item][category].push("#{description}")
       else
         # otherwise the category and description are added to the name hash
         new_data[item].store(category, ["#{description}"])
       end
     end

   end
 end

  # binding.pry
  new_data
end
