Rails.application.config.generators do |g|
  g.helper false
  g.orm :active_record, primary_key_type: :uuid
end
