
module Creative
  module Machine
    module PoetEngine
      class Crossover
        
        class << self
          def crossover(poem_1, poem_2)
            #first it may merge the former poem's minilex with the latter's or ignore the latter minilex or do nothing
            #it may take into consideration the other poem's rhyming or ignore the other poem's rhyming altogether or do nothing
            #it will either work with the former and the latter's lines or ignore the latter's lines or do nothing
            
            poem = [poem_1, poem_2][rand(1)]
            poem = crossover_lines(poem_1, poem_2) if crossover?
            poem
          end
          
          def crossover_lines(poem_1, poem_2)
            new_poem = poem_1
            new_poem[0] = poem_2[0]
            new_poem[-1] = poem_2[-1]
            new_poem
          end

          private
          def crossover?
            rand(1) == 1 ? true : false 
          end
          
        end

      end
    end
  end
end