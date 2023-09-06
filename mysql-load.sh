#!/bin/bash

# 设置MySQL连接信息
DB_HOST="localhost"
DB_USER="root"
DB_PASSWORD="password"
DB_NAME="database"

# 指定要读取的目录
DIRECTORY="/path/to/sql/files"

# 遍历目录下的所有.sql文件
for file in $DIRECTORY/*.sql; do
    if [ -f "$file" ]; then
        echo "恢复文件: $file"
        mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME < $file
        echo "恢复完成"
    fi
done
