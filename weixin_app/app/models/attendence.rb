class Attendence < ActiveRecord::Base
  belongs_to :weixin_user

  def self.create_attendence(message,user)
  	hour = Time.now.hour
  	min = Time.now.min
  	create({weixin_user_id:user.id,message: message.content})
  	if (hour >= 6 && hour < 8) || (hour == 8 && min == 0)
  		return "签到成功"
  	else
  		return "签到失败"
  	end
  end
end
