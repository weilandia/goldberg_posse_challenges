class Vigenere
  attr_reader :key, :input_text, :alphabet

  def initialize(argv)
    @key = argv[0].split('')
    @input_text = argv[1..-1].join(' ').chars
  end

  def alphabet
  [('a'..'z'), ('A'..'Z'), ".", " "].map { |i| i.to_a }.flatten
  end

  def offset
    key.map { |l| alphabet.index(l) + 1 }
  end

  def translation
    input_text.map { |l| alphabet.index(l) }
  end

  def rotation
   translation.zip(offset.cycle).map { |pair| pair.inject(:+) }
  end

  def encrypt
    p rotation.map { |n| alphabet[n] }.join
  end
end
