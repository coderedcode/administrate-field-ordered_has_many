require "administrate/field/base"
require "rails"

class OrderedHasMany < Administrate::Field::Base
  def self.permitted_attribute(attr, _options = nil)
    {attr => []}
  end

  def to_s
    return "-" unless data
    associated_class.find(data).map do |associated_instance|
      associated_instance.try(:name) || associated_instance.to_s
    end.join(", ")
  end

  def association_name
    self.attribute.match(/ordered_(.+)_ids/)[1].humanize.pluralize
  end

  def associated_class
    class_name = self.attribute.match(/ordered_(.+)_ids/)[1].camelcase
    begin
      class_name.constantize
    rescue
      raise "#{class_name} is not a valid association!"
    end
  end

  def selectable_options
    associated_class.all
  end

  def values
    return [] unless data
    if data.is_a?(Array) 
      data
    else 
      raise "#{self.attribute} must be an array of #{associated_class} ID's, instead it was #{data.inspect}"
    end
  end

end
