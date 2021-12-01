namespace :dummy do
  desc 'Generate dummy data'
  task :create_restaurant => :environment do
    50.times do
      Restaurant.create(
        title: Faker::Restaurant.name,
        description: Faker::Restaurant.description,
        rating: Faker::Number.between(from: 1, to: 5),
        address: Faker::Address.full_address,
        phone: Faker::PhoneNumber.cell_phone
      )
    end
  end
end
