class ConversationsController < ApplicationController
  before_action :authenticate_user! || :authenticate_mover!
  before_action :get_mailbox
  before_action :get_conversation, except: [:index]
  before_action :get_box, only: [:index]


  def index
    if @box.eql? "inbox"
      @conversations = @mailbox.inbox
    elsif @box.eql? "sent"
      @conversations = @mailbox.sentbox
    else
      @conversations = @mailbox.trash
    end

    @conversations = @conversations.paginate(page: params[:page], per_page: 10)
  end

    def show
    end

    def reply
      current_user.reply_to_conversation(@conversation, params[:body])
      flash[:success] = 'Reply sent'
      redirect_to conversation_path(@conversation)
    end


  def destroy
    if user_signed_in?
      @conversation.move_to_trash(current_user)
      flash[:success] = 'The conversation was moved to trash.'
      redirect_to conversations_path
    else
      @conversation.move_to_trash(current_mover)
      flash[:success] = 'The conversation was moved to trash.'
      redirect_to conversations_path

    end

    def restore
      if user_signed_in?
      @conversation.untrash(current_user)
      flash[:success] = 'The conversation was restored.'
      redirect_to conversations_path
    else
      @conversation.untrash(current_mover)
      flash[:success] = 'The conversation was restored.'
      redirect_to conversations_path
    end


  private
  def get_mailbox
    if user_signed_in?
    @mailbox ||= current_user.mailbox
  else
      @mailbox ||= current_mover.mailbox
  end
end


  def get_box
    if params[:box].blank? or !["inbox","sent","trash"].include?(params[:box])
      params[:box] = 'inbox'
    end
    @box = params[:box]
  end


  def get_conversation
    @conversation ||= @mailbox.conversations.find(params[:id])
  end
end
