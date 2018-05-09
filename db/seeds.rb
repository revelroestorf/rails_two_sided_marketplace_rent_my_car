
User.create([
  {email: 'revsails@gmail.com', password: 'sparkle', firstname: 'Revel', lastname: 'Roestorf'},
  {email: 'revel.roestorf@gmail.com', password: 'sparkle', firstname: 'Jane', lastname: 'Jensen'},
  {email: 'zac@gmail.com', password: 'sparkle', firstname: 'Zac', lastname: 'Chop'},
  {email: 'holly@gmail.com', password: 'sparkle', firstname: 'Holly', lastname: 'May'},
  {email: 'ray@gmail.com', password: 'sparkle', firstname: 'Ray', lastname: 'Charles'},
  {email: 'jay@gmail.com', password: 'sparkle', firstname: 'Jay', lastname: 'Bart'},
  {email: 'pat@gmail.com', password: 'sparkle', firstname: 'Pat', lastname: 'Smith'},
  {email: 'don@gmail.com', password: 'sparkle', firstname: 'Don', lastname: 'Jamin'},
  {email: 'butch@gmail.com', password: 'sparkle', firstname: 'Butch', lastname: 'Aspen'}
  ])

User.first.add_role :admin

Car.create([
  {user_id: 1, image: "image/upload/v1525310148/eswn9zwqoocuvyzztr73.jpg", make: 'Tesla', model: 'model x',
    year: '2016', full_address: '168 hedges ave, mermaid beach, qld', price_per_day: 90, price_per_km: 0.25},
  {user_id: 1, image: "image/upload/v1525310084/bpu91s6qaf2lngmem6gc.jpg", make: 'Chevrolet', model: 'corvette',
    year: '2018', full_address: '168 hedges ave, mermaid beach, qld', price_per_day: 80, price_per_km: 0.4},
  {user_id: 2, image: "image/upload/v1525310097/zmbyia9pal1kkg0yey7d.jpg", make: 'Hyundai', model: 'elantra',
    year: '2017', full_address: '1 breakfast creek rd, newstead, qld', price_per_day: 25, price_per_km: 0.18},
  {user_id: 3, image: "image/upload/v1525310135/otmlg82qob3ftpkkjbyc.jpg", make: 'Tesla', model: 'model s',
    year: '2015', full_address: '158 robinson st, fortitude valley, qld', price_per_day: 70, price_per_km: 0.2},
  {user_id: 4, image: "image/upload/v1525310051/eespcwoezpang96kn7hf.jpg", make: 'Audi', model: 'a3',
    year: '2006', full_address: '327 given terrace, paddington, qld', price_per_day: 32, price_per_km: 0.22},
  {user_id: 5, image: "image/upload/v1525310168/zlkfkaoixuj2vt6w7nc2.jpg", make: 'BMW', model: 'x3',
    year: '2008', full_address: '76 the esplanade, burleigh heads, qld', price_per_day: 30, price_per_km: 0.25},
  {user_id: 6, image: "image/upload/v1525310067/bubuw6jorzdnp6fpfpol.jpg", make: 'Mini', model: 'convertable',
    year: '2017', full_address: '30 pinnacle ct, robina, qld', price_per_day: 60, price_per_km: 0.35},
  {user_id: 7, image: "image/upload/v1525308599/vgofl9azwghtfaoxycy6.jpg", make: 'Mitsubishi', model: 'lancer',
    year: '2013', full_address: '26 lather st, southport, qld', price_per_day: 20, price_per_km: 0.2},
  {user_id: 8, image: "image/upload/v1525310034/dpomfwsgiywnswrdkpfu.jpg", make: 'BMW', model: '3 series',
    year: '2009', full_address: '8 beard st, auchenflower, qld', price_per_day: 40, price_per_km: 0.28},
  {user_id: 9, image: "image/upload/v1525310119/c8fufkuthtj5itvtglks.jpg", make: 'Tesla', model: 'model 3',
    year: '2018', full_address: '2 booran st, hope island, qld', price_per_day: 80, price_per_km: 0.15}
  ])
