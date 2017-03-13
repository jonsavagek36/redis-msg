class Message < ApplicationRecord

  def self.send(msg)
    $redis.rpush('msgs', msg)
  end

  def self.receive
    $redis.lrange('msgs', 0, -1)
  end

end
