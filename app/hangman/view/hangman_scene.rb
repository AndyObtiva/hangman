require 'hangman/model/game'

class HangmanScene
  include Glimmer::LibUI::CustomShape

  option :game
  option :size, default: 480
  option :thickness, default: 2
  
  body {
    composite_shape(0, 0) {
      content(game, :incorrect_guess_count) do
        @background = rectangle(0, 0, size, size) {
          fill :white
        }
        
        required_incorrect_guess_count = 1
        if game.incorrect_guess_count >= required_incorrect_guess_count
          @base = line(size*0.1, size*0.7, size*0.3, size*0.7) {
            stroke :black, thickness: thickness
          }
        end
        
        required_incorrect_guess_count += 1
        if game.incorrect_guess_count >= required_incorrect_guess_count
          @column = line(size*0.2, size*0.1, size*0.2, size*0.7) {
            stroke :black, thickness: thickness
          }
        end
        
        required_incorrect_guess_count += 1
        if game.incorrect_guess_count >= required_incorrect_guess_count
          @ceiling = line(size*0.2, size*0.1, size*0.6, size*0.1) {
            stroke :black, thickness: thickness
          }
        end
        
        required_incorrect_guess_count += 1
        if game.incorrect_guess_count >= required_incorrect_guess_count
          @rope = line(size*0.6, size*0.1, size*0.6, size*0.25) {
            stroke :black, thickness: thickness
          }
        end
        
        required_incorrect_guess_count += 1
        if game.incorrect_guess_count >= required_incorrect_guess_count
          @head = circle(size*0.6, size*0.25, size*0.05, size*0.1) {
            stroke :black, thickness: thickness
            fill :white
          }
        end
        
        required_incorrect_guess_count += 1
        if game.incorrect_guess_count >= required_incorrect_guess_count
          @torso = line(size*0.6, size*0.3, size*0.6, size*0.5) {
            stroke :black, thickness: thickness
          }
        end
        
        required_incorrect_guess_count += 1
        if game.incorrect_guess_count >= required_incorrect_guess_count
          @left_hand = line(size*0.6, size*0.3, size*0.5, size*0.4) {
            stroke :black, thickness: thickness
          }
        end
    
        required_incorrect_guess_count += 1
        if game.incorrect_guess_count >= required_incorrect_guess_count
          @right_hand = line(size*0.6, size*0.3, size*0.7, size*0.4) {
            stroke :black, thickness: thickness
          }
        end
    
        required_incorrect_guess_count += 1
        if game.incorrect_guess_count >= required_incorrect_guess_count
          @left_leg = line(size*0.6, size*0.5, size*0.5, size*0.6) {
            stroke :black, thickness: thickness
          }
        end
    
        required_incorrect_guess_count += 1
        if game.incorrect_guess_count >= required_incorrect_guess_count
          @right_leg = line(size*0.6, size*0.5, size*0.7, size*0.6) {
            stroke :black, thickness: thickness
          }
        end
      end
    }
  }
end
