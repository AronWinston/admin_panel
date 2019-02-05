class Teacher < ApplicationRecord
    validates :firstname, :lastname, :age, :salary, :education, presence: true 
    validates :age, numericality: { less_than: 150, message: "must be less than 150"}
    validates :salary, numericality: {greater_than_or_equal_to: 0, 
                message: "must be greater than 0"}
    validates :education, inclusion: { 
                    in: %w(hs college masters phd), 
                    message: "%{value} is not a valid size" }
    # has_many :cohorts, dependent: :destroy
    belongs_to :cohort
end
