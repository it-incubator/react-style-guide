## Typescript

* Для примитивов НИКОГДА не используем Wrapper types. [Ссылка](https://google.github.io/styleguide/tsguide.html#wrapper-types)
* Стараемся не использовать any. Unknown предпочтительнее чем any. [Ссылка](https://google.github.io/styleguide/tsguide.html#any-unknown)
* Когда типизируем функцию типизируем как аргументы функции, так и то что она возвращает


### 🔥 Типизация массивов
⚡ Типизируем массив через [квадратные скобки](https://google.github.io/styleguide/tsguide.html#arrayt-type)

| ✅ Good   | ❌ Bad         |
|:---------|:--------------|
| `User[]` | `Array<User>` |


### 🔥 Что использовать type или interface?
* Предлагаю использовать `types`, по причине того, что type позволяют использовать [utility types](https://www.typescriptlang.org/docs/handbook/utility-types.html)
* Однако google style считает [иначе](https://google.github.io/styleguide/tsguide.html#interfaces-vs-type-aliases)
