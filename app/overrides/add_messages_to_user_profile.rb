Deface::Override.new(
  virtual_path: 'spree/users/show',
  name: 'add_messages_to_user_profile',
  replace_contents: 'div#my_messages',
  partial: 'spree/shared/user_messages',
  :original => '5eb8253cdf65f44314687972198c43eccc6b6d42',
  disabled: false
)