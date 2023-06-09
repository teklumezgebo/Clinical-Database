class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/patients" do
    
  end
  
  get "/patients/:id" do
    patient = Patient.find(params[:id])
    patient.to_json
  end

end
