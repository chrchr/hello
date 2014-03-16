require 'spec_helper'

describe HelloMessagesController do
  let(:hello_service) do
    service = double
    allow(service)
      .to receive(:find_hello_message)
           .and_return(hello_message)
    service
  end

  let(:hello_message) do
    double
  end

  before(:each) do
    controller.hello_service(service: hello_service)
    get :show
  end

  describe 'GET /hello' do
    it 'gets the index' do
      expect(response).to be_success
    end

    it 'assigns the right hello message' do
      expect(assigns(:hello)).to be(hello_message)
    end
  end
end
