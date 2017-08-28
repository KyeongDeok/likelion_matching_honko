# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locale_list =[ '서울', '경기', '강원', '충남', '대전', "충북", "전북", "전남", "광주", "경북", "대구", "경상","부산"]
school_list = [ "가천대학교", "한양대학교", "한양대학교 에리카", "충남대학교", "대전대학교", "충북대학교", "전북대학교", "전남대학교", "동덕여자대학교", "경북대학교", "대구대학교", "경상대학교","부산대학교"]


100.times do |s|
    locale = locale_list.sample(1)
    school = school_list.sample(1)
    Apply.create(name: s, kakaoid: s , age: s, school: school , locale: locale)
end
       