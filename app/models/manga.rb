require 'elasticsearch/model'

class Manga < ApplicationRecord
  # モデルを検索できるようにするために必須の設定
  include Elasticsearch::Model
  # ActiveRecordによるレコードの作成・更新・削除に合わせて、ElasticSearch側でも作成・更新・削除を行う。
  include Elasticsearch::Model::Callbacks
  include MangaSearch::Engine

  belongs_to :author
  belongs_to :publisher
  belongs_to :category
end
