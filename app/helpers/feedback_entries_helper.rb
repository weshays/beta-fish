module FeedbackEntriesHelper
  def feedback_status(feedback_entry)
    if feedback_entry.viewed_at.nil? && feedback_entry.archived_at.nil?
      '+'
    elsif feedback_entry.archived_at.present?
      'A'
    elsif feedback_entry.viewed_at.present?
      '-'
    end
  end

  def feedback_browser(feedback_entry)
    feedback_entry.browser
  end

  def feedback_operating_system(feedback_entry)
    feedback_entry.operating_system
  end

  def feedback_screenshot(feedback_entry)
    feedback_entry.feedback_entry_attachment.nil? ? '' : 'P'
  end
end
