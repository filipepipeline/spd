class Promotion < ActiveRecord::Base

	after_create :notify_redis

	def notify_redis
		$redis.publish("new_promotions", self.to_json)
	end

	scope :latest, -> {
		order(created_at: :DESC)
	}

end
