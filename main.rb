require "sinatra"
require "sinatra/activerecord"
require "bundler/setup"
require "rack-flash"
require "./models"

configure(:development){set :database, "sqlite3:maindatabase.sqlite3"}

set :sessions, true
use Rack::Flash, sweep: true

def current_user
	session[:user_id] ? User.find(session[:user_id]) : nil
end

get '/'	do
	@posts = Post.all	
	@nav = {"Signup" => "/signup","Login" => "/login"}
	erb :home
end	

post '/login' do
	my_user = User.find_by(email: params[:email])
	if my_user and my_user.password == params[:password]
		session[:user_id] = my_user.id
		flash[:notice] = "you have successfully logged in"
		redirect to('/members')
	else
		flash[:alert] = "Either your username or your password did not match with any account. Please re-enter or signup for a new account."
		redirect to('/login')
	end		
end

get '/login' do
	@nav = {"Home" => "/", "Signup" => "/signup"}
	erb :login
end

get '/logout' do
  session.clear
  redirect '/loggedout'
end

get '/loggedout' do
	erb :loggedout
end

get '/members' do
	@nav = {"Home" => "/", "logout" => "/logout"}
	#I get this_user from def this_user on session
	@user = User.find_by(id: current_user.id)
	@posts = @user.posts
	erb :members
end

get '/signup' do
	@nav = {"Home" => "/", "login" => "/login"}
	erb :signup
end

post '/signup' do
	User.create(email: params[:email], password: params[:password])
	redirect to('/profile')
end

get '/profile' do
	@nav = {"Home" => "/", "logout" => "/logout"}
	erb :profile
end

post '/profile' do
	@user = User.last
	@user.update(fname: params[:firstname], lname: params[:lastname], address: params[:address], city: params[:city], state: params[:state], zipcode: params[:zipcode], country: params[:country])
	session[:user_id] = @user.id
	User.find(session[:user_id])
	redirect to('/completedprofile')
end

get '/completedprofile' do
	@nav = {"Home" => "/", "logout" => "/logout"}
	@user = User.last
	erb :completedprofile
end

get '/user' do
	@user = User.last
	erb :show
end

get '/posts' do
	erb :posts
end

post '/posts' do
	Post.create(title: params[:title], posts: params[:posts], user_id: current_user.id)
	redirect to('/members')
end




