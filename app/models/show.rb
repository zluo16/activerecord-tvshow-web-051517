require "pry"

class Show < ActiveRecord::Base

  def highest_rating
    binding.pry
    Show.all
  end

end
