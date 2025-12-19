#!/usr/bin/env fish

function r
    set file $argv[1]

    if test -z "$file"
        echo "Usage: r <file>"
        return 1
    end

    switch $file
        case "*.py"
            set cmd "python3 $file"
        case "*.js"
            set cmd "node $file"
        case "*.php"
            set cmd "php $file"
        case "*"
            echo "No runner configured for: $file"
            return 1
    end

    echo "r: $cmd"
    eval $cmd
end
