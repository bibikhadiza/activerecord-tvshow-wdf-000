require 'pry'


class Show < ActiveRecord::Base


  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    movie = Show.order("rating")
    movie.last
  end

  def self.lowest_rating
    movie = Show.order("rating")
    movie.first.rating
  end

  def self.least_popular_show
    movie = Show.order("rating")
    movie.first
  end

  def self.ratings_sum
    Show.sum("rating")
  end

  def self.popular_shows
    arr = []
    arr << Show.where("rating > 5")
    arr[0]
  end

  def self.shows_by_alphabetical_order
    arr = []
    arr << Show.order(name: :asc)
    arr[0]
  end













end
