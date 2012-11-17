module PitchesHelper
  def youtube_embed_url(video_url)
    return '' if video_url.blank?

    regexp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/
    youtube_code = video_url.match(regexp)
    if youtube_code[7] && youtube_code[7].length == 11
      "http://www.youtube.com/embed/#{youtube_code[7]}"
    else
      ''
    end
  end
end
