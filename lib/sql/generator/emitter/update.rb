# encoding: utf-8

module SQL
  module Generator
    class Emitter

      # Update statement emitter
      class Update < self
        handle :update

        children :identifier, :assignment, :where

      private

        # @see Emitter#dispatch
        #
        # @return [undefined]
        #
        # @api private
        def dispatch
          write(K_UPDATE, WS)
          visit(identifier)
          write(WS, K_SET, WS)
          visit(assignment)
          write_node(where, K_WHERE)
        end

      end # Update
    end # Emitter
  end # Generator
end # SQL
