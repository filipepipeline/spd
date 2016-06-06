if Rails.configuration.redis[:password].blank?
	$redis = Redis.new(:host => Rails.configuration.redis[:host])
else
	$redis = Redis.new(:host => Rails.configuration.redis[:host], :password => Rails.configuration.redis[:password])
end