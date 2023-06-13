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

  post '/patients' do 
    patient = Patient.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      hypertension: params[:hypertension],
      diabetes: params[:diabetes]
    )
    patient.to_json
  end

  post '/bloodpressure' do 
    patient = Patient.find_by(params(:first_name), params(:last_name))
    patient_id = patient.id


    bloodpressure = BloodPressure.create(
      systolic: params(:systolic),
      diastolic: params(:diastolic),
      patient_id: patient_id
    )

    bloodpressure.to_json

  end

  patch '/patients/:id' do 
    patient = Patient.find(params[:id])
    patient.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      hypertension: params[:hypertension],
      diabetes: params[:diabetes]
    )
    patient.to_json
  end

  delete '/patients/:id' do 
    patient = Patient.find(params[:id])
    patient.destroy
    patient.to_json
  end

  get '/clinicians' do  
    clinicians = Clinician.all
    clinicians.to_json
  end

  get '/clinicians/:id' do 
    clinician = Clinician.find(params[:id])
    clinician.to_json
  end

  get '/clinics' do 
    clinics = Clinic.all,
    clinics.to_json
  end

  get '/clinics/:id' do 
    clinic = Clinic.find(params[:id])
    clinic.to_json
  end

  post '/clinicians' do 
    clinician = Clinician.create(
      name: params[:name],
      title: params[:title]
    )
    clinician.to_json
  end

  post '/clinics' do 
    clinic = Clinic.create(
      name: params[:name],
      location: params[:location],
      clinicians: params[:clinicans]
    )
    clinic.to_json
  end

end
