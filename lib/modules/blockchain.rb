module Blockchain
    def self.transaction(data)
        trans = []
        data = data.each do |data| 
            trans.push({data: data, time_stamp: Time.now})
        end
        puts trans
    end
end

Blockchain.transaction([
    from: {
        id: 1,
        user_name: '@username',
        routing_number: 'JAD8HS7U56FG34W3E',
        platform: []
    },
    to: {
        id: 2,
        user_name: '@username',
        routing_number: 'JAD8HS7U56FG34W3E',
        platform: []
    }
    transaction: {
        amount: 4.518763826
    }
])