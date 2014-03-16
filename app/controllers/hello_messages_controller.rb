#
class HelloMessagesController < ApplicationController
  respond_to :html, :json

  def show
    @hello = hello_service.find_hello_message
  end

  def hello_service(service: HelloService.new)
    @service ||= service
  end
end
