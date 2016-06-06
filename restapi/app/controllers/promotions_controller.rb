class PromotionsController < ApplicationController

	skip_before_filter :verify_authenticity_token, :only => [:create, :update, :destroy]

	def all
		promotions = Promotion.latest
		render_success promotions
	end

	def create
		promotion = Promotion.new(promotion_params)
		if promotion.save
			render_success promotion
		else
			render_error
		end
	end

	def find
		begin
			promotion = Promotion.find params[:id]
			render_success promotion
		rescue
			render_error
		end
	end

	private
		def promotion_params
			params.permit(:title, :value, :where, :ending)
		end

end