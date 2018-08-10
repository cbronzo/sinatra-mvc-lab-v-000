
class PigLatinizer
  
  def piglatinize(text)
    results = []
    split_text = text.split(" ")
    split_text.each do |word|
      if "AEIOUaeiou".include?(word[0])
        results.push("#{word}way")
    end
    
  end 
  
end
  