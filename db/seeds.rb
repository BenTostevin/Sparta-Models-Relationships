10.times do
  FootballTeam.create(rank: Faker::Number.between(1, 20), top_scorer: Faker::Simpsons.character)
end
