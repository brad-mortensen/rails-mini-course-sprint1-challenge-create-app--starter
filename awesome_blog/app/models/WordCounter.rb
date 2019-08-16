module WordCounter
  def word_count
    if !body.nil?
      @body.split.size
    else
      0
    end
  end
end