# require 'elasticsearch/model'

# config = {
#     host:  ENV['ELASTICSEARCH_HOST'] || "localhost",
#     port:  ENV['ELASTICSEARCH_PORT'] || "9200",
#     user:  ENV['ELASTICSEARCH_USER'] || "",
#     password:  ENV['ELASTICSEARCH_PASSWORD'] || ""
#   }
#   Elasticsearch::Model.client = Elasticsearch::Client.new(config)

# コンテナ名に合わせる
config = { hosts: "myapp-elasticsearch" }
Elasticsearch::Model.client = Elasticsearch::Client.new(config)