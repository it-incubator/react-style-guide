## Typescript

* Для примитивов НИКОГДА не используем Wrapper types. [Ссылка](https://google.github.io/styleguide/tsguide.html#wrapper-types)

### 🔥 [Any vs unknown](https://google.github.io/styleguide/tsguide.html#any-unknown)
⚡ Стараемся не использовать `any`. `Unknown` предпочтительнее чем `any`.
```ts showLineNumbers /err: unknown/
const handleServerNetworkError = (err: unknown, dispatch: AppDispatch):void => {
  let errorMessage = "Some error occurred";
	
  if (axios.isAxiosError(err)) {
    errorMessage = err.response?.data?.message || err?.message || errorMessage;
  } else if (err instanceof Error) {
    errorMessage = `Native error: ${err.message}`;
  } else {
    errorMessage = JSON.stringify(err);
  }
  dispatch(appActions.setAppError({ error: errorMessage }));
  dispatch(appActions.setAppStatus({ status: "failed" }));
};
```

### 🔥 [Типизация возвращаемого значения функции](https://google.github.io/styleguide/tsguide.html#return-types)
* Более точная документация для удобства чтения кода.
* Более быстрое обнаружение потенциальных ошибок типа в будущем, если в коде произойдут изменения, изменяющие возвращаемый тип функции.

```ts showLineNumbers /string/
const minutesToHHMM = (minutes: number): string => {
  let hours = Math.floor(minutes / 60)
  let remainderMinutes = minutes % 60
  let formattedHours = hours < 10 ? '0' + hours : hours
  let formattedMinutes = remainderMinutes < 10 ? '0' + remainderMinutes : remainderMinutes

  return `${formattedHours}:${formattedMinutes}`
}
```


### 🔥 Типизация массивов
⚡ Типизируем массив через [квадратные скобки](https://google.github.io/styleguide/tsguide.html#arrayt-type)

| ✅ Good   | ❌ Bad         |
|:---------|:--------------|
| `User[]` | `Array<User>` |


### 🔥 Что использовать type или interface?
* Предлагаю использовать `types`, по причине того, что type позволяют использовать [utility types](https://www.typescriptlang.org/docs/handbook/utility-types.html)
* Однако google style считает [иначе](https://google.github.io/styleguide/tsguide.html#interfaces-vs-type-aliases)
