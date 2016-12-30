name             't3-kvm'
maintainer       'Andri Steiner'
maintainer_email 'andri.steiner@typo3.org'
license          'Apache 2.0'
description      'Wrapper for the KVM cookbook'
version          '0.2.1'

depends 'kvm', '= 0.4.0'

# we don't restrict the versions for these, as we have to pick different
# versions based on other cookbook dependencies (i.e. ohai 4.x via nginx >2.7)
depends 'sysctl'
depends 'ohai'
