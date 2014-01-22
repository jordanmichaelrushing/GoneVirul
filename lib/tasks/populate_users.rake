namespace :db do
  desc "Fill database with sample data"
  task pop: :environment do
    if Admin.find_by_email("jordan@rushingfitness.com").nil?
      admin = Admin.create!(
            id: 1,
            email: "jordan@rushingfitness.com",
            password: "Texman6626",
            password_confirmation: "Texman6626")
    end
  end
end