# ssh file configuration config
class { 'ssh::client::config::host':
  '54.160.65.217':
    user                  => 'ubuntu',
    identity              => '~/.ssh/school',
    stricthostkeychecking => 'no',
    batchmode             => 'yes',
}
