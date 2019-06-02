# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

Messages.create(message: "My #mission in #life is not merely to #survive, but to thrive; and to do so with some #passion, some compassion, some humor, and some #style.")
Messages.create(message: "Today's #mission: be #happy and #relaxed. Right now, I'm #happy")
Messages.create(message: "To thrive and do what I #love, I need to be #healthy.")
Messages.create(message: "#red #green #yellow #green #green #yellow - that's what my lunch meals look like! So many veggies.")
Messages.create(message: "Sometimes I forget to moderate my meat consumption, both red and white.")
