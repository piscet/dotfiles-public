function __my_getcmd ()
    
    for p in $PATH
        if not echo $p | grep "^/mnt" 2>&1 > /dev/null
            ls $p 2> /dev/null
        end
    end
end

function my_getcmd ()
    __my_getcmd | sort | uniq
end
