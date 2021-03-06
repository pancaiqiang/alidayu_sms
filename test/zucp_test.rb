require_relative './test_helper'
class ZucpTest < Minitest::Test

  describe 'Sms::alidayu test' do

    before do
      @options = {phone: "13262902619", content: Time.now.to_i.to_s, sn: "SDK-WSS-010-05925", pwd: "123456", suffix: '[test]'}
    end

    it 'SmsSender singleSend' do
      obj = AlidayuSmsSender.new(@options)
      assert_instance_of Sms::Alidayu, obj.source

      result = obj.batchSendSms(@options[:phone])
      assert result.to_i > 0
    end
    
  end

end
