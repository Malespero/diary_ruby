# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do |i|
    diary = Diary.create(title: "diary ##{i}", kind: "priv", expiration: DateTime.now + 10.minute )
    3.times do |j|
        Note.create(diary_id: "#{diary.id}", text: "note ##{j}")
    end
end

2.times do |i|
    diary = Diary.create(title: "diary ##{i}", kind: "pub" )
    3.times do |j|
        Note.create(diary_id: "#{diary.id}", text: "note ##{j}")
    end
end

