require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reverse_name = params[:name]
    "#{@reverse_name.reverse}"
  end

  get "/square/:number" do
    @square = params[:number]
    "#{@square.to_i * @square.to_i}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase * @number.to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]

    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    else @operation == "divide"
      "#{@number1 / @number2}"
    end

  end

end
