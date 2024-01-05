#!/bin/bash
set -eux

config_domain=$(hostname --domain)

apt-get install -y --no-install-recommends vim
cat >/etc/vim/vimrc.local <<'EOF'
syntax on
set background=dark
set esckeys
set ruler
set laststatus=2
set nobackup
autocmd BufNewFile,BufRead Vagrantfile set ft=ruby
EOF

# install nginx to host the Thunderbird Autoconfiguration xml file.
# thunderbird will make a request alike:
#   GET /.well-known/autoconfig/mail/config-v1.1.xml?emailaddress=alice%40example.com
# see https://wiki.mozilla.org/Thunderbird:Autoconfiguration:ConfigFileFormat
# see https://developer.mozilla.org/en-US/docs/Mozilla/Thunderbird/Autoconfiguration
# see https://developer.mozilla.org/en-US/docs/Mozilla/Thunderbird/Autoconfiguration/FileFormat/HowTo
apt-get install -y --no-install-recommends nginx