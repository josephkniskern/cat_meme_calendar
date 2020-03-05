# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
CatCalendar.destroy_all
Calendar.destroy_all


cat1 = Cat.create(img_url: "https://i.imgflip.com/20fhys.jpg")
cat2 = Cat.create(img_url: "http://www.quickmeme.com/img/29/2944cac4d88402f4ea0dfcb88ee2bca2767bb55bb17508b2ea6a877767923545.jpg")
cat3 = Cat.create(img_url: "https://i.imgflip.com/ixzwu.jpg")
cat4 = Cat.create(img_url: "https://www.petmd.com/sites/default/files/shutterstock_196851809.jpg")
cat5 = Cat.create(img_url: "http://s2.favim.com/orig/150621/cats-cool-cat-groovy-sunglasses-Favim.com-2838433.jpg")
cat6 = Cat.create(img_url: "https://i.pinimg.com/originals/f7/e7/a1/f7e7a1bee3c1131265459b6f2a871d8c.jpg")
cat7 = Cat.create(img_url: "https://a.wattpad.com/cover/76829414-352-k244540.jpg")
cat8 = Cat.create(img_url: "https://i.pinimg.com/originals/e1/ac/23/e1ac23a2daf8b20c2310fdff0767963f.jpg")
cat9 = Cat.create(img_url: "https://www.catster.com/wp-content/uploads/2015/06/start-of-fall-cats-03.jpg")
cat10 = Cat.create(img_url: "https://i.pinimg.com/originals/57/cf/bc/57cfbc72f8a987efa30eae57547ec46b.jpg")
cat11 = Cat.create(img_url: "https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/angry-santa-cat-hulya-ozkok.jpg")
cat12 = Cat.create(img_url: "https://i.ytimg.com/vi/sv0o6w7dHqA/maxresdefault.jpg")




calendar1 = Calendar.create(title: "My first Calendar")
calendar2 = Calendar.create(title: "My second Calendar")
calendar3 = Calendar.create(title: "My third Calendar")

cat_calendar1 = CatCalendar.create(month: "January", img_url: "https://blankcalendarpages.com/printable_calendar/blank-18/January-2020-calendar-b18.jpg", cat_id: Cat.all.sample.id, calendar_id: Calendar.all.sample.id)
cat_calendar2 = CatCalendar.create(month: "February", img_url: "https://blankcalendarpages.com/printable_calendar/blank-18/February-2020-calendar-b18.jpg",cat_id: Cat.all.sample.id, calendar_id: Calendar.all.sample.id)
cat_calendar3 = CatCalendar.create(month: "March", img_url: "https://blankcalendarpages.com/printable_calendar/blank-18/March-2020-calendar-b18.jpg ", cat_id: Cat.all.sample.id, calendar_id: Calendar.all.sample.id)

