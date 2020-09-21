def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |color_gender_lives, value|
    value.each do |stats, all_names|
      all_names.each do |name|
    if pigeons[name]==nil
      pigeons[name]={}
    end
    if pigeons[name][color_gender_lives]==nil
      pigeons[name][color_gender_lives]=[]
    end
      pigeons[name][color_gender_lives].push(stats.to_s)
  end
end
end
pigeons
end
