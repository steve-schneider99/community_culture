class Organization < ActiveRecord::Base
  has_many :positions
  has_many :surveys
  has_many :donations
end
