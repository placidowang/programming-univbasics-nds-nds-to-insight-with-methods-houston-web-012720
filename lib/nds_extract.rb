$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# pp directors_database

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_total_gross = 0
  movies = director_data[:movies]
  
  for movie in movies do
    director_total_gross += movie[:worldwide_gross]
  end
  
  # movies.length.times { |i|
  #   director_total_gross += movies[i][:worldwide_gross]
  # }
  
  return director_total_gross
end


# first_director_name = directors_database.first.values.first
# first_director_hash = directors_database.find{ |x| x[:name] == first_director_name}
    
# pp gross_for_director(first_director_hash)

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  
  for director in nds do
    name = director[:name]
    gross = gross_for_director(director)
    
    result[name] = gross
  end
  
  return result
  nil
end
