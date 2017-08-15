# Highway

highway = {
  car_1: {
    car_info: {
    car_type: 'van',
    car_color: 'blue',
    car_contents: [
      'vacuum',
      'car seat'
      ]
    },
    driver_info: {
      name: 'Monica',
      age: 45,
      occupation: "Chef"
    }
  },
  car_2: {
    car_info: {
    car_type: 'truck',
    car_color: 'silver',
    car_contents: [
      'hair gel',
      'toy dinosaurs',
      'books'
      ]
    },
    driver_info: {
      name: 'Ross',
      age: 54,
      occupation: "Scientist"
    }
  },
  car_3: {
    car_info: {
    car_type: 'sedan',
    car_color: 'yellow',
    car_contents: [
      'smelly cat',
      'guitar'
      ]
    },
    driver_info: {
      name: 'Phoebe',
      age: 36,
      occupation: "Masseuse"
    }
  }
}

##################

p highway[:car_1][:car_info][:car_contents][0]
# should return item at index 0 (first item) => "vacuum"

highway[:car_1][:car_info][:car_contents].push('box of cookies')
# add "box of cookies" to the end of the list in car_content of car_1

p highway[:car_1][:car_info][:car_contents].last
# should return last item on list => "box of cookies"

p highway[:car_2][:car_info][:car_contents][2]
# should return third item on list => "books"

p highway[:car_2][:car_info][:car_contents].first
# should return first item on list => "hair gel"

p highway[:car_3][:driver_info][:age]
# should return => 36

p highway[:car_3][:driver_info][:occupation]
# should return => "Masseuse"

highway[:car_3][:driver_info][:occupation] = "Singer-Songwriter"
# change occupation to "Singer-Songwriter" in driver_info of car_3

p highway[:car_3][:driver_info][:occupation]
# should return => "Singer-Songwriter"