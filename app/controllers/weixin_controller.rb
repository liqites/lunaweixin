class WeixinController < ApplicationController
  TOKEN=SETTING['auth']['token']
  def message

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
