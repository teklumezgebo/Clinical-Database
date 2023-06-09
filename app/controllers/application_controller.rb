class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/patients" do
    patients = Patient.all 
    patients.to_json
  end
  
  get "/patients/:id" do
    patient = Patient.find(params[:id])
    patient.to_json
  end

end
