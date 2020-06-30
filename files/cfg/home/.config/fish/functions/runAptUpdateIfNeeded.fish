function runAptUpdateIfNeeded -d "Generic function to update the apt cache if older than 12 hours"
    # Update APT Repos of older than 12 hours
    if test -z "(find /var/cache/apt/pkgcache.bin -mmin -720)"
        sudo aptitude update
    end
end