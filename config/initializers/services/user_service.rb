class UserServiceClient

  def self.instance
    @@instance ||= create
    @@instance.UserService
  end

  def self.create
    Barrister::Rails::Client.new Services::UserService.new, './services/user_service/user_service.json'
  end
end
