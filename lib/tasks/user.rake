namespace :user  do
  desc "This will puts users email on console"
  task names: :environment do
    User.all.each do |user|
      puts user.email
      puts '---'
    end
  end

  desc "This will puts users id on console"
  task ids: :environment do
    User.all.each do |user|
      puts user.id
      puts '---'
    end
  end
end
