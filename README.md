# Анализ когорт в маркетинговой компании

Этот проект направлен на выполнение когортного анализа для маркетинговой компании с использованием SQL и Pandas в Python. Когортный анализ позволяет исследовать поведение пользователей, группируя их по дате первого взаимодействия с продуктом или услугой. Это помогает выявить тенденции и паттерны, такие как удержание клиентов, время между покупками и поведение пользователей с течением времени.

## Цели проекта:

- Провести когортный анализ для маркетинговой компании с использованием данных о клиентах и их покупках.
- Оценить эффективность маркетинговых стратегий на основе поведения клиентов в разные периоды времени.
- Рассчитать метрики, такие как удержание клиентов, жизненный цикл клиента и другие важные показатели.

## Технологии:

- **SQL**: для обработки данных в базе данных и выполнения сложных запросов.
- **Pandas (Python)**: для анализа и визуализации данных, проведения когортного анализа и вычисления ключевых метрик.

## Основные шаги:

1. **Сбор данных**: Данные о клиентах, их покупках и датах транзакций были извлечены из базы данных с использованием SQL-запросов.
2. **Обработка данных**: В Python с помощью библиотеки Pandas были обработаны и подготовлены данные для дальнейшего анализа.
3. **Когортный анализ**:
   - Группировка пользователей по месяцам первого взаимодействия с продуктом.
   - Вычисление удержания пользователей по когортам.
   - Визуализация результатов с использованием графиков и тепловых карт.
4. **Анализ**: Оценка метрик, таких как количество пользователей в каждой когорте, их удержание и активность.

## Визуализация:

Визуализация результатов когортного анализа была выполнена с использованием **Seaborn** и **Matplotlib**, где была построена тепловая карта, показывающая удержание клиентов в разных когортных группах.

## Использование:

1. Сначала выполните запросы SQL для извлечения нужных данных о клиентах и их покупках.
2. Затем используйте Python и Pandas для загрузки и обработки этих данных.
3. Используйте код для выполнения когортного анализа и визуализации результатов.
