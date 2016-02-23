class Enums
  def self.any?(collection, condition)
    collection.each do |n|
      return true if condition.call(n)
    end
    false
  end

  def self.select(collection, condition)
  end

  def self.reduce(collection, condition)
  end

  def self.reject(collection, condition)
  end
end
