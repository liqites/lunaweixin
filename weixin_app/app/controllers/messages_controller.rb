class MessagesController < ApplicationController
	TOKEN=SETTING['auth']['token']

	before_action :check_signature

	def receive
		#收到信息时，记录下用户和签到时间
	end

	def index
		#验证token
		signature = params[:signature]
		timestamp = params[:timestamp]
		nonce = parmas[:nonce]
		tmparr = []
	end

	private
	def check_signature

	end
end
