class AnswerAutoMessage < AutoMessage
	default_scope {where(message_type: 0)}

	belongs_to :offical_account
end