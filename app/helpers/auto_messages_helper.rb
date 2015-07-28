module AutoMessagesHelper
  def select_message_type
    AutoMessage.message_type_select
  end

  def select_match_mode
    AutoMessage.match_mode_select
  end
end
