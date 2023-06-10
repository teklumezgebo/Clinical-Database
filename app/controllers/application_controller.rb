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

  delete '/patients/:id' do |t|
    patient = Patient.find(params[:id])
    patient.destroy
    patient.to_json
  end

  post '/patients' do |t|
    patient = Patient.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      hypertension: params[:hypertension],
      diabetes: params[:diabetes]
    )
    patient.to_json
  end

  patch '/patients/:id' do |t|
    
  end
end
