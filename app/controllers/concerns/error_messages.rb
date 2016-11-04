module ErrorMessages
  extend ActiveSupport::Concern

  # See http://guides.rubyonrails.org/layouts_and_rendering.html for other status values.

  def record_not_found(msg)
    render json: { errors: [msg] }.to_json, status: :not_found
    false
  end

  def access_denied
    render json: { error: 'Unauthorized Request' }.to_json, status: :unauthorized
    false
  end

  def not_acceptable(obj, error_message = 'Unknown Error')
    render(json: { errors: obj.nil? ? [error_message] : obj.errors.values.flatten }, status: :not_acceptable)
    false
  end
end
