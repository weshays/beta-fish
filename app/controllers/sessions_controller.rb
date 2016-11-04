class SessionsController < ApplicationController
  before_action :set_session, only: [:destroy]

  def new
    # Do nothing
  end

  def create
    redirect_to dashboard_path
  end

  def destroy
    # @session.destroy unless @session.nil?
    redirect_to login_path, notice: 'Session was successfully destroyed.'
  end

  private

  def session_params
    # params.fetch(:session, {})
  end

  def set_session
    # Session.where(id:)
  end

  # def authenticate_user_by_login
  #   return false unless params[:login]
  #   user = User.where('LOWER(email) = ?', params[:login][:email].downcase.strip).first
  #   return false unless user
  #   user.authenticate(params[:login][:password] || '')
  # end
end
