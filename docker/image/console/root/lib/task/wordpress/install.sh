#!/bin/bash

function task_wordpress_install()
{
    task "mysql:available"

    if [ ! -f "${WORDPRESS_INSTALL_DIRECTORY}/index.php" ]; then
        passthru "bin/wp-cli.phar core download \
            --path='${WORDPRESS_INSTALL_DIRECTORY}'"
    fi

    passthru "bin/wp-cli.phar core install \
        --path='${WORDPRESS_INSTALL_DIRECTORY}' \
        --skip-email \
        --url='$(eval echo $WORDPRESS_URL)' \
        --title='${APP_NAME}' \
        --admin_user=admin \
        --admin_password=admin123 \
        --admin_email=admin@localhost.local"

    task "assets:dump"
}
