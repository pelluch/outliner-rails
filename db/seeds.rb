# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Section.create([
	{ id: 100, name: "Principal", index: 0 },
	{ id: 200, name: "Sub1", parent_id: 100, index: 0},
	{ id: 300, name: "Sub2", parent_id: 100, index: 1},
	{ id: 400, name: "Subsub1", parent_id: 200, index: 0},
    { id: 500, name: "Principal 2", index: 1},
    { id: 600, name: "Sub1", parent_id: 500, index: 0 }
])