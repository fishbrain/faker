# frozen_string_literal: true

module Faker
  class Fishbrain
    class Equipment < Base
      flexible :equipment

      OPTION_VALUES = %w[aftm_rating action buckets_color buoyancie capacity casting_weight color color_material density
                         description design diameter gear_ratio handle_position head_length head_weight led_style length
                         line_break_strength line_rating lure_boxe model orientation pieces power quantity_in_pack scent
                         seat size sonar style swim_depth value weight]

      class << self
        ##
        # Produces an angling-related brand
        #
        # @return [String]
        #
        # @example
        #   Faker::Fishbrain::Equipment.brand
        #    #=> "Abu Garcia"
        #
        # @faker.version next
        def brand
          fetch('fishbrain.equipment.brands')
        end

        ##
        # Produces an angling-related equipment category
        #
        # @return [String]
        #
        # @example
        #   Faker::Fishbrain::Equipment.category
        #    #=> "Baits & Lures"
        #
        # @faker.version next
        def category
          fetch('fishbrain.equipment.categories')
        end

        ##
        # Produces an angling-related equipment prototype
        #
        # @return [String]
        #
        # @example
        #   Faker::Fishbrain::Equipment.prototype
        #    #=> "Attractant"
        #
        # @faker.version next
        def prototype
          fetch('fishbrain.equipment.prototypes')
        end

        ##
        # Produces an angling-related equipment option_type
        #
        # @return [String]
        #
        # @example
        #   Faker::Fishbrain::Equipment.option_type
        #    #=> "Color"
        #
        # @faker.version next
        def option_type
          fetch('fishbrain.equipment.option_types')
        end

        ##
        # Produces an angling-related equipment option_value
        #
        # @return [String]
        #
        # @example
        #   Faker::Fishbrain::Equipment.option_value
        #    #=> "Alewife"
        #
        # @faker.version next
        def option_value
          fetch("fishbrain.equipment.#{OPTION_VALUES.sample}")
        end

        # Option values, for each option_type
        OPTION_VALUES.each do |option_value|
          define_method(option_value.to_sym) do
            fetch("fishbrain.equipment.#{option_value}")
          end
        end
      end
    end
  end
end
