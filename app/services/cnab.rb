module Cnab
  class ReadService
    def initialize(upload_file)
      @upload_file = upload_file
    end
    
    def call
      @file = File.open(@upload_file, 'r')
      @file.each do |line|
        owner = line[48..61].strip
        store_str = line[62..81].strip
        store = Store.create_with(name: store_str, owner: owner).find_or_create_by(name: store_str, owner: owner)
        payment = Payment.find(line[0])
        negotiation = payment.negotiations.new
        negotiation.store_id   = store.id
        negotiation.date       = line[1..8].strftime('%Y/%m/%d')
        negotiation.price      = line[9..18].to_f / 100
        negotiation.cpf        = line[19..29]
        negotiation.card       = line[30..41]
        negotiation.time       = line[42..47].strftime('%H:%M')
        negotiation.save!
      end
    end
  end
end
