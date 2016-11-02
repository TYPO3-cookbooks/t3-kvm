name             't3-kvm'
maintainer       'Andri Steiner'
maintainer_email 'andri.steiner@typo3.org'
license          'Apache 2.0'
description      'Wrapper for the KVM cookbook'
version          '0.2.1'

depends 'kvm', '= 0.4.0'

# for testing
depends 'apt'

# Pin sysctl cookbook to 0.7.0
# Otherwise, we run in the following dependency conflict
# (e.g. in site-proxytypo3org)
# - `ohai (~> 3.0)` required by `sysctl-0.7.5`
# - `ohai (< 4.0.0)` required by `t3-openvz-1.1.3`
# - `ohai (~> 2.0)` required by `nginx-2.7.6`
# Unable to find a solution for demands: site-proxytypo3org (1.0.12)
#
# Therefore, enforce a version of sysctl that depends on ohai ~> 2.0.
# Can be removed, if nginx > 2.7.6 depends on a newer ohai version.
depends 'sysctl', '= 0.7.0'

# Additionally, make sure that ohai is always lower than 4.0
depends 'ohai', '< 4.0.0'
