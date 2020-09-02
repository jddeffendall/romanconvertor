def getSymbolValue(s)
  if (s == "M")
    return 1000
  elsif (s == "D")
    return 500
  elsif (s == "C")
    return 100
  elsif (s == "L")
    return 50
  elsif (s == "X")
    return 10
  elsif (s == "V")
    return 5
  elsif (s == "I")
    return 1
  else
    return 0
  end
end

def fromRoman(romanNumber)
    if romanNumber =~ /[a-z]/
      raise TypeError
    end

    result = 0
    i = 0

    while i < romanNumber.length

      symbol1 = getSymbolValue romanNumber[i]

      if (i+1 < romanNumber.length)
        symbol2 = getSymbolValue romanNumber[i+1]

        if symbol1 >= symbol2
          result += symbol1
          i += 1
        else
          result += symbol2 - symbol1
          i += 2
        end
      else
        result += symbol1
        i += 1
      end
    end
    return result
end

def toRoman(arabicNumber)
    answerString = String.new
    if (arabicNumber > 3999) or (arabicNumber < 1)
      raise RangeError
    end
    while arabicNumber != 0
      if arabicNumber >= 1000
        arabicNumber -= 1000
        answerString.concat("M")
      elsif arabicNumber >= 900
        arabicNumber -= 900
        answerString.concat("CM")
      elsif arabicNumber >= 500
        arabicNumber -= 500
        answerString.concat("D")
      elsif arabicNumber >= 400
        arabicNumber -= 400
        answerString.concat("CD")
      elsif arabicNumber >= 100
        arabicNumber -= 100
        answerString.concat("C")
      elsif arabicNumber >= 90
        arabicNumber -= 90
        answerString.concat("XC")
      elsif arabicNumber >= 50
        arabicNumber -= 50
        answerString.concat("L")
      elsif arabicNumber >= 40
        arabicNumber -= 40
        answerString.concat("XL")
      elsif arabicNumber >= 10
        arabicNumber -= 10
        answerString.concat("X")
      elsif arabicNumber >= 9
        arabicNumber -= 9
        answerString.concat("IX")
      elsif arabicNumber >= 5
        arabicNumber -= 5
        answerString.concat("V")
      elsif arabicNumber >= 4
        arabicNumber -= 4
        answerString.concat("IV")
      elsif arabicNumber >= 1
        arabicNumber -= 1
        answerString.concat("I")
      end
    end
    return answerString
end
