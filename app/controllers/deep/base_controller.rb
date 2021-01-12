# frozen_string_literal: true

class Deep::BaseController < ApplicationController
  layout 'deep'

  before_action :authenticate_owner!

  protected

  def authenticate_owner!
    if owner_signed_in?
      super
    else
      redirect_to new_owner_session_path, notice: 'Вам необходимо войти в систему.'
    end
  end
end
