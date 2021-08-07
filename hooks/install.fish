if test (fish --version | string match -ar '\d' | string join '') -lt 300
  echo 'This plugin is compatible with fish version 3.0.0 or above, please update before trying to use it' 1>&2
  exit 1
end
omf list | string match -qr "\bfeedback\b"
or omf install https://gitlab.com/argonautica/feedback