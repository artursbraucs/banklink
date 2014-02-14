require 'banklink/version'

# require "rails"
require "base64"
require "active_support/dependencies"

require 'net/http'
require 'net/https'
require 'uri'

require 'digest'
require 'digest/md5'
require 'openssl'

require 'cgi'

require 'banklink/banklink'
require 'banklink/base'
require 'banklink/helper'
require 'banklink/swedbank'
require 'banklink/notification'

%w{ models controllers helpers }.each do |dir|
  path = File.join(File.dirname(__FILE__), 'app', dir)
  $LOAD_PATH << path
  # ActiveSupport::Dependencies.load_paths << path
  # ActiveSupport::Dependencies.load_once_paths.delete(path)
end
