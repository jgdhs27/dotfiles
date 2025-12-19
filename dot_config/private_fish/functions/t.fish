#!/usr/bin/env fish

function r
    set file $argv[1]

    if test -z "$file"
        echo "Usage: r <file>"
        return 1
    end

    switch $file
        case "*.php"
            set cmd "t $file"
        case "*"
            echo "No tester configured for: $file"
            return 1
    end

    echo "t: $cmd"
    eval $cmd
end
