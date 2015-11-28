class Question < ActiveRecord::Base
  has_many :responses
  belongs_to :survey
  accepts_nested_attributes_for :responses
end
