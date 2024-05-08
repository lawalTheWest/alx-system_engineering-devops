#!/usr/bin/python3
'''
    This is a recursive function:
        - it queries the Reddit API
        - returns a list containing:
            the titles of all hot articles for
            a given subreddit.
        If no results are found;
            the function returns `None`.
'''
import requests


def recurse(subreddit, hot_list=[]):
    '''
        This returns a list containing:
            the titles of all hot articles
    '''
    link = 'https://api.reddit.com/r/{}?sort=hot'
    if type(subreddit) is list:
        _format = '{}&after={}'
        url = link.format(subreddit[0])
        url = _format.format(url, subreddit[1])
    else:
        url = link.format(subreddit)
        subreddit = [subreddit, ""]
    headers = {'User-Agent': 'CustomClient/1.0'}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code != 200:
        return (None)
    response = response.json()
    if "data" in response:
        data = response.get("data")
        if not data.get("children"):
            return (hot_list)
        for post in data.get("children"):
            hot_list += [post.get("data").get("title")]
        if not data.get("after"):
            return (hot_list)
        subreddit[1] = data.get("after")
        recurse(subreddit, hot_list)
        if hot_list[-1] is None:
            del hot_list[-1]
        return (hot_list)
    else:
        return (None)
