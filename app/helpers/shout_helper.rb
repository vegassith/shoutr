module ShoutHelper
    def avatar(user)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url =  "https://secure.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
        image_tag gravatar_url
    end

    def like_buttons(shout)
        if current_user.liked?(shout)
            link_to "Unlike", unlike_shouts_path(id: shout), method: :delete
        else
            link_to "Like", like_shouts_path(id: shout), method: :post
        end
    end

    def autolink(text)
        text.gsub(/@\w*/) { |mention| link_to mention, user_path(mention[1..-1]) }.html_safe
    end
end