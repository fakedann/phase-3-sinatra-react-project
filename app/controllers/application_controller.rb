class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/employees' do
    empls = Employee.all.order(created_at: :asc)
    empls.to_json
  end

  post '/employees' do 
    empl = Employee.create(
      name: params[:name],
      dob: params[:dob],
      address: params[:address],
      phone: params[:phone],
      position: params[:position]
    )
    empl.to_json
  end

  get '/destroy' do
    msj = Employee.destroy_all
    msj.to_json
  end

end
