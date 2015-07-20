class Attendence < ActiveRecord::Base
  belongs_to :weixin_user

  START_TIME = 6
	END_TIME = 8

  def self.create_attendence(message,user)
  	hour = Time.now.hour
  	min = Time.now.min
  	create({weixin_user_id:user.id,content: message.content,message_id:message.id})
  	if (hour >= START_TIME && hour < END_TIME) || (hour == END_TIME && min == 0)
  		return "签到成功"
  	else
  		return "签到失败"
  	end
  end
end
