# MHA
Проект MHA (Mad Home Assistant) представляет собой полнофункциональное решение для умного дома, основанное на открытой платформе [Home Assistant](https://www.home-assistant.io/). Цель проекта - создание единой, интегрируемой системы управления различными устройствами и сервисами домашней автоматизации с использованием сервисов: Home Assistant, MQTT, Zigbee2MQTT и т.п. С помощью системы контейнеризации [Docker](https://www.docker.com/) обеспечивается удобство развертывания и портативность системы.

## Основные компоненты системы

- Home Assistant: центральный компонент системы для интеграции и управления различными устройствами и сервисами в умном доме. Предоставляет интерфейс пользователя для взаимодействия со всей системой.
- MQTT Broker (Mosquitto): легковесный сервер сообщений, используемый для обмена данными между устройствами и сервисами через протокол MQTT.
- Zigbee2MQTT: шлюз, позволяющий устройствам Zigbee общаться с Home Assistant и другими IoT сервисами через MQTT.
- Дополнительные сервисы: в зависимости от потребностей проекта могут быть добавлены другие сервисы.

## Использование Docker

В проекте MHA предлагается использовать Docker для упрощения развертывания и менеджмента всех компонент системы умного дома. Docker обеспечивает платформонезависимое развертывание и дает возможность легко запускать, останавливать и обновлять компоненты системы.
