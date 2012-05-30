# Kerberos
pidof openvpn > /dev/null && ( klist -s || kinit -f -l 10h ejoffri-)
pidof openvpn > /dev/null && ( klist -s -c /tmp/krb5cc_prodsoft || kinit -f prodsoft -c /tmp/krb5cc_prodsoft -l 1d)

