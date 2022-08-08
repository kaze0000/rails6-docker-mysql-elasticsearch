# require 'elasticsearch/model'

# config = {
#     host:  ENV['ELASTICSEARCH_HOST'] || "localhost",
#     port:  ENV['ELASTICSEARCH_PORT'] || "9200",
#     user:  ENV['ELASTICSEARCH_USER'] || "",
#     password:  ENV['ELASTICSEARCH_PASSWORD'] || ""
#   }
#   Elasticsearch::Model.client = Elasticsearch::Client.new(config)

config = { host: "localhost" || "localhost:9200/" || "elasticsearch:9200/" , port: '443' }
Elasticsearch::Model.client = Elasticsearch::Client.new(config)