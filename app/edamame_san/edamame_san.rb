#!/usr/bin/env ruby
$: << File.dirname(__FILE__)+'/../../lib'
require 'rubygems'
require 'sinatra/base'
require 'haml'
require 'json'
require 'edamame'

#
# run with
#   shotgun --port=11211 --server=thin ./config.ru
#
class EdamameSan < Sinatra::Base
  # Server setup
  helpers do include Rack::Utils ; alias_method :h, :escape_html ; end
  set :sessions,           true
  set :static,             true
  set :logging,            true
  set :dump_errors,        true
  set :root,               File.dirname(__FILE__)
  #configure :production do Fiveruns::Dash::Sinatra.start(@@config[:fiveruns_key]) end

  # configure do
  #   @@config = YAML.load_file(ENV['HOME']+"/.monkeyshines") rescue nil || {}
  #   Log.info "Loaded config file with #{@@config.length} things"
  # end

  before do
    next if request.path_info =~ /ping$/
    @store = Edamame::Store::TyrantStore.new ':11219'
  end

  #
  # Front Page
  #
  get "/" do
    haml :root
  end

  get "/load" do
    @dest_store = Edamame::Store::TyrantStore.new ':11212'
    iter = 0
    @store.each_as(Wuclan::Domains::Twitter::Scrape::TwitterSearchJob) do |key, obj|
      edamame_job = Edamame::Job.new(
        obj.priority, 'twitter_search_scrape', 120,
        1 / obj.prev_rate.to_f,
        Time.now, true, obj.prev_items.to_i/1000, 0,
        obj# .to_hash.to_yaml
        )
      @dest_store.set edamame_job.body[:query_term], edamame_job.body
      break if ((iter+=1) > 10)
    end
    haml :root
  end

  puts "hi!"

  # private
  #
  # def inspection *args
  #   str = args.map{|thing| thing.inspect }.join("\n")
  #   Log.info str
  #   '<pre>'+h(str)+'</pre>'
  # end
end
