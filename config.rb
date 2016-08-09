config.name = "Federico"

%i[one two three].each do |sym|
  config[sym] = sym.to_s.upcase
end

config[:style] = "PLAIN"

config["notes"] = [
                  "Note 1",
                  "Note 2",
                  "Note 3",
                 ]

config.nope = nil
