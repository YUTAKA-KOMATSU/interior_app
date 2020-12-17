class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '北欧ナチュラル' },
    { id: 3, name: 'シンプルモダン' },
    { id: 4, name: '和モダン' },
    { id: 5, name: 'アンティークスタイル' },
    { id: 6, name: 'ヴィンテージスタイル' },
    { id: 7, name: '和室インテリア' },
    { id: 8, name: '書斎インテリア' },
    { id: 9, name: 'ベッドルームインテリア' },
    { id: 10, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :users
  has_many :myinteriors
  end
