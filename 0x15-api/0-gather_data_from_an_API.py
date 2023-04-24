#!/usr/bin/python3
# -*- coding: utf-8 -*-
"""
Python package requests using to deal with APIs
"""
import requests
import sys


if __name__ == "__main__":
    url = 'https://jsonplaceholder.typicode.com/users/'
    value = sys.argv[1]
    todo_r = requests.get(url+f'{value}/todos')
    info_r = requests.get(url+f'{value}')
    done = []
    for todo in todo_r.json():
        if todo.get('completed') is True:
            done.append(todo)
    print('Employee {} is done with tasks({}/{}):'
          .format(info_r.json().get('name'), len(done), len(todo_r.json())))
    for task in done:
        print('\t{}'.format(task.get('title')))
