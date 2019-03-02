#!/bin/bash

function task_build()
{
    task "composer:install"
    task "wordpress:cli"
    task "skeleton:apply"
}
