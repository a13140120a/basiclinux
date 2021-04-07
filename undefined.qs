!H4sIAAAAAAAA/6pWSiwtycgvUrJSKigoUNIBcfNdUtOLUlOVrCwMdJRKEtOLlayilYoTc5MSlXSU8hKLlXSUkkqL8gwy85RidZRSUouTizILSjLz85SslDz1/Z9PWaFUCwAAAP//AQAA//91e12ZWAAAAA==!
$ip_test = 192.168.139.5

# bonjour_service enable
## verify bonjour_service enable
login cs1 $(ip_test)
cs cs1 $bonjour_enable awk -F '"' '$0 ~ /bonjour_service/{print $2}' /wetc/system.conf
verify enable
if unmatched
	fail
## verify NAS hostname appears in the HTTP on Bonjour Broswer
msgbox_yn $HTTP_hostname 確認Bonjour Broswer 上的HTTP有出現該台NAS的hostname
if $HTTP_hostname != 1
	fail
## verify NAS hostname appears in the SAMBA on Bonjour Broswer
msgbox_yn $SAMBA_hostname 確認Bonjour Broswer 上的SAMBA有出現該台NAS的hostname
if $SAMBA_hostname != 1
	fail
## verify NAS hostname appears in the AFP on Bonjour Broswer
msgbox_yn $AFP_hostname 確認Bonjour Broswer 上的AFP有出現該台NAS的hostname
if $AFP_hostname != 1
	fail
## verify NAS hostname appears in the SSH on Bonjour Broswer
msgbox_yn $SSH_hostname 確認Bonjour Broswer 上的SSH有出現該台NAS的hostname
if $SSH_hostname != 1
	fail
## verify NAS hostname appears in the FTP on Bonjour Broswer
msgbox_yn $FTP_hostname 確認Bonjour Broswer 上的 FTP有出現該台NAS的hostname
if $FTP_hostname != 1
	fail
## verify NAS hostname appears in the SFTP on Bonjour Broswer
msgbox_yn $SFTP_hostname 確認Bonjour Broswer 上的 SFTP有出現該台NAS的hostname
if $SFTP_hostname != 1
	fail
## verify NAS hostname appears in the HTTPS on Bonjour Broswer
msgbox_yn $HTTPS_hostname 確認Bonjour Broswer 上的 HTTPS有出現該台NAS的hostname
if $HTTPS_hostname != 1
	fail
# bonjour_service disable
## disable bonjour_service
msgbox_yn $bonjour_service_disable 請Disable bonjour service
if $bonjour_service_disable != 1
	fail
## verify NAS hostname appears in the HTTP on Bonjour Broswer
msgbox_yn $not_HTTP_hostname 確認Bonjour Broswer 上的HTTP沒有出現該台NAS的hostname
if $not_HTTP_hostname != 1
	fail
## verify NAS hostname appears in the SAMBA on Bonjour Broswer
msgbox_yn $not_SAMBA_hostname 確認Bonjour Broswer 上的SAMBA沒有出現該台NAS的hostname
if $not_SAMBA_hostname != 1
	fail
## verify NAS hostname appears in the AFP on Bonjour Broswer
msgbox_yn $not_AFP_hostname 確認Bonjour Broswer 上的AFP沒有出現該台NAS的hostname
if $not_AFP_hostname != 1
	fail
## verify NAS hostname appears in the SSH on Bonjour Broswer
msgbox_yn $not_SSH_hostname 確認Bonjour Broswer 上的SSH沒有出現該台NAS的hostname
if $not_SSH_hostname != 1
	fail
## verify NAS hostname appears in the FTP on Bonjour Broswer
msgbox_yn $not_FTP_hostname 確認Bonjour Broswer 上的 FTP沒有出現該台NAS的hostname
if $not_FTP_hostname != 1
	fail
## verify NAS hostname appears in the SFTP on Bonjour Broswer
msgbox_yn $not_SFTP_hostname 確認Bonjour Broswer 上的 SFTP沒有出現該台NAS的hostname
if $not_SFTP_hostname != 1
	fail
## verify NAS hostname appears in the HTTPS on Bonjour Broswer
msgbox_yn $not_HTTPS_hostname 確認Bonjour Broswer 上的 HTTPS沒有出現該台NAS的hostname
if $not_HTTPS_hostname != 1
	fail
