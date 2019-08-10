#!/bin/bash

read -p "ชื่อผู้ใช้ SSH ที่จะถูกลบ : " Nama

if getent passwd $Nama > /dev/null 2>&1; then
        userdel $Nama
        echo -e "ผู้ใช้ $Nama ถูกลบแล้ว."
else
        echo -e "FAILED: User $ Nama ไม่มีอยู่."
fi