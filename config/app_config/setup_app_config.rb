class MacInfo
  @@mac_info = YAML.load_file('config/app_config/mac_info.yml')

  @@mac_info.each do |k,v|
    self.class.send(:define_method, k.to_sym) { v }
  end
end
