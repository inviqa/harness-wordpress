#!/bin/bash

function task_wordpress_configure()
{
    task "mysql:available"

    run "bin/wp-cli.phar --path='${WORDPRESS_INSTALL_DIRECTORY}' option update siteurl $(eval echo $WORDPRESS_URL)"
    run "bin/wp-cli.phar --path='${WORDPRESS_INSTALL_DIRECTORY}' option update home $(eval echo $WORDPRESS_URL)"
    run "bin/wp-cli.phar --path='${WORDPRESS_INSTALL_DIRECTORY}' user create admin admin@localhost.local --role=administrator --user_pass=admin123 || exit 0"
    run "bin/wp-cli.phar --path='${WORDPRESS_INSTALL_DIRECTORY}' user update admin --role=administrator --user_pass=admin123 --skip-email"
}
