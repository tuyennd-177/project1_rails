class User < ApplicationRecord
  before_save :downcase_email

  validates :name, presence: true, length: { maximum: Settings.length.digit_20 }
  validates :email, presence: true,
                    length: { minimum: Settings.length.digit_10, maximum: Settings.length.digit_255 },
                    format: { with: Settings.VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: Settings.length.digit_6 }

  has_secure_password

  private

  def downcase_email
    email.downcase!
  end
end
