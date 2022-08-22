## 概要
- rails６系をMySQLで、Dockerで動かす 参考 https://zenn.dev/tmasuyama1114/articles/4ed199ce0478e7

- そこにElastic Searchを導入する 参考 https://qiita.com/fuqda/items/d568aaf6b28f2d348b0f
## 構築手順
- bundle installをする
`docker-compose run web bundle exec bundle install`

＊ `docker-compose run web rails bundle install` だと、エラー↓

```
rails6-docker-mysql git:(main) docker-compose run web rails bundle install      
Creating network "rails6-docker-mysql_default" with the default driver
Creating rails6-docker-mysql_db_1 ... done
Creating rails6-docker-mysql_web_run ... done
rails aborted!
Don't know how to build task 'bundle' (See the list of available tasks with `rails --tasks`)
/myapp/bin/rails:5:in `<top (required)>'
/myapp/bin/spring:10:in `block in <top (required)>'
/myapp/bin/spring:7:in `tap'
/myapp/bin/spring:7:in `<top (required)>'
(See full trace by running task with --trace)
ERROR: 1
```

- db作る `docker-compose run web rails db:create`

- ローカルで動かす `docker-compose up`