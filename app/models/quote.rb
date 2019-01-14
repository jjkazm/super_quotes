class Quote < ApplicationRecord


  def introduction
    if self.author.empty? && self.source.empty?
      "Anonymous"
    elsif self.author.empty?
      "Someone in #{self.source}"
    elsif self.source.empty?
      self.author
    else
      "#{self.author} in #{self.source}"
    end
  end
end
