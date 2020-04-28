from notebook.auth import passwd
import os
import sys
print(sys.argv[1])
hash = passwd(sys.argv[1])
# probably a better way to get this path...
pth = os.path.expanduser('~/.jupyter/jupyter_notebook_config.py')
with open(pth, 'a') as f:
    f.write('\nc.NotebookApp.password = {!r}'.format(hash))
