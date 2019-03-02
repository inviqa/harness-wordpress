#!/bin/bash

function task_welcome()
{
    echo ""
    echo "Welcome!"
    echo "--------"
    echo "URL: $(eval echo $WORDPRESS_URL)"
    echo "Admin: $(eval echo $WORDPRESS_URL)wp-login.php"
    echo "  Username: admin"
    echo "  Password: admin123"
    echo ""
}
