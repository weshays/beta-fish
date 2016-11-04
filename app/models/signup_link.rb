class SignupLink < ApplicationRecord
  # SIGNUP_ANALYTIC = 'Analytic'.freeze                           # future thinking
  # SIGNUP_DATA_ENRICHMENT_REPORT = 'DataEnrichmentReport'.freeze # future thinking
  # SIGNUP_LEADERSHIP_ASSESSESSMENT_REPORT = 'LeadershipAssessmentReport'.freeze
  # SIGNUP_TYPES = %w(Analytic DataEnrichmentReport LeadershipAssessmentReport).freeze

  # # belongs_to :client_id ## I intentionally did not enable this - Wes

  # before_create :add_access_key

  # validates :company_type, presence: { message: 'Select company type' }
  # validates :company_name,
  #   presence: { message: 'Enter company name' },
  #   length: { maximum: 100, too_long: 'Company name must have no more than 100 characters.' }
  # validates :address,
  #   presence: { message: 'Enter address' },
  #   length: { maximum: 100, too_long: 'Address must have no more than 100 characters.' }
  # validates :city,
  #   presence: { message: 'Enter city' },
  #   length: { maximum: 50, too_long: 'City must have no more than 50 characters.' }
  # validates :state,
  #   presence: { message: 'Enter state' },
  #   length: { maximum: 2, too_long: 'State must have no more than 2 characters.' }
  # validates :postal_code,
  #   presence: { message: 'Enter postal code' },
  #   length: { maximum: 15, too_long: 'Postal code must have no more than 15 characters.' }
  # validates :job_title,
  #   length: { maximum: 100, too_long: 'Job title must have no more than 100 characters.' }
  # validates :first_name,
  #   presence: { message: 'Enter first name' },
  #   length: { maximum: 100, too_long: 'First name must have no more than 100 characters.' }
  # validates :last_name,
  #   presence: { message: 'Enter last name' },
  #   length: { maximum: 100, too_long: 'Last name must have no more than 100 characters.' }
  # validates :email,
  #   presence: { message: 'Enter email' },
  #   length: { maximum: 100, too_long: 'Email must have no more than 100 characters.' }
  # validates :phone_number,
  #   presence: { message: 'Enter phone number' },
  #   length: { maximum: 25, too_long: 'Email must have no more than 25 characters.' }
  # validates :referrer,
  #   presence: { message: 'Referrer not set' },
  #   length: { maximum: 25, too_long: 'Referrer must have no more than 25 characters.' }
  # validates :attendance_count,
  #   inclusion: { in: (0..500_000), message: 'Attendance count should be between 0 and 500,000' }

  # validates :signup_type,
  #   inclusion: {
  #     in: SIGNUP_TYPES,
  #     message: 'Select signup type',
  #     allow_blank: false
  #   }

  # scope :leadership_assessment_report_signups, -> { where signup_type: SIGNUP_LEADERSHIP_ASSESSESSMENT_REPORT }
  # scope :pdf_ready, lambda {
  #   where(processed_email: true)
  #     .where(processed_activation: true)
  #     .where(processed_payment_method: true)
  #     .where(processed_invoice: true)
  #     .where(processed_upload: true)
  #     .where(processed_data: true)
  #     .where(processed_pdf_ready: false)
  # }

  # def access_key_url
  #   base_url = 'http://localhost:3010'
  #   base_url = 'https://www-test.mortarstone.com' if Rails.env.staging?
  #   base_url = 'https://www.mortarstone.com' if Rails.env.production?
  #   "#{base_url}/resources/reports/leadership-assessment/signup/#{access_key}"
  # end

  # def analytic_signup?
  #   signup_type == 'Analytic'
  # end

  # def data_enrichment_report_signup?
  #   signup_type == 'DataEnrichmentReport'
  # end

  # def leadership_assessment_report_signup?
  #   signup_type == 'LeadershipAssessmentReport'
  # end

  # private

  # def add_access_key
  #   self.access_key = SecureRandom.hex(20)
  # end
end
