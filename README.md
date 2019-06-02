# README
* Ruby version
  - ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin18]

* Database
  - PostgreSQL
  
* To install all the gems Rails will need to get started
  - $bundle install

* Database initialization
  - $rake db:seed

* How to run the test suite
  - $ruby -Itest test/models/message_test.rb
  - $ruby -Itest test/controllers/messages_controller_test.rb

* Features
  - A JSON API for creating messages
  - Front-end and back-end validation to ensure maximum message length of 141 characters (including spaces)
  - Messages are associated with any hashtags found in the body
  - Hashtags in Tag table on the database are unique - a tag is not added if it already exists in the db
  - An HTML endpoint (/messages) displays: 
    - The messages from newest to oldest
    - A list of hashtags found in the messages
    - Orders the hashtags by frequency in message
