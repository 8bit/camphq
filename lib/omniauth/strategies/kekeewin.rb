module OmniAuth
  module Strategies
    class Kekeewin < OmniAuth::Strategies::OAuth2
      option :name, :kekeewin

      option :client_options, {
        site: "http://kekeewin.scouting.io",
        authorize_path: "/oauth/authorize"
      }

      uid do
        raw_info["id"]
      end

      info do
        {email: raw_info["email"]}
      end

      def raw_info
        @raw_info ||= access_token.get('/api/me.json').parsed
      end
    end
  end
end