FactoryBot.define do

  factory :quote do
    body { "I'm going to make him an offer he can't refuse." }
    author { "Don Vito Corleone" }
    source { "Godfather" }
  end

  factory :comment do
    body { "This is great quote" }
  end
end
