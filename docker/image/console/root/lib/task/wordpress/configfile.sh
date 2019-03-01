#!/bin/bash

function task_wordpress_configfile()
{
    if [ -f "${WORDPRESS_INSTALL_DIRECTORY}/wp-config.php" ]; then
        return 0
    fi

    passthru "bin/wp-cli.phar config create \
        --path='${WORDPRESS_INSTALL_DIRECTORY}' \
        --dbname='${DB_NAME}' \
        --dbhost='${DB_HOST}' \
        --dbuser='${DB_USER}' \
        --dbpass='${DB_PASS}'"
}
