class Patient < ActiveRecord::Base
  
  has_many :blood_pressures, dependent: :destroy
  has_many :blood_sugars, dependent: :destroy
  
end