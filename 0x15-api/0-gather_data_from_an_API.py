#!/usr/bin/python3
'''
    this script returns to-do list information for a given employee ID.
'''
import requests
import sys


def tasks_done(id):
    '''
        Script that displays an employee's completed TODO tasks in stout
        Parameters:
            employee_id: Is an interger representing an employee id.
    '''

    url = 'https://jsonplaceholder.typicode.com/users/{}'.format(id)
    response = requests.get(url)
    responseJson = response.json()
    employeeName = response_json.get('name')

    url = 'https://jsonplaceholder.typicode.com/users/{}/todos'.format(id)
    todos = requests.get(url)
    todosJson = todos.json()
    numberTasks = len(todosJson)

    taskCompleted = 0
    taskList = ''

    for task in todosJson:
        if task.get('completed') is True:
            taskCompleted += 1
            taskList += '\t ' + task.get('title') + "\n"

    print('Employee {} is done with tasks({}/{}):'.format(employeeName,
                                                          taskCompleted,
                                                          numberTasks))
    print(taskList[:-1])


if __name__ == '__main__':
    tasks_done(sys.argv[1])
