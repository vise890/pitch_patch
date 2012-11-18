module PitchesHelper
  def youtube_embed_url(video_url)
    return '' if video_url.blank?

    regexp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/
    youtube_code = video_url.match(regexp)[7] || nil
    if youtube_code && youtube_code.length == 11
      "http://www.youtube.com/embed/#{youtube_code}"
    else
      ''
    end
  end
end
