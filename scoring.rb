module Scrabble
  class Scoring
    attr_reader :word

    SCORE_CHART = { "A" =>1, "E"=>1, "I"=> 1, "O"=> 1, "U"=> 1, "L"=> 1, "N"=> 1, "R" => 1, "S" => 1, "T" => 1,"D"=>2,"G"=>2,
      "B" =>3, "C" => 3, "M" => 3, "P" => 3,"F"=>4, "H"=>4, "V"=>4, "W"=>4, "Y"=>4, "K"=>5, "J" =>8, "X"=>8, "Q"=>10, "Z" => 10 }

      def initialize
        @word = []
      end

      def self.score(word)
        if word == "" || word == nil
          raise ArgumentError.new("You need to enter a word")
        elsif word.length > 7
          raise ArgumentError.new("You are cheating and are using too many tiles")
        else
          word = word.upcase
        end
        score_array = []

        word.each_char do |l|

          score_array << SCORE_CHART.values_at(l).join.to_i
        end

        return score_array.reduce(:+)
      end

      def self.highest_score_from(array_of_words)

        array_of_words.map do |i|
        word = self.score(i)
        end





      end
  end
end
