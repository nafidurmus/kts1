class HomepageController < ApplicationController

	def index
		require 'uri'
		require 'net/http'
		require 'json'

		url = URI("https://api.hurriyet.com.tr/v1/articles?$top=8")

		http = Net::HTTP.new(url.host, url.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		request = Net::HTTP::Get.new(url)
		request["apikey"] = 'kendi apinizi yazınız'
		request["accept"] = 'application/json'
		

		@response = http.request(request)
		@hurriyet = JSON.parse(@response.body)
  	end
end
