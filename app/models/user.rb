class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Create the association between User and Tweets
  # TTS-SLIDE09 
  has_many :tweets     

  # Add validations for the username
  # TTS-SLIDE15
  validates :username, presence: true
  validates :username, uniqueness: true

  # Make the following attribute an array
  # TTS-SLIDE25
  serialize :following, Array

end