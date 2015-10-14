module AutoMessagesHelper
  def select_message_type
    AutoMessage::MESSAGE_TYPE.collect{|a|a.reverse}
  end

  def select_match_mode
    AutoMessage::MATCH_MODE.collect{|a|a.reverse}
  end
end
