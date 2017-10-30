# README
# autocomplete_search
example of product search using Redis memcache

terminal:
rails g resource search_suggestion term popularity:integer
rake db:migrate
rake search_suggestions:index
redis: https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04

to add search middleware to queue:
config/application.rb:
config.middleware.insert_before 0, SearchSuggestions
