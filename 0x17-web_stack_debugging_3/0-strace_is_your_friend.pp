# puppet manuscript to replace line in file on server

$file_to_edit = '/var/www/html/wp-settings.php'

#replaces the line containing "phpp" with "php"

exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin','/usr/bin']
}
