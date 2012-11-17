class Pitch < ActiveRecord::Base
  attr_accessible :description, :location, :title, :video_url
  acts_as_taggable
  acts_as_taggable_on :skills, :domains

  private
    def tokenize_array(array)
        result = ""
        array.each do |e|
          result += "<span class='label label-info'>" + e.to_s + "</span>&nbsp;"
        end
        return result
    end
end
