require "pry"

class Show < ActiveRecord::Base

  def self.highest_rating
    self.all.map{|s| s.rating}.sort.last
  end

  def self.most_popular_show
    self.find_by(rating: highest_rating)
  end

  def self.lowest_rating
    self.all.map{|s| s.rating}.sort.first
  end

  def self.least_popular_show
    self.find_by(rating: lowest_rating)
  end

  def self.ratings_sum
    self.all.map{|s| s.rating}.inject(0){|sum, x| sum + x}
  end

  def self.popular_shows
    self.all.select{|s| s.rating > 5}
  end

  def self.shows_by_alphabetical_order
    self.all.sort_by{|s| s.name.downcase}
  end

end
