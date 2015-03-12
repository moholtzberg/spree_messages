Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'messages_admin_configurations_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/messages_sidebar_menu'
)