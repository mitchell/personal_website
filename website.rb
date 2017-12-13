require 'sinatra/base'
require 'yaml'

# Website sinatra controller class
class Website < Sinatra::Base
  get '/' do
    @title = 'Home'
    slim :index, layout: :main
  end

  get '/projects' do
    @title = 'Projects'
    @projects = YAML.load_file 'data/projects.yml'
    slim :projects, layout: :main
  end

  get '/experience' do
    @title = 'Experience'
    slim :experience, layout: :main
  end

  get '/contact' do
    @title = 'Contact'
    slim :contact, layout: :main
  end

  not_found do
    @title = 'Page Not Found'
    slim :not_found, layout: :main
  end
end
