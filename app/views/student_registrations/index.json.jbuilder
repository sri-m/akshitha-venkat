json.array!(@student_registrations) do |student_registration|
  json.extract! student_registration, :id, :name, :age, :gender, :email, :cell, :group, :education, :subject
  json.url student_registration_url(student_registration, format: :json)
end
