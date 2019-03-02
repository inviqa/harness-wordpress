#!/bin/bash

function task_build()
{
    task "wordpress:cli"
    task "skeleton:apply"
    task "composer:install"
}
