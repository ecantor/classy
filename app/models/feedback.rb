class Feedback < ActiveRecord::Base
  attr_accessible :message, :source

  def send_sms(message)
    account_sid = "AC84038911e2045f80d19972f1aa6e5c6b"
    auth_token = "8a4e932b263e316391cfaee5df39dd3a"
    client = Twilio::REST::Client.new account_sid, auth_token

    from = "+16467620474" # Your Twilio number

    friends = {
        "+19174533751" => "EC",
        # "+1646-400-8497" => "SJ"
    }
    friends.each do |key, value|
      client.account.sms.messages.create(
          :from => from,
          :to => key,
          :body => "Hey #{value}, " + message
      )
      puts "Sent message to #{value}"
    end

  end

  def send_reply(caller, message)
    account_sid = "AC84038911e2045f80d19972f1aa6e5c6b"
    auth_token = "8a4e932b263e316391cfaee5df39dd3a"
    client = Twilio::REST::Client.new account_sid, auth_token

    from = "+16467620474" # Your Twilio number

    client.account.sms.messages.create(
        :from => from,
        :to => caller,
        :body => "Hey there, " + message + "was really great to have, thanks!"
    )
    puts "Sent message to #{value}"
  end

end
