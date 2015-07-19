class MessagesController < ApplicationController
	TOKEN=SETTING['auth']['token']

	def receive
		#收到信息时，记录下用户和签到时间
		xml_data =  request.raw_post
		render json: {result: 'success'}
	end

	def hello
		render json: 'hello,world'
	end

	def index
		puts TOKEN
		#验证token
		if check_signature
			render json: params[:echostr]
		else
			render json: params[:echostr]+'sa'
		end
	end

	private
	def check_signature
		signature = params[:signature]
		timestamp = params[:timestamp]
		nonce = params[:nonce]
		tmparr = [signature,timestamp,nonce]
		tmpstr = tmparr.sort.join
		tmpstr = Digest::SHA1.hexdigest(tmpstr)
		if tmpstr == signature
			return true
		else
			return false
		end
	end
end
