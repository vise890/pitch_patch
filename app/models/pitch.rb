class Pitch < ActiveRecord::Base
  attr_accessible :description, :location, :title, :video_url, :skill_list, :email
  acts_as_taggable
  acts_as_taggable_on :skills, :domains
end
