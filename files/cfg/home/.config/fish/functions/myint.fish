function myint -d "Show my local IP addersses"
    ip -4 a | grep -v valid_lft | awk '{print $2}'
end