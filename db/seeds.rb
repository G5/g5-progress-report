["client", "location"].each do |kind|
  (2014..2015).to_a.each do |year|
    (1..12).to_a.each do |month|
      Monthly.create!(year: year, month: month, kind: kind, quantity: 0)
    end
  end
end
