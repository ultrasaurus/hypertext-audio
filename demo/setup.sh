#!/bin/sh

cargo install --git https://github.com/ultrasaurus/altwebgen.git

echo ""
echo "to build static files:\n   webgenr build"
echo "to run dev server with live reload:\n   webgenr dev"
