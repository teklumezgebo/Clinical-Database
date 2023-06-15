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

  get "/patientbp" do 
    patient = Patient.find_by(first_name: params(:first_name), last_name: params(:last_name))
    patient.blood_pressures
  end

  get "/patientbs" do 
    patient = Patient.find_by(first_name: params(:first_name), last_name: params(:last_name))
    patient.blood_sugars
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

  post '/clinicians' do 
    # clinic = Clinic.find_by(name: params[:clinic])
    
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
      clinicians: 0
    )
    clinic.to_json
  end

  post '/patientstats' do 
    patient = Patient.find_by(first_name: params(:first_name), last_name: params(:last_name))
    patient_id = patient.id


    blood_pressure = BloodPressure.create(
      systolic: params(:systolic),
      diastolic: params(:diastolic),
      patient_id: patient_id
    )

    blood_sugar = BloodSugar.create(
      blood_sugar: params(:blood_sugar),
      patient_id: patient_id
    )

    blood_pressure.to_json
    blood_sugar.to_json

  end

  patch '/patients' do 
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

end
