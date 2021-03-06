require 'time'

module Arena
  module Creatable

    # Time when the object was created on Arena
    #
    # @return [Time]
    def created_at
      @created_at ||= Time.parse(@attrs['created_at']) if created?
    end

    # Time when the object was last updated on Arena
    #
    # @return [Time]
    def updated_at
      @updated_at ||= Time.parse(@attrs['updated_at']) if updated?
    end

  private

    def created?
      !@attrs['created_at'].nil?
    end

    def updated?
      !@attrs['updated_at'].nil?
    end

  end
end
