require 'rails_helper'

describe Movie do
  describe "#search_director"  do
    it "should find movies by the same director" do
      movie1 = Movie.create! :director => "C Nolan"
      movie2 = Movie.create! :director => "C Nolan"
      expect(Movie.search_director(movie1.id)).to include(movie2)
    end
    it "should not find movies by different directors" do
      movie1 = Movie.create! :director => "C Nolan"
      movie2 = Movie.create! :director => "James Cameron"
      expect(Movie.search_director(movie1.id)).to_not include(movie2)
    end
  end
end 
