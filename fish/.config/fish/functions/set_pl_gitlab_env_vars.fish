function set_pl_gitlab_env_vars
	set -gx http_proxy socks5h://localhost:1080
	set -gx HTTP_PROXY socks5h://localhost:1080
	set -gx https_proxy socks5h://localhost:1080
	set -gx HTTPS_PROXY socks5h://localhost:1080
	set -gx ALL_PROXY socks5h://localhost:1080
	set -gx GIT_SSL_NO_VERIFY true
	echo 'Environment variables https_prox and GIT_SSL_NO_VERIF for PL GitLab set'
end
