class Services

  def self.user_service
    @@services ||= proxy_services
    @@services[:user_service]
  end

  def self.proxy_services
    service = UserService.new
    path    = './services/user_service/interface.json'
    client  = Barrister::Rails::Client.new(service, path)

    { user_service: client.UserService }
  end

end
