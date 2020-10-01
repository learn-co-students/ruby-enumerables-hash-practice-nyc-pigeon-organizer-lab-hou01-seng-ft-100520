def nyc_pigeon_organizer(data)
  names = {}
  data.each do |attributes, categ|
    categ.each do |specs, indiv|
      indiv.each do |identity|
        if names[identity] == nil
          names[identity] = {}
        end
        if names[identity][attributes] == nil
          names[identity][attributes] = []
        end
        names[identity][attributes].push(specs.to_s)
      end
    end 
  end
  names
end
