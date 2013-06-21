# Append to PATH
set -gx PATH /usr/local/bin /usr/bin /usr/local/sbin /usr/sbin /bin /sbin
set -gx PATH $PATH /usr/local/share/npm/bin		# node packages
set -gx PATH $PATH /usr/local/opt/ruby/bin		# ruby gems
set -gx PATH $PATH ~/Dropbox/bin				# scripts in dropbox

# special path for node
set -gx NODE_PATH /usr/local/lib/node

# java home
set -gx JAVA_HOME /System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home

# open in Sublime Text
function slime
	open -a /Applications/Sublime\ Text.app/ $argv
end

# easier navigation up
function ..;    cd ..; end
function ...;   cd ../..; end
function ....;  cd ../../..; end
function .....; cd ../../../..; end

# cd into new dir
function mkcd 
    mkdir $argv
    cd $argv
end

# list all files
alias l="ls -al"

# open in Finder
function o; open .; end

# grep recursively in current directory, return filenames of matches
function gricd; grep -roHl $argv .; end

# top by cpu
alias top="top -ocpu"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Recursively delete `.DS_Store` files
function cleanup; find . -name '*.DS_Store' -type f -ls -delete; end


true