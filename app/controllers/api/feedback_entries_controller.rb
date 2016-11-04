class Api::FeedbackEntriesController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def create
    fbe = FeedbackEntry.create(feedback_entry_params.merge(customer_id: 1))
    render json: { success: fbe.id }
  end

  # private

  def feedback_entry_params
    params.require(:feedback_entry).permit(
      :comprehension,
      :path,
      :comment,
      :browser,
      :operating_system,
      :resolution
    )
  end
end
