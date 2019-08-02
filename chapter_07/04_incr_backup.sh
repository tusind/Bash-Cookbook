#!/bin/bash

## incremental backup
gunzip /work/tar.gz
tar uvf /work.tar /work/
gzip /work.tar
