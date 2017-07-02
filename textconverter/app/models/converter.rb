class Converter

  @@exceptions = ["and", "for", "in", "by", "but"]

  def initialize(params)
    @user_input = params[:user_input]
  end

  def convert_down
    word_arr = @user_input.split(" ")
    word_arr.map do |word|
      word.downcase
    end.join(" ")
  end

  def convert_up
    word_arr = @user_input.split(" ")
    word_arr.map do |word|
      word.upcase
    end.join(" ")
  end

  def convert_mixed_except
    word_arr = @user_input.split(" ")
    word_arr.map do |word|
      if !@@exceptions.include?(word.downcase)
        word.downcase.capitalize
      else
        word.downcase
      end
    end.join(" ")
  end

end
