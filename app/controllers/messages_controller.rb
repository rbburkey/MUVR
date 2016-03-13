class MessagesController < ApplicationController
  before_action :authenticate_user! || :authenticate_mover!

  def new
    @user = User.find_by_username(params[:user])
@message = current_user.messages.new
  end

  def create
    recipients = User.where(id: params['recipients']) || Mover.where(id: params['recipients'])

    conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
  end
end
