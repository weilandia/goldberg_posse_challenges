class Enums
  def self.any?(collection, condition)
    collection.each do |n|
      return true if condition.call(n)
    end
    false
  end

  def self.select(collection, condition)
    result = []
    collection.each do |n|
      result << n if condition.call(n)
    end
    result
  end

  def self.reduce(collection, condition)
    if condition.class == Proc
      reduce_with_proc(collection, condition)
    else
      reduce_with_symbol(collection, condition)
    end
  end

  def self.reject(collection, condition)
  end

  def self.reduce_with_proc(collection, condition)
    result = []
    collection.each do |n|
      result << condition.call(n)
    end
    result
  end

  def self.reduce_with_symbol(collection, condition)
    result = collection[0]
    collection.shift
    collection.each do |n|
      m = result.method(condition.to_s)
      result = m.call(n)
    end
    result
  end
end
