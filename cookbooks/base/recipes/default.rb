
#Common base setup for all machines

#install packages I like

packages = case node[:platform]
  when "ubuntu","debian"
    [
        "libxml2-dev",
        "libxslt1-dev",
        "vim",
        "netcat",
        "rsync",
        "lsof",
        "htop",
        "strace",
        "net-tools",
        "zlib-dev",
        "libssl-dev"
    ]
  when "centos","redhat","fedora"
    [
        "libxml2-devel",
        "libxslt-devel",
        "vim-enhanced",
        "nc",
        "rsync",
        "lsof",
        "htop",
        "strace",
        "net-tools",
        "zlib-devel",
        "openssl-devel"
    ]
  default
    []
end

packages.each do |pack|
  package pack
end