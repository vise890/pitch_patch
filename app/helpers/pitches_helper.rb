module PitchesHelper
  def youtube_embed_url(video_url)
    video_url.gsub('youtu.be', 'www.youtube.com/embed')
  end
end
