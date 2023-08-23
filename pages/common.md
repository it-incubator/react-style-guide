#### Общие правила

##### 🔥 [Fragment](https://react.dev/reference/react/Fragment)
⚡ Если, компонент на верхнем уровне не требует стилизации, то для того, чтобы не создавать лишнюю обертку используем Fragment (<>...</>) 
```ts copy showLineNumbers {4,7,14,17}
// ❌ 
const ButtonList = () => {
  return (
    <div>
      <button>add</button>
      <button>remove</button>
    </div>
  );
};

// ✅
const ButtonList = () => {
  return (
	<>
	  <button>add</button>
	  <button>remove</button>
	</>
  );
};
```

##### 🔥 Деструктуризация пропсов
⚡ Деструктурируем пропсы, чтобы писать меньше кода в разметке

```ts copy showLineNumbers
// ✅
const Button = (props) => {
	return <button>{props.text}</button>;
};

// ❌
const Button = ({text}) => {
	return <button>{text}</button>;
};
```


##### 🔥 [Кастомный хук](https://react.dev/learn/reusing-logic-with-custom-hooks)
⚡ Если логики в компоненте больше 20 строк выносим логику в кастомный хук

```ts copy showLineNumbers {17}
const useLogin = () => {
	const {login} = useActions(authThunks);

	const formik = useFormik({
		validate: (values) => {		},
		initialValues: {		},
		onSubmit: (values, formikHelpers: FormikHelpers<LoginParamsType>) => {},
	});

	return {formik};
};


const Login = () => {
	const isLoggedIn = useSelector(selectIsLoggedIn);

	const {formik} = useLogin();

	if (isLoggedIn) {
		return <Navigate to = {"/"} />;
	}

	return (
		<div>JSX</div>
 );
};

```
