node default {
  class { 'openstackci::zuul_scheduler':
    vhost_name                     => $vhost_name,
    gearman_server                 => '127.0.0.1',
    gerrit_server                  => hiera('gerrit_server'),
    gerrit_user                    => hiera('gerrit_user'),
    #known_hosts_content            => "review.openstack.org,104.130.159.134,2001:4800:7818:102:be76:4eff:fe05:9b12 ${gerrit_ssh_host_key}",
    zuul_ssh_private_key           => hiera('zuul_ssh_private_key_contents'),
    #url_pattern                    => $url_pattern,
    zuul_url                       => 'http://zuul.mirantis.com/p',
    job_name_in_report             => true,
    status_url                     => 'http://status.mirantis.com/zuul/',
    #swift_authurl                  => $swift_authurl,
    #swift_auth_version             => $swift_auth_version,
    #swift_user                     => $swift_user,
    #swift_key                      => $swift_key,
    #swift_tenant_name              => $swift_tenant_name,
    #swift_region_name              => $swift_region_name,
    #swift_default_container        => $swift_default_container,
    #swift_default_logserver_prefix => $swift_default_logserver_prefix,
    #swift_default_expiry           => $swift_default_expiry,
    #proxy_ssl_cert_file_contents   => $proxy_ssl_cert_file_contents,
    #proxy_ssl_key_file_contents    => $proxy_ssl_key_file_contents,
    #proxy_ssl_chain_file_contents  => $proxy_ssl_chain_file_contents,
    #statsd_host                    => $statsd_host,
    project_config_repo            => hiera('project_config_repo'),
    git_email                      => 'jenkins@openstack.org',
    git_name                       => 'OpenStack Jenkins',
  }
}