granttypes: password, refresh token, client credential, authorization code

every thing is hard code user,client id secret


Authorization Grant type: AuthCode

step1: get request: http://localhost:8080/oauth/authorize?response_type=code&client_id=client2&client_secret=secret2&scope=read
setp2: redirect to authorization login page for login. if success then it redirect to redirect uri with code. which canbe used for only one time
	to get access token. if i use same code twice for token it shows errors
step3: post request for access token
	http://localhost:8080/oauth/token?grant_type=authorization_code&scope=read&code=xjAnTY
	basic auth hishebe client_id and client_secret pathate hobe