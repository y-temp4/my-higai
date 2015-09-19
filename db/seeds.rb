# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(
    name: 'もうやめて'
  )

Category.create(
    name: 'ふせぐ'
  )

Category.create(
    name: 'きいて'
  )

Post.create(
    title: 'テスト投稿です',
    body: 'もうこんな目にあうのはこりごりだ',
    user_id: 1,
    category_id: 1,
  )
