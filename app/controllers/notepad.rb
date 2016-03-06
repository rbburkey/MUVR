class RegistrationsController < Devise::RegistrationsController


  private

  def sign_up_params
    params.require(:user).permit(:email, :username, :first_name, :last_name, :avatar, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :avatar, :password, :password_confirmation, :current_password)
  end
end

def create
  @mover = Mover.new(user_params)
end

<h2><%= "#{@mover.first_name}'s" + " Profile"  %></h2>


<% @movers.each do |mover| %>
<p>Your Username is:</p>
<h3><%= mover.user_name %></h3>
<% end %>
