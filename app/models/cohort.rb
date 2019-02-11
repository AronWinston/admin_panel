class Cohort < ApplicationRecord
    has_one :teacher, dependent: :destroy
    belongs_to :course, dependent: :destroy
    has_many :student_cohorts, dependent: :destroy
    has_many :students, :through => :student_cohorts
end

