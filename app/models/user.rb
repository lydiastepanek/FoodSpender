class User < ActiveRecord::Base
  validates :email, presence: true
  attr_reader :password
  before_validation :ensure_session_token

  def self.find_by_credentials(email, password)
    user = User.find_by(email)
    return nil unless user
    return user if user.is_password(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
    self.save
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end


  def reset_session_token!
    self.update_attribute(:session_token, SecureRandom::urlsafe_base64(16))
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end
