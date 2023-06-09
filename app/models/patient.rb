class Patient < ActiveRecord::Base
  
  has_many :blood_pressures
  has_many :blood_sugars


end