module Ivapi
  class Client
    module Account

      # Get account information.
      #
      # Returns the hash of account information.
      def account_info
        params = { command: 'account_info' }
        get('/json.php', params)
      end

      # Get account orders.
      #
      # Returns the hash of account orders.
      def account_orders
        params = { command: 'account_orders' }
        get('/json.php', params)
      end

      # Get account services.
      #
      # Returns the hash of account services.
      def account_services
        params = { command: 'account_services' }
        get('/json.php', params)
      end

      # Get account credits.
      #
      # Returns the hash of account credits.
      def account_credits(count = 10)
        options = { command: 'account_credits', count: count }
        get('/json.php', params)
      end

      # Get account bonuses.
      #
      # Returns the hash of account bonuses.
      def account_bonuses(count = 10)
        params = { :command => 'account_bonuses', count: count }
        get('/json.php', params)
      end
    end
  end
end
