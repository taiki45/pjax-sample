# -*- coding: utf-8 -*-
require 'sinatra'
require 'coffee-script'
require 'sass'

helpers do
  def pjax?
    env['HTTP_X_PJAX']
  end

  def time
    Time.now
  end
end

get '/' do
  erb :index, :layout => !pjax?
end

get '/about' do
  erb :about, :layout => !pjax?
end

get '/app.js' do
  coffee :app
end

get '/style.css' do
  scss :style
end

