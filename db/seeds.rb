

16.times do
	Portfolio.create!(
		title: Faker::Zelda.item,
		description: Faker::StarWars.quote
		)
end