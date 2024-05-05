# configuring ssh client to use private key and refuse password authentication.

File_line { 'disable_password_authentication':
  Path  => '/etc/ssh/ssh_config',
  Line  => 'PasswordAuthentication no',
  Match => '^PasswordAuthentication',
}

File_line { 'set_ssh_identity_file':
  Path  => '/etc/ssh/ssh_config',
  Line  => 'IdentityFile ~/.ssh/school',
  Match => '^IdentityFile',
}
