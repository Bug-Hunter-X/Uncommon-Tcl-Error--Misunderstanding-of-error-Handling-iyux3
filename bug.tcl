proc error_example {input} {
  if {$input < 0} {
    error "Input must be non-negative" 
  }
  # ... rest of the code
}

error_example -5