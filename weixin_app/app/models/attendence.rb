class Attendence < ActiveRecord::Base
  belongs_to :weixin_user

  START_TIME = 22
	END_TIME = 23

  def self.create_attendence(message,user)
    content = message.content
    # TODO 签到条件
    # 如果在6~8之间，那么，有“签到”两个字的，则符合返回条件
    # 在其他时间段，只有完全匹配“签到”两个字，才会返回签到失败

  	if condition
      unless /签到/ =~ content
        return ""
      end
    else
      if content == "签到"
        return "签到失败"
      else
        return ""
      end
    end

  	create({weixin_user_id:user.id,content: message.content,message_id:message.id})
  	if condition && (/签到/ =~ content)
  		return "签到成功"
  	else
  		return "签到失败"
  	end
  end

  private
  def self.condition
    hour = Time.now.hour
    min = Time.now.min
    if (hour >= START_TIME && hour < END_TIME) || (hour == END_TIME && min == 0)
      true
    else
      false
    end
  end
end
