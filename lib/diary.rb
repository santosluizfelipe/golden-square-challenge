def make_snippet(str)
  word = str.split(" ")
  word.count <= 5 ? result = word[0..4].join(" ") : result = word[0..4].join(" ") + "..."
end