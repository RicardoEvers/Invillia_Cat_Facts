import requests


def make_api_request(
        url: str):

    res = requests.get(url)
    content = res.content

    return content
