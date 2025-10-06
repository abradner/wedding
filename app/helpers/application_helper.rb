# frozen_string_literal: true

module ApplicationHelper
  def flash_class(key)
    base = "mb-4 rounded-md border p-4"
    case key
    when :notice then "#{base} border-blue-200 bg-blue-50 text-blue-800"
    when :success then "#{base} border-green-200 bg-green-50 text-green-800"
    when :error then "#{base} border-red-200 bg-red-50 text-red-800"
    when :alert then "#{base} border-yellow-200 bg-yellow-50 text-yellow-800"
    else base
    end
  end

  def errors_for(object)
    return unless object.errors.any?

    content_tag(:div, class: 'mb-3 rounded border border-red-300') do
      concat(content_tag(:div, class: 'bg-red-100 px-4 py-2 text-red-800 font-semibold rounded-t') do
        concat "Oops, #{pluralize(object.errors.count, 'problem')}:"
      end)
      concat(content_tag(:ul, class: 'm-0 list-none divide-y divide-red-200') do
        object.errors.full_messages.each do |msg|
          concat content_tag(:li, msg, class: 'px-4 py-2')
        end
      end)
    end
  end
end
