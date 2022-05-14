# flourio test applcation

## initialize(project create)
```sh
npx create-frourio-app
```
ただしWSL環境だとうまく動作しないので、
```sh
npx create-frourio-app --answers '{"dir":"flourio_app"}'
```

## edit default configurations
編集する必要がありそうな箇所
* `./server/`
	* `.env`
		* `API_BASE_PATH`=`/api`
		* `API_ORIGIN`=`http://localhost:45793`
		* [MUST] `API_JWT_SECRET`=`supersecret`
		* `API_USER_ID`=`id`
		* `API_USER_PASS`=`pass`
		* `API_UPLOAD_DIR`=`upload`

