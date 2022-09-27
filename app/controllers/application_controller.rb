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

  get '/employees/:name/:restid' do
    empl = Employee.find_employee(params[:name], params[:restid])
    empl.to_json
  end

  post '/employees' do 
    empl = Employee.create(
      name: params[:name],
      dob: params[:dob],
      address: params[:address],
      phone: params[:phone],
      position: params[:position],
      restaurant_id: params[:restaurant_id]
    )
    empl.to_json
  end

  patch '/employees/:name/:restid' do
    empls = Employee.find_employee(params[:name], params[:restid])
    field = params[:field]
    empls.send("#{field}=",params[:body])
    empls.save
    empls.to_json
  end

  get '/restaurants' do
    empls = Restaurant.all.order(created_at: :asc)
    empls.to_json
  end

  get '/restaurant/:id' do
    rest = Restaurant.find_restaurant(params[:id])
    rest.to_json
  end

  get '/restaurant/:id/employees' do
    rest = Restaurant.find_restaurant(params[:id])
    empl = rest.employees
    empl.to_json
  end

  post '/restaurants' do 
    rest = Restaurant.create(
      name: params[:name],
      address: params[:address],
      phone: params[:phone],
      type_of_food: params[:foodType]
    )
    rest.to_json
  end


end
