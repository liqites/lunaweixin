class AutoMessage < ActiveRecord::Base
  MATCH_MODE=[[0,'完全'],[1,'部分']]
  MESSAGE_TYPE=[[0,'关键词消息'],[1,'关注消息'],[2,'菜单消息']]

  belongs_to :offical_account

  validates_uniqueness_of :message_type, condition: -> {where(message_type:1)}

  def self.message_type_select
    MESSAGE_TYPE.collect{|a|a.reverse}
  end

  def self.match_mode_select
    MATCH_MODE.collect{|a|a.reverse}
  end
end
