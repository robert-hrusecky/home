import os
import sys

def short_cwd():
    if len(sys.argv) < 2:
        return 'error'
    try:
        limit = int(sys.argv[1])
    except ValueError:
        return 'error'
    if limit < 5:
        return 'error'

    home = os.environ['HOME']
    if home.endswith('/'):
        home = home[0:len(home) - 1]
    cwd = os.getcwd()

    isHome = cwd.startswith(home)
    if isHome:
        limit -= 1
        cwd = cwd[len(home):]
    truncated = len(cwd) > limit and '/' in cwd[1:]
    if truncated:
        limit -= 4
    while len(cwd) > limit and '/' in cwd[1:]:
        cwd = cwd[cwd.find('/', 1):]

    if truncated:
        cwd = '/...' + cwd

    if isHome:
        cwd = '~' + cwd
    return cwd

print(short_cwd())
