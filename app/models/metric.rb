class Metric < ActiveRecord::Base
  validates :name,     presence: true
  validates :quantity, presence: true
end
