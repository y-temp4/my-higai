Post.seed(:id,
  { id: 1, title: 'テスト投稿', body: 'こりごりです。', user_id: 1, category_id: 1 },
  { id: 2, title: 'テスト投稿2', body: 'aaaaaaa。', user_id: 1, category_id: 1 },
  { id: 3, title: 'カテゴリーが2でユーザーが３です', body: 'ほげぇ', user_id: 3, category_id: 2 },
  { id: 4, title: 'idは4です。', body: 'ほげぇ', user_id: 3, category_id: 1 },
)
