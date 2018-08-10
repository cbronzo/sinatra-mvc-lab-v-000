
class PigLatinizer
  
  def piglatinize(text)
    results = []
    split_text = text.split(" ")
    split_text.each do |word|
      if "AEIOUaeiou".include?(word[0])
        results.push("#{word}way")
      else
        n=0
        while !"AEIOUaeios".include?(word[n])
          n+=1
        end
        
        results.push("#{word[n..-1]+word[0..n-1]}ay")
      end
    end
    results.join(" ").strip
    end
  end
    
  end 
  
end
  