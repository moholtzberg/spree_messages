Deface::Override.new(
  virtual_path: 'spree/users',
  name: 'messages_user_profile',
  replace_contents: '#my_messages',
  partial: 'spree/shared/user_messages'
)