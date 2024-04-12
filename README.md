I'm assuming we're using rails console for this:

1 - Get all users

### User.all

2 - Get the user with id 3

### User.find(3)

3 - Get the posts with more than 100 likes

### Post.where("likes_count > 100")

4 - Get the posts with more than 10 answers and less than 20 likes

### Post.where("answers_count > 10 AND likes_count < 20")

5 - Get the users created in the month of January

### User.where(created_at: Time.new(Time.now.year,1,1)..Time.new(Time.now.year,1,31))

6 - Change the name of the user with id 3 to "Juan"

### user = User.find_by(id: 3)
### user.update(name: "Juan") if user

7 - Delete the post with id 5

### post = Post.find_by(id: 5)
### post.destroy if post