require "securerandom"

def secure_token
  token_file = Rails.root.join(".secretTokenUAL")
  if File.exist?(token_file)
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

DMPonline4::Application.config.secret_token = secure_token
