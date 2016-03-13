module MessagesHelper
  def recipients_options
    s = ''
    if user_signed_in?
    Mover.all.each do |mover|
      s << "<option value='#{mover.id}'>#{mover.user_name}</option>"
    end
    elsif mover_signed_in?
      User.all.each do |user|
        s << "<option value='#{user.id}'>#{user.username}</option>"
    end
  end
    s.html_safe
  end
end
