module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user)
    email_digest = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{email_digest}"
    image_tag(gravatar_url, alt: user.username, class: "gravatar")
  end
end
