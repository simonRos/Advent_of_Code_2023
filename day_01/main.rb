def get_calibration_value(in_string)

  first_num = nil
  last_num = nil

  in_string.each_char do |char|
    if char.match?(/\d/)
      first_num = char
      break
    end
  end

  in_string.reverse.each_char do |char|
    if char.match?(/\d/)
      last_num = char
      break
    end
  end

  combo = first_num + last_num
  return combo
end

def process_input(file_path)
  summation = 0
  File.open(file_path, "r") do |file|
    file.each_line do |line|
      summation += get_calibration_value(line).to_i
    end
  end
  return summation
end

def run
  puts process_input("input")
end

run
