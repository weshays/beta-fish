class FeedbackEntriesController < ApplicationController
  before_action :feedback_entry, only: [:show, :update]

  def index
    # if FeedbackEntry.count == 0
    #   FeedbackEntry.create(
    #     customer_id: 1,
    #     comprehension: 'happy',
    #     path: '/settings',
    #     comment: 'This is the settings',
    #     browser: 'Firefox',
    #     operating_system: 'Windows',
    #     resolution: '1280x1024'
    #   )

    #   FeedbackEntry.create(
    #     customer_id: 1,
    #     comprehension: 'idea',
    #     path: '/people',
    #     comment: 'This is the people thing and it needs work',
    #     browser: 'Firefox',
    #     operating_system: 'Windows',
    #     resolution: '1280x1024'
    #   )
    # end

    @feedback_entries = FeedbackEntry.all
  end

  def show
  end

  def update
  end

  # def show_image
  #   @feedback_entry = FeedbackEntry.find(params[:id])
  #   send_data @feedback_entry.screenshot,
  #     filename: "image#{params[:id]}.png",
  #     type: 'image/png',
  #     disposition: 'inline'
  # end

  private

  def feedback_entry
    @feedback_entry = FeedbackEntry.find(params[:id])
  rescue
    record_not_found("Fund #{params[:id]} not found")
  end
end
