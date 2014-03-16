require 'spec_helper'

describe HelloService do
  describe '#find_hello_message' do
    it 'returns a hello message model' do
      expect(subject.find_hello_message).to be_a(HelloMessage)
    end
  end
end
