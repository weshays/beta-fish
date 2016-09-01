#SimpleCov.minimum_coverage 92
SimpleCov.start 'rails' do
    add_group 'Serializers', 'app/serializers'
    add_group 'Presenters', 'app/presenters'
    add_group 'Services', 'app/services'
    add_group 'Workers', 'app/workers'
    add_group 'Uploaders', 'app/uploaders'
    add_group 'Model Concerns', 'app/models/concerns'
    add_group 'Controller Concerns', 'app/controllers/concerns'
    add_group 'PDF Controllers', 'app/controllers/pdf'
    add_group 'PDF Services', 'app/services/pdf'
    add_group 'CSV Controllers', 'app/controllers/csv'
    add_group 'CSV Services', 'app/services/csv'
    add_group 'Model Auditor Engine', 'engines/model_auditor'
    add_filter 'lib/mina'
    add_filter 'engines/model_auditor/lib/model_auditor'
end
