class MessagesController < ApplicationController


  def new
    if user_signed_in?
    @user = User.find_by_username(params[:user])
@message = current_user.messages.new
else
  @mover = Mover.find_by_user_name(params[:user])
@message = current_mover.messages.new
  end
end

  def create
    if user_signed_in?
    recipients = Mover.where(id: params['recipients'])
    conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)

  else
    recipients = User.where(id: params['recipients'])
    conversation = current_mover.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
  end
end
end
