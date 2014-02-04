class User < ActiveRecord::Base

   has_secure_password

    before_save { self.email = email.downcase }
    before_create :create_remember_token
    before_create :create_remember_token   #before create is a callback  and then run method
    after_create  :registration_confirmation

    def registration_confirmation
      UserMailer.registration_confirmation(self).deliver
    end


    validates :name, presence: true, length: {maximum: 50}
    # validates :name, presence: true, message: "Dont leave blank"


    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format:{with: VALID_EMAIL_REGEX }, uniqueness: true

    validates :password, length:{minimum: 6}
    validates :dob, presence: true
    validates :user_name, presence: true, uniqueness: true


    def send_password_reset
      generate_token(:password_reset_token)
      self.password_reset_sent_at = Time.zone.now
      UserMailer.password_reset(self).deliver
    end

    def generate_token(column)
      begin
        self[column] = SecureRandom.urlsafe_base64
      end while User.exists?(column => self[column])
    end


    def User.new_remember_token
        SecureRandom.urlsafe_base64
    end

    def User.encrypt(token)
        Digest::SHA1.hexdigest(token.to_s)
    end

    private

        def create_remember_token
          self.remember_token = User.encrypt(User.new_remember_token)
        end
end
