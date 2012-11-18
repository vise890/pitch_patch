module PitchesHelper
  def youtube_embed_code(video_url)
    return '' if video_url.blank?

    regexp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/
    if video_url.match(regexp)
      youtube_code = video_url.match(regexp)[7]
    else
      youtube_code = nil
    end
    if youtube_code && youtube_code.length == 11
      youtube_code
    else
      ''
    end
  end
end
