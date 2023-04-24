#!/usr/bin/python3
'''
Python script that, using this REST API, for a given employee ID
'''
import requests
import sys

if __name__ == "__main__":
    url = 'https://jsonplaceholder.typicode.com/users/'
    userID = sys.argv[1]
    todo_r = requests.get('{}{}/todos'.format(url, userID))
    info_r = requests.get('{}{}'.format(url, userID))
    done = []
    for todo in todo_r.json():
        if todo.get('completed') is True:
            done.append(todo)
    print('Employee {} is done with tasks({}/{}):'
          .format(info_r.json().get('name'), len(done), len(todo_r.json())))
    for task in done:
        print('\t {}'.format(task.get('title')))
