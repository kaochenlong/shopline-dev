class YoubikeJob
  include Backburner::Performable

  def self.get_data
    result = Youbike::BikeInfo.call(keyword: '南港')
    puts result
  end

  handle_static_asynchronously :get_data, queue: 'gogogo'
end
