class Person < ActiveRecord::Base
  has_many :foods
  has_many :weights

  def food_today
    foods.where("DATE(created_at) = DATE(?)", Time.now )
  end

  def points_remaining
    points_per_day - todays_food_total
  end

  def todays_food_total
    response = 0
    food_today.each do |food|
      response += food.points
    end
    response
  end

end
