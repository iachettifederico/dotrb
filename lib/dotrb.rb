require "dotrb/version"
require "ostruct"

class Dotrb
  attr_reader :__obj__

  def self.load(file="./config.rb")
    new(file)
  end

  def []=(key, value)
    super(key.to_sym, value)
  end

  def to_s
    "<#{self.class} #{self.__obj__.to_h}>"
  end
  alias :inspect :to_s

  def method_missing(*args, &block)
    self.__obj__.send(*args, &block)
  end

  def config
    self
  end

  private
  def initialize(file)
    @__obj__ = OpenStruct.new
    @code = File.read(file)
    eval(@code)
  end
end
