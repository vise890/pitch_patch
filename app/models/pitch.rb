class Pitch < ActiveRecord::Base
  attr_accessible :description, :location, :title, :video_url, :skill_list, :domain_list, :private_pitch
  acts_as_taggable
  acts_as_taggable_on :skills, :domains

  has_many :participation_requests, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :video_url, format: { with: /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/, message: 'should be a valid youtube video' }

  scope :public, where(private_pitch: false)
end
