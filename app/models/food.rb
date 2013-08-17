class Food < ActiveRecord::Base
  belongs_to :day
  belongs_to :person
end
