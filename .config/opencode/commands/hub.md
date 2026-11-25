---
description: Сводка здоровья хаба
---

Проверь и дай одним коротким сообщением по-русски: что живо, что деградирует,
что требует внимания. Обязательные пункты: хаб-сервис, порт, браузер,
диск, память. Если что-то мёртво — скажи, как поднять одной командой.

!`systemctl --user status opencode.service --no-pager | head -6`
!`ss -tln | grep 49374 || echo "PORT 49374 DOWN"`
!`pgrep -cf "/usr/lib/ungoogled-chromium/chromiu[m] " || echo "BROWSER DOWN"`
!`df -h / | tail -1`
!`free -h | head -2`
