

class SymphoniesApp < Sinatra::Base

  get '/composers' do
    if params[:age]
      @composers = Composer.get_by_age(params[:age])
    elsif params[:id]
      @composers = Composer.get_by_id(params[:id])
    else
      @composers = Composer.all
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
