

class SymphoniesApp < Sinatra::Base

  get '/composers' do
    if params[:age]
      @composers = Composer.where(age: params[:age])
      @cities = @composers.distinct.order(:city).pluck(:city)
    elsif params[:sort]
      if params[:sort] == "name"
        @composers = Composer.order(:surname)
      elsif params[:sort] == "dod"
        @composers = Composer.order(:dod)
      elsif params[:sort] == "dob"
        @composers = Composer.order(:dob)
      end
      @cities = Composer.distinct.order(:city).pluck(:city)
    else
      @composers = Composer.order(:dob)
      @cities = Composer.distinct.order(:city).pluck(:city)
    end
    erb :"composers/index"
  end

  get '/composers/new' do
    erb :"composers/new"
  end

  post '/composers' do
    Composer.create(params[:composer])
    redirect '/composers'
  end

end
