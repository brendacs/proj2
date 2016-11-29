# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

asp = Organization.create(name: "Alpha Sigma Phi")
carson = Officer.create(name: "Carson", year: 2, position: "Treasurer", organization: asp)
CommitteeMember.create(name: "Underling", year: 1, position: "Finance Committee Member", officer: carson)

elim = CommitteeMember.create(name: "Eliminated Underling", year: 1, position: "Finance Committee Member", officer: carson)
elim.destroy

aaa = Organization.create(name: "AAA")