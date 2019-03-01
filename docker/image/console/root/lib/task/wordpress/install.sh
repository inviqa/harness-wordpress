#!/bin/bash

function task_wordpress_install()
{
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
