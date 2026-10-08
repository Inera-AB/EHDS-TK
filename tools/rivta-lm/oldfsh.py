"""Parse existing FSH logical models: header text, per-path element info and attached rules."""
import re
ELEM = re.compile(r'^(\s*)\*\s+([A-Za-z][\w.]*)\s+(\d+\.\.(?:\d+|\*))\s+(\S+)(.*)$')
RULE = re.compile(r'^(\s*)\*\s+([A-Za-z][\w.]*)\s+(from|obeys)\s+(.*)$')
ANYRULE = re.compile(r'^\s*\*\s')
STR = re.compile(r'"""(.*?)"""|"((?:[^"\\]|\\.)*)"', re.S)

def parse(path):
    lines = open(path, encoding='utf-8').read().split('\n')
    first = next(i for i, l in enumerate(lines) if ANYRULE.match(l))
    header = lines[:first]
    elems = {}; rules = []; stack = []
    i = first
    while i < len(lines):
        l = lines[i]
        m = ELEM.match(l); r = RULE.match(l)
        j = i + 1
        while j < len(lines) and not ANYRULE.match(lines[j]): j += 1
        block = '\n'.join([l] + lines[i+1:j])
        if m or r:
            ind = len((m or r).group(1)); tok = (m or r).group(2)
            while stack and stack[-1][0] >= ind: stack.pop()
            full = '.'.join([s[1] for s in stack] + [tok])
            if m:
                stack.append((ind, tok))
                rest = block[block.index(m.group(4)) + len(m.group(4)):]
                strs = [(a if a else b.replace('\\"', '"')) for a, b in STR.findall(rest)]
                elems[full] = {'card': m.group(3), 'type': m.group(4),
                               'short': strs[0].strip() if strs else None,
                               'def': strs[1].strip() if len(strs) > 1 else None}
            else:
                rules.append((full, r.group(3), r.group(4).strip()))
        i = j
    return header, elems, rules
