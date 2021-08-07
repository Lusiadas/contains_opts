function contains_opts -d "Check if commandline contains any of the given options, or any other than these"

  # Test for unknow flags
  if set -l flags (string match -qr '^-' $argv)
    test (count $argv) = 1
    and err "contains_opts: Unknown flag |$flag|"
    or err "contains_opts: Unknown flags |"(string join '|, |' $flags)"|"
    return 1
  end

  # If no flag is described, test for any flags
  set -l commandline (commandline -p)
  if test -z "$argv"
    string match -qr -- '\s--?[^-\s]+\s' $commandline
    and return 0

  # Test for specific flags
  else
    for arg in $argv

      # Test for a short flag
      if string match -qr '^.$' $arg
        string match -qr -- "\s-$arg(?=\s|\$)" $commandline

      # Test for a long or oldstyle flag
      else
        string match -qr -- "\s--?$arg(?=\s)" $commandline
      end
      or continue
      return 0
    end
  end
  return 1
end
