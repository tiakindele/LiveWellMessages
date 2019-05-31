class Message < ApplicationRecord
    has_and_belongs_to_many :tags

    after_create do
        message = Message.find_by(id: self.id)
        hashtags = self.message.scan(/#\w+/)
        hashtags.map do |hashtag|
            tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
            message.tags << tag
        end
    end

    before_update do
        message = Message.find_by(id: self.id)
        message.tags.clear                      # reset message tags
        hashtags = self.message.scan(/#\w+/)
        hashtags.map do |hashtag|
            tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
            message.tags << tag
        end
    end

end
