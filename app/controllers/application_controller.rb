require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/patients' do
    patients = Patient.all
    patients.to_json
  end
  
  get "/patients/:first_name/:last_name" do
    patient = Patient.find_by(first_name: params[:first_name], last_name: params[:last_name])
    patient.to_json
  end

  get "/patientbp/:id" do 
    patient = Patient.find(params[:id])
    patient.blood_pressures.to_json
  end

  get "/patientbs" do 
    patient = Patient.find(params[:id])
    patient.blood_sugars.to_json
  end

  get '/clinicians' do  
    clinicians = Clinician.all
    clinicians.to_json
  end

  get '/clinics' do 
    clinics = Clinic.all
    clinics.to_json
  end

  get '/clinics/:id' do 
    clinic = Clinic.find(params[:id])
    clinic.to_json
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
    clinic = Clinic.find_by(name: params[:clinic]).object_id
    
    clinician = Clinician.create(
      name: params[:name],
      title: params[:title],
      clinic_id: clinic
    )
    clinician.to_json
  end

  post '/clinics' do
     
    clinic = Clinic.create(
      name: params[:name],
      location: params[:location]
    )
    clinic.to_json
  end

  post '/patientstats' do 
    patient = Patient.find_by(first_name: params[:first_name], last_name: params[:last_name])
    patient_id = patient.id
    if params[:systolic].present? && params[:diastolic].present?
      blood_pressure = BloodPressure.create(
        systolic: params[:systolic],
        diastolic: params[:diastolic],
        patient_id: patient_id
      )
    end

    if params[:blood_sugar].present?
      blood_sugar = BloodSugar.create(
        blood_sugar: params[:blood_sugar],
        patient_id: patient_id
      )
    end

  end

  patch '/patients' do 
    patient = Patient.find_by(first_name: params[:first_name], last_name: params[:last_name])
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

end
