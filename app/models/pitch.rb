class Pitch < ActiveRecord::Base
  attr_accessible :description, :location, :title, :user_id, :video_url
end
