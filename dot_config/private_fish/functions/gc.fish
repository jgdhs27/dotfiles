function gc --wraps='git commit -n -s' --wraps='git commit -n' --description 'alias gc git commit -n'
  git commit -n $argv
        
end
