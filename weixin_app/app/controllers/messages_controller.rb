class MessagesController < ApplicationController
	TOKEN=SETTING['auth']['token']
	skip_before_filter :authenticate_user!, only: [:receive,:hello,:connect]

	def receive
		#收到信息时，记录下用户和签到时间
		msgdata =  params[:xml]
		msg = ""
		ActiveRecord::Base.transaction do 
		begin
			
			#创建发送用户
			from_wx_user = WeixinUser.find_by_openid(msgdata[:FromUserName])
			if from_wx_user.nil?
				from_wx_user = WeixinUser.create({openid:msgdata[:FromUserName]})
			end

			#创建公众号用户
			to_wx_user = WeixinUser.find_by_name(msgdata[:ToUserName])
			if to_wx_user.nil?
				to_wx_user = WeixinUser.create({name:msgdata[:ToUserName]})
			end

			#创建消息
			message = Message.create({to_user:msgdata[:ToUserName],from_user:msgdata[:FromUserName],create_time:Time.new(msgdata[:CreateTime]),msg_type:msgdata[:MsgType],content:msgdata[:Content],msg_id:msgdata[:MsgId]})

			#签到逻辑
			#-------------
			msg = Attendence.create_attendence(message,from_wx_user)
			#-------------
			
		rescue => e
			puts e.message
			puts e.backtrace
			msg = ""
		end
		end

		render json: {result:msg}
	end

	def hello
		version = "0.0.2"
		render json: version
	end

	def connect
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
