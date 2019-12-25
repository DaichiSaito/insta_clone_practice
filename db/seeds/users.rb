puts 'Start inserting seed "users" ...'
10.times do
  user = User.create(
      email: Faker::Internet.unique.email,
      username: Faker::Internet.unique.user_name,
      password: 'password',
      password_confirmation: 'password'
      )
  puts "\"#{user.username}\" has created!"
end
