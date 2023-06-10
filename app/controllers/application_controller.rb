class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/patients' do
    patients = Patient.all 
    patients.to_json
  end
  
  get "/patients/:id" do
    patient = Patient.find(params[:id])
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
    patient = Patient.find(params[:id])
    patient.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      hypertension: params[:hypertension],
      diabetes: params[:diabetes]
    )
    patient.to_json
  end

  delete '/patients/:id' do |t|
    patient = Patient.find(params[:id])
    patient.destroy
    patient.to_json
  end

  get '/clinicians' do |t| 
    clinicians = Clinicians.all
    clinicians.to_json
  end

  get '/clinicians/:id' do |t|
    clinician = Clinician.find(params[:id])
    clinician.to_json
  end

  get '/clinics' do |t|
    clinics = Clinic.all
    clinics.to_json
  end

  get '/clinics/:id' do |t|
    clinic = Clinic.find(params[:id])
    clinic.to_json
  end

end
