# README
# autocomplete_search
example of product search using Redis memcache

terminal:
rails g resource search_suggestion term popularity:integer
rake db:migrate
rake search_suggestions:index
redis: https://redis.io/download

to add search middleware to queue:
config/application.rb:
config.middleware.insert_before 0, SearchSuggestions

to start local redis server, in redis folder:
src/redis-server
