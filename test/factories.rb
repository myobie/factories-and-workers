Test::Unit::TestCase.class_eval do
  include FactoriesAndWorkers::Factory
  
  factory :monkey, {
    :name => "George"
  }

  factory :pirate, {
    :catchphrase => "Ahhrrrr, Matey!",
    :monkey      => :belongs_to_model,
    :created_on  => lambda{ 1.day.ago }
  }

end
