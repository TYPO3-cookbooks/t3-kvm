name             't3-kvm'
maintainer       'Andri Steiner'
maintainer_email 'andri.steiner@typo3.org'
license          'Apache 2.0'
description      'Wrapper for the KVM cookbook'
version          '0.1.0'

depends 'kvm', '= 0.4.0'

# We manually downgrade this so that it depends on ohai~>2.0.
# Otherwise we have a conflict with nginx 2.x cookbook.
# This is visible in site-proxytypo3org
depends 'sysctl', '= 0.7.0'
