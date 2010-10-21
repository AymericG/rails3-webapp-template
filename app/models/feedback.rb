require "email_validator"

class Feedback < ActiveRecord::Base
	validates :text, :presence => true
  validates :from_email, :presence => true, :email => true
end
