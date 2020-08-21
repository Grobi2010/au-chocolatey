# Start VM
vagrant up

# create sandbox
vagrant sandbox on

# test package
test-package -install
test-package -uninstall

#bring VM back to start
vagrant sandbox rollback

update_all 


vagrant plugin expunge --reinstall