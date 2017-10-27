require 'gmail'
require 'pry'

class GmailWrapper
    def initialize(username, pass)
        @client = Gmail.connect(username, pass)
    end

    def inbox
        @client.inbox
    end

    def right_email?
      inbox.find(:unread, subject: "feed").count > 0
    end
end

