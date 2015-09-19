1.upto(3) do |n|
  User.seed(:id,
    { id: "#{n}", username: "test#{n}", email: "test#{n}@example.com", password: "test#{n}@example.com" },
  )
end
