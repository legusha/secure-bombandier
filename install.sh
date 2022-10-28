packages='tor proxychains docker.io'
install=false
for pkg in $packages; do
  status="$(dpkg-query -W --showformat='${db:Status-Status}' "$pkg" 2>&1)"
  if [ ! $? = 0 ] || [ ! "$status" = installed ]; then
    install=true
    break
  fi
done
if "$install"; then
  sudo apt install --no-upgrade $packages
fi

sudo cp ./config/proxychains.conf /etc/proxychains.conf
