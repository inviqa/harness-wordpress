#!/bin/bash

function task_welcome()
{
    echo ""
    echo "Welcome!"
    echo "--------"
    echo "URL: ${WORDPRESS_URL}"
    echo "Admin: ${WORDPRESS_URL}wp-login.php"
    echo "  Username: admin"
    echo "  Password: admin123"
    echo ""
}
