require 'etcd/etcvault/version'
require 'etcd'

module Etcd
  module Etcvault
    module NodeExtension
      attr_reader :etcvault, :etcvault_error

      def initialize(opts = {})
        super opts
        @etcvault = opts['_etcvault']
        @etcvault_error = opts['_etcvault_error']
      end
    end

    module ClientExtension
      def etcvault_keys
        api_execute('/_etcvault/keys', :get).body.each_line.map(&:chomp)
      end
    end
  end
end

Etcd::Node.__send__(:prepend, Etcd::Etcvault::NodeExtension)
Etcd::Client.__send__(:prepend, Etcd::Etcvault::ClientExtension)
