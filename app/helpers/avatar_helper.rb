module AvatarHelper 
    def avatar(user)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url =  "https://secure.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
        image_tag gravatar_url
    end
end