#!/bin/bash

function task_wordpress_install()
{
    passthru "bin/wp-cli.phar config create \
        --path='${WORDPRESS_INSTALL_DIRECTORY}' \
        --dbname='${DB_NAME}' \
        --dbhost='${DB_HOST}' \
        --dbuser='${DB_USER}' \
        --dbpass='${DB_PASS}'"

    task "mysql:available"

    passthru "bin/wp-cli.phar core install \
        --path='${WORDPRESS_INSTALL_DIRECTORY}' \
        --skip-email \
        --url='${WORDPRESS_URL}' \
        --title='${APP_NAME}' \
        --admin_user=admin \
        --admin_password=admin123 \
        --admin_email=admin@localhost.local"

    task "skeleton:apply"
    task "assets:dump"
}
