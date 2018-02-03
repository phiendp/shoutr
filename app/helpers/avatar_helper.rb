module AvatarHelper
  def avatar(user)
    gravatar_url = "//www.gravatar.com/avatar/#{email_digest(user.email)}"
    image_tag gravatar_url
  end

  private

  def email_digest(user_email)
    Digest::MD5.hexdigest(user_email)
  end  
end