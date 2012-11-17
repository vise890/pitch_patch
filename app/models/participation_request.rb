class ParticipationRequest < ActiveRecord::Base
  attr_accessible :email, :message, :pitch_id
  belongs_to :pitch

  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
end
