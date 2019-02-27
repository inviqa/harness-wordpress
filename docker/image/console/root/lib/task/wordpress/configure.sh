#!/bin/bash

function task_wordpress_configure()
{
    task "mysql:available"

    passthru "bin/wp-cli.phar --path='${WORDPRESS_INSTALL_DIRECTORY}' option update siteurl ${WORDPRESS_URL}"
    passthru "bin/wp-cli.phar --path='${WORDPRESS_INSTALL_DIRECTORY}' option update home ${WORDPRESS_URL}"
    passthru "bin/wp-cli.phar --path='${WORDPRESS_INSTALL_DIRECTORY}' user create admin admin@localhost.local --role=administrator --user_pass=admin123 || bin/wp-cli.phar --path='${WORDPRESS_INSTALL_DIRECTORY}' user update admin --role=administrator --user_pass=admin123 --skip-email"
}
