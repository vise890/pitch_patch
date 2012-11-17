class Pitch < ActiveRecord::Base
  attr_accessible :description, :location, :title, :user_id, :video_url
  acts_as_taggable
  acts_as_taggable_on :skills, :domains
end
