#require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
results=data.each_with_object({}) do |(k, v), a|
  v.each do |color_key, pigeon_list|
    pigeon_list.each do |pigeon_name|
      if !a[pigeon_name]
        a[pigeon_name]={}
      end
      if !a[pigeon_name][k]
        !a[pigeon_name][k]=[]
      end
      a[pigeon_name][k].push(color_key.to_s)
    end
  end
end
results
#binding.pry





end
