15.times do |n|
  mail = "xg-#{n+1}@interia.pl"
  password = "czekolada1"
  User.create!(
                email: mail,
                password:password,
                password_confirmation:password,
  )
end

User.create!(
              email: "gorzki1721@interia.pl",
              password: "czekolada1",
              password_confirmation: "czekolada1",
              role: 1
)

User.create!(
              email: "kaczka@kaczki.pl",
              password: "czekolada1",
              password_confirmation: "czekolada1",
              role: 0
)
