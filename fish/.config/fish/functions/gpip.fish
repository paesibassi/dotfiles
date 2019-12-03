function gpip --description 'function to pip install system wide packages'
    env PIP_REQUIRE_VIRTUALENV="" pip $argv
end
