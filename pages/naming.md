#### Структура папок / нейминг

##### ️ Use camelCase for folder and non-component file names and PascalCase for component file names

❗Создать тестовый публичный репозиторий в котором должен быть код (не обязательно рабочий)

🔗 [Structure Files as Feature Folders with Single-File Logic](https://redux.js.org/style-guide/#structure-files-as-feature-folders-with-single-file-logic)

🔗 [Redux toolkit query](https://redux-toolkit.js.org/rtk-query/usage/examples)


```markdown  filename="Naming convention" copy
📁features
	📁app
		📁tests
			└── appSlice.test.ts
		└── store.ts
		└── App.tsx
		└── appSlice.ts
		└── appSelectors.ts
	📁assets
		📁images
			└── mainBg.webp
			└── cat.jpg
			└── defaultAvatar.svg
		📁icons
			└── camera.svg
			└── logo.svg
			└── eye.tsx
		📁fonts
	📁common
		📁components
			📁DropDown 
				└── DropDown.tsx
				└── DropDown.module.css
			📁 Slider
				└── Slider.tsx
				└── Slider.module.css
			└── index.ts
		📁hooks
			└── useDebounce.ts
			└── useDarkMode.ts
			└── useLocalStorage.ts
			└── index.ts
		📁utils
			└── handleServerAppError.ts
			└── handleServerNetworkError.ts
			└── index.ts
		📁enums
			└── enums.ts
			└── index.ts
		📁types
			└── types.ts
			└── index.ts
	📁auth
		📁api
			└── authApi.ts
			└── authApi.types.ts
		📁lib
			└── useLogin.ts
		📁model
			📁tests
				└── authSlice.test.ts
			└── authSlice.ts
			└── authSelectors.ts
		📁ui
			📁Login
				└── Login.tsx
				└── Login.module.css
	📁cards
		📁services
			└── cardsApi.ts
			└── cardsApi.types.ts
		📁ui
			📁Cards
				└── Cards.tsx
				└── Cards.module.css
```


##### Use camelCase for JavaScript data types like variables, arrays, objects, functions, etc.
```ts
const users = []
const getRandomNumber = ()=> { ... }
```

##### Types, Interface
1. Что использовать type или interface?

* Предлагаю использовать types, по причине того, что type позволяют использовать [utility types](https://www.typescriptlang.org/docs/handbook/utility-types.html)
* Однако google style считает иначе. [Ссылка](https://google.github.io/styleguide/tsguide.html#interfaces-vs-type-aliases)

2. Нейминг типов

* При именовании типов не пишем в конце type. Ни в документации, ни в проектах не нашел такого нейминга
```ts
✅
type Props = {}
const user: User = {}

⛔
type PropsType = {}
const user: UserType = {}
```

