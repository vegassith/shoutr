module ShoutHelper
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