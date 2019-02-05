class Cohort < ApplicationRecord
    has_one :teacher
    belongs_to :course
end
