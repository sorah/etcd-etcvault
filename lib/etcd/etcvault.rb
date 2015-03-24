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
  end
end

Etcd::Node.__send__(:prepend, Etcd::Etcvault::NodeExtension)
