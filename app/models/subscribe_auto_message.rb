class SubscribeAutoMessage < AutoMessage
	default_scope {where message_type: 1}

	belongs_to :offical_account
end