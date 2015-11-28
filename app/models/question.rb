class Question < ActiveRecord::Base
  has_many :responses
  accepts_nested_attributes_for :responses
end
