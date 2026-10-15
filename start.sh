#!/bin/bash

# 1. تعیین پورت پنل
# هنگام استقرار روی پلتفرم‌هایی مثل Railway، متغیر PORT به طور خودکار تزریق می‌شود
PANEL_PORT="${PORT:-2053}"
echo "🚀 در حال راه‌اندازی x-ui روی پورت ${PANEL_PORT}..."

# 2. اطمینان از وجود پوشه‌های ضروری
mkdir -p /etc/x-ui
mkdir -p /var/log/x-ui

# 3. وارد شدن به پوشه x-ui
cd /usr/local/x-ui || exit 1

# 4. تنظیم پورت پنل و مسیر پایه از طریق روش صحیح
# نکته: مستقیماً از دستور x-ui setting استفاده کنید، نه config.json
./x-ui setting -port "${PANEL_PORT}" -webBasePath "/" -listenIP "0.0.0.0"

# 5. (اختیاری) تنظیم/بازنشانی نام کاربری و رمز عبور
# ./x-ui setting -username "admin" -password "your_strong_password"

# 6. راه‌اندازی x-ui
./x-ui
