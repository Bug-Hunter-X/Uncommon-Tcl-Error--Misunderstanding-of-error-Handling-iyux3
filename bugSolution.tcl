proc error_example {input} {
  if {$input < 0} {
    return -code error "Input must be non-negative" 
  }
  # ... rest of the code
  return 1
}

catch {error_example -5} result

if {$result ne ""} {
  puts "Error occurred: $result"
} else {
  puts "Procedure executed successfully."
}

#or

proc better_error_handling {input} {
    if {$input < 0} {
        error "Input must be non-negative"
    } else {
        puts "Input is valid" 
    }
}

catch {better_error_handling -5} msg

if {[string length $msg] > 0} {
    puts "Error: $msg"
} else {
    puts "No error occurred"
}