def printfile
    file = File.new("myfile.txt","r:UTF-8")
    information = file.read
    return information.split
end

print printfile  