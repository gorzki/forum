15.times do |n|
  mail = "xg-#{n+1}@interia.pl"
  password = "czekolada1"
  User.create!(
                email: mail,
                password:password,
                password_confirmation:password,
  )
end
