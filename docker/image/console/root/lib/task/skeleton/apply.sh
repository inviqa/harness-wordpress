#!/bin/bash

function task_skeleton_apply()
{
    run "rsync --exclude='*.twig' --ignore-existing -a /home/build/skeleton/ /app/"

    # we only apply the wp-config.php file if the public/ directory is present, this is because
    # if it is not present then WP is not installed at all and this command will fail.
    #
    # when WP is not installed at all then the assets:apply task will detect this and trigger the installer

    if [ -d "${WORDPRESS_INSTALL_DIRECTORY}" ] && [ ! -f "${WORDPRESS_INSTALL_DIRECTORY}/wp-config.php" ]; then
        passthru "bin/wp-cli.phar config create \
            --path='${WORDPRESS_INSTALL_DIRECTORY}' \
            --dbname='${DB_NAME}' \
            --dbhost='${DB_HOST}' \
            --dbuser='${DB_USER}' \
            --dbpass='${DB_PASS}'"
    fi
}
