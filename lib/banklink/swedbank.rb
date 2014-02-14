module Swedbank

  # Raw X509 certificate of the bank, string format.
  mattr_accessor :bank_certificate
  # RSA public key of the bank, taken from the X509 certificate of the bank. OpenSSL container.
  def self.get_bank_public_key
    cert = self.bank_certificate
    OpenSSL::X509::Certificate.new(cert.gsub(/  /, '')).public_key
  end

  mattr_accessor :private_key
  # Our RSA private key. OpenSSL container.
  def self.get_private_key
    private_key = self.private_key
    OpenSSL::PKey::RSA.new(private_key.gsub(/  /, ''))
  end

  mattr_accessor :service_url
  def self.service_url
    self.service_url
  end

  def self.notification(post)
    Notification.new(post)
  end

end
