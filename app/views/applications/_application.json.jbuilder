json.extract! application, :id, :firstname, :lastname, :dob, :enrolled, :completed, :express, :quantity, :studentid, :department, :college, :school, :phone, :programme, :address, :reason, :type, :processed, :created_at, :updated_at
json.url application_url(application, format: :json)
