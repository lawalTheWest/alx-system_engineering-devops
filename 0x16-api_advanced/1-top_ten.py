#!/usr/bin/python3
'''
    This queries the Reddit API and
    prints the titles of the first 10 hot posts listed
    for a given subreddit.
'''
import requests


def top_ten(subreddit):
    '''
        This function prints the titles of
        the first 10 hot posts listed
        for a given subreddit
    '''
    link = 'https://api.reddit.com/r/{}?sort=hot&limit=10'
    url = (link.format(subreddit))
    headers = {'User-Agent': 'CustomClient/1.0'}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code != 200:
        print(None)
        return
    response = response.json()
    if 'data' in response:
        for posts in response.get('data').get('children'):
            print(posts.get('data').get('title'))
    else:
        print(None)
