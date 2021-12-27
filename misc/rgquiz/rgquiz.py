import re
import os
import sys

# determines which lvl test is going to be done

if len(sys.argv) == 1:
    print('Usage: python3 lvl3test.py file_to_test_on')
    sys.exit(1)

os.system(f'python3 $DOTFILES/misc/rgquiz/lvl3test.py たんご(vocab).txt')

# with open(sys.argv[1], 'r') as f:
#     contents = f.read()

#     lvl3marker = re.search('{{{3', contents)
#     lvl2marker = re.search('{{{2', contents)

#     if lvl3marker:
#         # print('lvl3')
#         os.system(f'python3 $DOTFILES/lvl3test.py {sys.argv[1]}')
#     elif lvl2marker:
#         # print('lvl2')
#         os.system(f'python3 $DOTFILES/lvl2test.py {sys.argv[1]}')
#     else:
#         # print('lvl1')
#         os.system(f'python3 $DOTFILES/lvl1test.py {sys.argv[1]}')
