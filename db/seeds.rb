#管理者用ユーザー
User.create!(
  [
    {
      nickname: 'admin',
      email: 'admin@admin',
      password: 'admin111',
      admin: 1,
    }
  ]
)