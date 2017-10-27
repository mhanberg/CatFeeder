require 'gmail'

class GmailWrapper
    def initialize(username, pass)
        @client = Gmail.connect(username, pass)
    end

    def inbox
        @client.inbox
    end
end

USERNAME = "willowsfeeder@gmail.com"
PASS = "cdkwuenubgemcwfv"

gmail = GmailWrapper.new(USERNAME, PASS)

puts "Inbox count: #{gmail.inbox.count}"
