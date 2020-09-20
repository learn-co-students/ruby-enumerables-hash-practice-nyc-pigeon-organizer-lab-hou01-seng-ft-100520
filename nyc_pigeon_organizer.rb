def nyc_pigeon_organizer(data)
  data.each_with_object ({}) do |(key, value), final| 
    value.each do |inner_key, names|
      names.each do |name|
        if !final[name] then
          final[name] = {}
        end
        if !final[name][key] then
          final[name][key] = []
        end

        final[name][key].push(inner_key.to_s)
      end
    end
  end
end
