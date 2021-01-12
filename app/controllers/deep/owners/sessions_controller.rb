# frozen_string_literal: true

class Deep::Owners::SessionsController < Devise::SessionsController
  layout 'deep'

  protected

  def after_sign_in_path_for(_owner)
    deep_root_path
  end

  def respond_to_on_destroy
    redirect_to root_path
  end
end

