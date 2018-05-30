# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Image.destroy_all

Image.create!([
  { url: 'http://www.petguide.com/wp-content/uploads/2013/02/shiba-inu-1.jpg' },
  { url: 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12224412/Shiba-Inu-On-White-01.jpg' },
  { url: 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12224408/Shiba-Inu-On-White-03.jpg' },
  { url: 'https://canna-pet.com/wp-content/uploads/2017/09/shiba-inu-temperament-and-personality_canna-pet-1024x683.jpg' },
  { url: 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12224425/Shiba-Inu-Care.jpg' },
  { url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Taka_Shiba.jpg/1200px-Taka_Shiba.jpg' },
  { url: 'http://static.ddmcdn.com/en-us/apl/breedselector/images/breed-selector/dogs/breeds/shiba-inu_01_lg.jpg' },
  { url: 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12224410/Shiba-Inu-On-White-02.jpg' },
  { url: 'https://myfirstshiba.com/wp-content/uploads/2016/01/AdobeStock_115842322_reduced_white_background-copy.jpg' },
  { url: 'https://vetstreet.brightspotcdn.com/dims4/default/0f42b23/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F05%2Fae6220a81c11e0a0d50050568d634f%2Ffile%2FShiba-Inu-5-645mk070111.jpg' },
  { url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM8zBi7lbF954cd2M2ZQmslZksKcUfMzdPOiRRiZj6AHoHy05z' },
  { url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAefbJS-rcBM0jKKU0szJvewKcvyLgBHGnC8CQO7hw1QTwmo0f' },
  { url: 'https://thumbs.dreamstime.com/b/shiba-inu-puppy-cute-adorable-pure-white-background-61259986.jpg' },
  { url: 'https://thumbs.dreamstime.com/z/shiba-inu-puppy-white-background-red-30968306.jpg' },
  { url: 'http://www.dogbreedplus.com/dog_breeds/images/ShibaInu3.jpg' },
  { url: 'https://canadiandogs.com/wp-content/uploads/Shiba-Inu.jpg' },
  { url: 'http://www.chienshibainu.fr/wp-content/uploads/2016/06/shiba-inu-20160618_151117-9.jpg' },
  { url: 'http://www.muamat.com/reviews/tfiles/serve/1333/small' },
  { url: 'http://vmiresobak.com/media/k2/items/cache/a9ccd7cd1c4267a50c67ac0bd7180172_XL.jpg' },
  { url: 'http://www.chien-shiba-inu.com/wp-content/uploads/2016/07/shiba-inu-neige-noel.jpg' }
])

