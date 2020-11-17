module Auth::Jwt
    PRIVATE_KEY = RbNaCl::Signatures::Ed25519::SigningKey.new('abcdefghijklmnopqrstuvwxyzABCDEF')
    PUBLIC_KEY = PRIVATE_KEY.verify_key

    def self.encode(payload)
        token = JWT.encode payload, PRIVATE_KEY, 'ED25519'
        time = Time.now + 6.hours.to_i
        Token.create(status: true, key: token, exp: time)
        return token
    end

    def self.decode(token)
        exp = Time.now.to_i - 100
        leeway = 30
        begin
            decoded_token = JWT.decode token, PUBLIC_KEY, true, {exp_leeway: leeway, algorithm: 'ED25519' }
            return {data: decoded_token, sessions: Token.all}
        rescue JWT::ExpiredSignature
            return "your session has expired please Authenticate again"
        rescue JWT::InvalidAudError
            return "Invalid Token 'This token has been tampered with'"
        end
    end

end