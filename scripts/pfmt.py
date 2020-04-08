import sys
import argparse

def split_limit(line, limit):
    line = line.rstrip()
    out = []
    while len(line) > limit:
        index = limit;
        while index >= 0 and not line[index].isspace():
            index -= 1
        if index < 0:
            index = limit
        out.append(line[:index].rstrip())
        line = line[index + 1:]
    out.append(line)
    return out

def run(source, show_numbers, limit):
    buff = [line for line in source]
    if show_numbers:
        num_len = len(str(len(buff)))
        line_fmt = "{:" + str(num_len) + "d}: {}"
        extra_fmt = (' ' * num_len) + "  {}"
        limit -= num_len + 2
        if limit < 1:
            limit = 1
    else:
        line_fmt = "{1}"
        extra_fmt = "{}"

    for i, line in enumerate(buff):
        lines = split_limit(line, limit)
        print(line_fmt.format(i + 1, lines[0]))
        for extra in lines[1:]:
            print(extra_fmt.format(extra))


parser = argparse.ArgumentParser()
parser.add_argument("-w", "--width", type=int, default=80)
parser.add_argument("-n", "--line-numbers", action="store_true")
parser.add_argument('file', nargs='?', type=argparse.FileType('r'), default=sys.stdin)

args = parser.parse_args()

run(args.file, args.line_numbers, args.width)

args.file.close()

