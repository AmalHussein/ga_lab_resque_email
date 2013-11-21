Dir[Rails.root + "app/jobs/*.rb"].each do |file| 
require file
end
Resque.redis = Redis.new  #Defaults to localhost