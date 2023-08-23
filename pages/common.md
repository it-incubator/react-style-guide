#### Общие правила

##### 🔥 Use fragments
Если, компонент на верхнем уровне не требует стилизации, то для того чтобы не создавать лишнюю обертку используем fragment  
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
