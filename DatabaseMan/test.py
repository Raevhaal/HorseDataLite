

import re

command = "LNC -43"
buttons = re.findall(r'[-+]?\d+', command)
print(float(buttons[0]))
