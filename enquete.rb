# coding: utf-8
require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'logger'
require 'ltsv-logger'

LTSV::Logger.open(File.join('.', 'sinatra01.log'));

get '/' do
  erb :index
end

post '/' do
  ltsv = {
           sex: params[:sex], 
           age: params[:age], 
           question2: params[:question2], 
           question3: params[:question3], 
           question4: params[:question4], 
           question5: params[:question5]
         }
  LTSV.logger.info ltsv
  redirect '/'
end
