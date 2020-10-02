def nyc_pigeon_organizer(data)
final_results = data.each_with_object({}) do |(key,value), final_array|
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
        end
  
end
=begin  
{
    "Theo" => {
              :color => ["purple", "grey"],
              :gender => ["male"],
              :lives => ["Subway"]
          },
    "Peter Jr." =>
          {
              color: ["purple","grey"],
              gender: ["male"],
              lives: ["Library"]
          },
    "Lucky" => 
          {
              color: ["purple"],
              gender: ["male"],
              lives: ["Central Park"]
          },
    "Ms. K" => 
          {
              color: ["grey","white"],
              gender: ["female"],
              lives: ["Central Park"]
          },
    "Alex" => 
          {
              color: ["brown","white"],
              gender: ["male"],
              lives: ["Central Park"]
          },
    "Queenie" => 
          {
              color: ["white","brown"],
              gender: ["female"],
              lives: ["Subway"]
          },
    "Andrew" => 
          {
              color: ["white"],
              gender: ["male"],
              lives: ["City Hall"]
        },
          "Luca" =>
                {
                    color: ["brown"],
                    gender: ["male"],
                    lives: ["Library"]
                },
          "Lola" =>
                {
                    color: ["black"],
                    gender: ["female"],
                    lives: ["Central Park"]
                }
      }
=end
 