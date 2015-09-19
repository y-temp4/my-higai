body = %w(
  自分も同じような経験があります。頑張って下さい。
  そんなことがあるんですね。とても参考になります。
  ああ。うん。
  そうだね。
  うーん。
)

1.upto(100) do |n|
  Comment.seed(:id,
    { id: "#{n}", body: body[n%5], user_id: (n%3) +1, post_id: (n%8) +1 },
  )
end
