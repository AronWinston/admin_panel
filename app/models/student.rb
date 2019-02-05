class Student < ApplicationRecord
    validates :firstname, :lastname, :age,  :education, presence: true 
    validates :age, numericality: { less_than: 150, message: "must be less than 150"}
    validates :education, inclusion: { 
                    in: %w(hs college masters phd), 
                    message: "%{value} is not a valid size" }
end
