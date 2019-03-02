#!/bin/bash

function task_init()
{
    task "mysql:available"
    task "wordpress:configfile"
    task "assets:apply"
    task "welcome"
}
