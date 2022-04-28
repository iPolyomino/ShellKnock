#!/bin/bash

kill -l | grep 19

kill -s SIGCONT 5249

pkill -SIGCONT bash
