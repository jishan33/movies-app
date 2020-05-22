def movies 
[
 {
    name: 'Lord of Rings',
    release_year: 2001,
    rating: 8,
    length: '208 mins',
    user_id: 1,
    country_id: 2,
    director_id: 2,
    picture: 'lordofrings.jpg'

 },
 
 {
    name: 'The Hobbit',
    release_year: 2012,
    rating: 7,
    length: '149 mins',
    user_id: 1,
    country_id: 2,
    director_id: 2,
    picture: 'hobbit.jpg'
   
 },
 
  {
    name: 'The Godfather',
    release_year: 1972,
    rating: 9,
    length: '175 mins',
    user_id: 2,
    country_id: 2,
    director_id: 2,
    picture: 'godfather.jpg'
 },
 
 {
    name: 'Inception',
    release_year: 2010,
    rating: 8,
    length: '148 mins',
    user_id: 2,
    country_id: 2,
    director_id: 2,
    picture: 'inception.jpg'
 },

  {
    name: 'The Matrix',
    release_year: 1999,
    rating: 8,
    length: '136 mins',
    user_id: 1, 
    country_id: 2,
    director_id: 2,
    picture: 'matrix.jpg'
 }
 
]
end

def countries
[
  { 
    name: 'Australia'
  },

  { 
    name: 'New Zealand'
  },

  { 
    name: 'America'
  },

  { 
    name: 'Japan'
  },

  { 
    name: 'Itlay'
  },

  { 
    name: 'Taiwan'
  },

  { 
    name: 'Germany'
  }

]
end

def genres
[
  { 
    name: 'crime'
  },

  { 
    name: 'fantasy'
  },

  { 
    name: 'Sifi'
  },

  { 
    name: 'comedy'
  },
  
  { 
    name: 'romance'
  }
]
end

def directors
[
  { 
    name: 'Peter Jackson'
  },

  { 
    name: 'Steven Spielberg'
  },

  { 
    name: 'Francis Ford Coppola'
  },

  { 
    name: 'Christopher Nolan'
  },
  { 
    name: 'Lana Wachowski'
  }
]
end

def casts
[
  { 
    name: 'Leonardo DiCaprio',
    gender: 1,
    birth_year: 1974,
    country: 'America'
  },

  { 
    name: 'Joseph Gordon-Levitt',
    gender: 1,
    birth_year: 1981,
    country: 'America'
  },

  { 
    name: 'Ellen Page', 
    gender: 1,
    birth_year: 1981,
    country: 'America'
  },

  { 
    name: 'Keanu Reeves',
    gender: 1,
    birth_year: 1964,
    country: 'Beirut'
  },

  { 
    name: 'Yui Aragaki',
    gender: 0,
    birth_year: 1988,
    country: 'Japan'
  }
]
end

def genre_movies
[
  { 
   movie_id: 1,
   genre_id: 2
  },

  { 
    movie_id: 2,
    genre_id: 3
  },

  { 
    movie_id: 3,
    genre_id: 4
  },

  { 
    movie_id: 4,
    genre_id: 2
  },

  { 
    movie_id: 3,
    genre_id: 5
  }
]
end


def cast_movies
[
  { 
   movie_id: 1,
   cast_id: 2
  },

  { 
    movie_id: 2,
    cast_id: 3
  },

  { 
    movie_id: 3,
    cast_id: 4
  },

  { 
    movie_id: 5,
    cast_id: 4
  },

  { 
    movie_id: 2,
    cast_id: 5
  }
]
end






