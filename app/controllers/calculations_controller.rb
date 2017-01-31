class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square

    @num = params["the_number"].to_f

    @squared = @num.to_f ** 2

    render("calculations/square.html.erb")
  end

  def random

    @min_bound = params["min_bound"].to_f
    @max_bound = params["max_bound"].to_f
    @rand = rand(@min_bound..@max_bound)

  end

  def sqrt_form

    render("calculations/sqrt_form.html.erb")

  end

  def sqrt

    @num = params["num"].to_f

    @sqrt = @num.to_f ** 0.5

    render("calculations/square_root.html.erb")

  end

  def payment

    @apr = params["apr"].to_f
    @rate_percent = @apr / 10000
    @r = @rate_percent/12
    @years = params["years"].to_f
    @principal = params["principal"].to_f
    @monthlypay =  @principal * @r / (1 - (1 + @r)**(-@years * 12.0))

    render("calculations/payment.html.erb")
  end

end
