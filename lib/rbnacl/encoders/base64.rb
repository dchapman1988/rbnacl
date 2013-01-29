module Crypto
  module Encoders
    # Base64 encoding provider
    #
    # Accessable as Crypto::Encoder[:base64]
    #
    class Base64 < Crypto::Encoder
      register :base64

      # Base64 encodes a message
      #
      # @param [String] bytes The bytes to encode
      #
      # @return [String] Clunky old base64
      def encode(bytes)
        [bytes].pack("m0")
      end

      # Hex decodes a message
      #
      # @param [String] base64 string to decode.
      #
      # @return [String] crisp and clean bytes
      def decode(base64)
        base64.unpack("m").first
      end
    end
  end
end