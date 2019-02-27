#!/bin/bash

function task_init()
{
    task "mysql:available"
    task "assets:apply"
    task "welcome"
}
