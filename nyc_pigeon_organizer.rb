#def nyc_pigeon_organizer(data)
  # write your code here!
  #return_data = {}
  #new_data = {}
  #array_of_names = []
  #new_data=data[:color]
  #new_data.each do |key, value|
    #test_array = value
    #test_array.each do |index|
      #array_of_names << index
      #return_data = Hash[array_of_names.map {|value| [value, [{:colors => nil}]]}]
    #end
    #array_of_names << value
  #end
  #p return_data
  #return_data
#end

def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(key, value), final_array|
    value.each do |inner_key, names|
      names.each do |name|
       if !final_array[name]
         final_array[name] = {}
       end
       if !final_array[name][key]
         !final_array[name][key] = []
       end
       final_array[name][key].push(inner_key.to_s)
      end
    end
    final_array
  end
end