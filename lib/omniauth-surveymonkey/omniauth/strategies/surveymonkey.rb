require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Surveymonkey < OmniAuth::Strategies::OAuth2
      DEFAULT_SCOPE = [
        'users_read'
      ]

      option :name, :surveymonkey
      option :client_options, {
        site: 'https://www.surveymonkey.com/',
        authorize_url: '/oauth/authorize'
      }
      option :authorize_options, [:scope]
      uid do
        raw_info['id']
      end
      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('https://graph.microsoft.com/v1.0/me').parsed
      end

      def authorize_params
        super.tap do |params|
          ['display', 'score', 'auth_type'].each do |v|
            if request.params[v]
              params[v.to_sym] = request.params[v]
            end
          end

          params[:scope] = (DEFAULT_SCOPE + Array(params[:scope])).join(' ')
        end
      end

      def callback_url
        options[:redirect_uri] || (full_host + script_name + callback_path)
      end

    end
  end
end