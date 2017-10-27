require 'gmail'

class GmailWrapper
    def initialize(username, pass)
        @client = Gmail.connect(username, pass)
    end

    def inbox
        @client.inbox
    end
    
    def feed_emails
      inbox.find(:unread, subject: "feed")
    end

    def unread_feed_email?
      feed_emails.count > 0
    end

    def mark_feed_emails_as_read
      feed_emails.each(:read!)
    end
end

