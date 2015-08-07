class AutoMessage < ActiveRecord::Base
  MATCH_MODE=[[0,'完全'],[1,'部分']]
  MESSAGE_TYPE=[[0,'关键词消息'],[1,'关注消息'],[2,'菜单消息']]

  belongs_to :offical_account
  validates_presence_of :match_mode, :message_type,:keyword,:content
  validates :uniquness_follow_message

  def match_mode_text
    MATCH_MODE.assoc(self.match_mode)[1]
  end

  def message_type_text
    MESSAGE_TYPE.assoc(self.message_type)[1]
  end

  class << self
    def message_type_select
      MESSAGE_TYPE.collect{|a|a.reverse}
    end

    def match_mode_select
      MATCH_MODE.collect{|a|a.reverse}
    end
  end
end
