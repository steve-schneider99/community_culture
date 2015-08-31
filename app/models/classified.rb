class Classified < ActiveRecord::Base
  belongs_to :User
  #has_many :questions
  #has_many :answers
end
