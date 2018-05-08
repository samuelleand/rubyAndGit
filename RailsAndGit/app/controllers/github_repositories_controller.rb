class GithubRepositoriesController < ApplicationController
    require 'net/http'
    require 'json'
    require 'uri'
    
    # GET /repositories
    # GET /repositories.json
  
    def index
      if (params[:search]) && (params[:search].empty? == false)    
        urlformated = URI.encode(params[:search])
        uri = URI.parse("https://api.github.com/legacy/repos/search/#{urlformated}")
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = (uri.scheme == 'https')
        
  
        request = Net::HTTP::Get.new(uri.request_uri)
  
        res = http.request(request)
        response = JSON.parse(res.body)
  

        repository = response['repositories'].map {|rd|\
        GithubRepository.new( rd['owner'], rd['name'],\
        rd['description'], rd['language'], rd['url'])}  
        
        @github_repositories = repository
      else
        @github_repositories = nil
      end     
    end
  
  end
  