#!/usr/bin/env python

import os
from os.path import dirname, join, exists, abspath, islink, isfile, isdir
from shutil import copyfile

def install():
    ORIGIN=abspath(dirname(__file__))
    for dname in os.listdir(ORIGIN):
        if dname.startswith('.'):
            continue

        if not isdir(dname):
            continue

        with open(join(ORIGIN, dname, '.target'), 'r') as f:
            target_dir = f.read().strip()

        if not exists(target_dir):
            os.makedirs(target_dir)

        for phile in os.listdir(join(ORIGIN, dname)):
            if phile.startswith('.'):
                continue

            path_from = join(ORIGIN, dname, phile)

            if phile.startswith('_'):
                phile = '.%s' % phile[1:]

            path_to = join(target_dir, phile)
            if islink(path_to):
                continue

            if exists(path_to):
                os.rename(path_to, "%s_" % path_to)

            os.symlink(path_from, path_to)

if __name__ == '__main__':
    install()

