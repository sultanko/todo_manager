class Task < ActiveRecord::Base
  attr_accessible :done, :due, :name, :notes, :priority
  validates :name, presence: true
end