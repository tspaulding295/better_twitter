class Tweet < ActiveRecord::Base
    # Create the association between Tweet and User
    # TTS-SLIDE09
	belongs_to :user
  
	# Add validations for the tweets
	# TTS-SLIDE15
	validates :message, presence: true
    validates :message, length: {maximum: 140, too_long: "A tweet is only 140 max. Everybody knows that!"}
end
