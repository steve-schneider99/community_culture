class Survey < ActiveRecord::Base
  has_many :survey_questions
  belongs_to :organization
end
