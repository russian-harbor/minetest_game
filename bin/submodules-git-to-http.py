#!/usr/bin/env python2

import re

file = open(".gitmodules", "r")

content = file.read()

content = re.sub(r"(?:url\s*=\s*)([\w.-]+)@([\w.-]+):", r"url = https://\2/\1", content)

file.close()

file = open(".gitmodules", "w")

file.write(content)

file.close()
