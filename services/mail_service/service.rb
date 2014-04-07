module Services

  class MailService

    def initialize() end

    def send_email(from_email, to_email, subject, body)
      puts "just sent an email to #{to_email} from #{from_email}"
      True
    end

  private

    def guard
      ActiveRecord::Base.connection_pool.with_connection do
        yield
      end
    end

  end

end
