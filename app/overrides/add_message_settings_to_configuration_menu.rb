Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_configuration',
  name: 'messages_admin_configurations_menu',
  insert_bottom: '#sidebar-configuration',
  partial: 'spree/admin/shared/message_settings_config_menu'
)