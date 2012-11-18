class PitchMailer < ActionMailer::Base
  def update(pitch, to_mail)
    @pitch = pitch
    mail to: to_mail, from: pitch.user.email
  end
end
