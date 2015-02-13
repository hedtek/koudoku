module Koudoku
  module ApplicationHelper

    def plan_price(plan)
      if plan.price <= 0
        "Free"
      else
        "#{number_to_currency(plan.price, unit: plan.currency_symbol)}/#{plan_interval(plan)}"
      end
    end

    def plan_interval(plan)
      case plan.interval
      when "month"
        "month"
      when "year"
        "year"
      when "week"
        "week"
      when "6-month"
        "half-year"
      when "3-month"
        "quarter"
      else
        "month"
      end
    end
  end
end
