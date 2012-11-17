class Pitch < ActiveRecord::Base
  attr_accessible :description, :location, :title, :video_url, :skill_list, :domain_list, :email
  acts_as_taggable
  acts_as_taggable_on :skills, :domains

  has_many :participation_requests, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :video_url, presence: true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

end
