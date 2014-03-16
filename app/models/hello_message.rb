#
class HelloMessage
  def message
    Rails.configuration.hello_message
  end
end
