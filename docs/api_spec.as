info:
paths: 
	/auth/account/
		post: Create a new user
		description: 
			If the given email address doesn't exist in the database yet then it creates the new user.
		request:
			{
				*email: [type=email|5-99|re/^[a-zA-Z0-9@\.]+$/] "johndoe@gmail.com"  // email address of the user
				*password: "abc123"
				*displayed_name: "Johny D. Good"
			}
		responses:
			200: short description
				description: Registration was successful
				{
					result: "OK"
					
				}
			404: short description
				description: if the email address is valid then the `is_existing` field tells whether the email address is already in use or not.
				{
					result: "OK",
					is_existing: true
				}
					
					
					