# CloudTask – SaaS Application through Ruby on Rails

CloudTask is a cloud-based Software as a Service (SaaS) application developed using Ruby on Rails as part of the Cloud Application Development module. The application demonstrates CRUD functionality, user authentication, automated testing, CI/CD, and cloud deployment.

# Features
- User authentication using Devise
- Create, read, update, and delete posts
- Responsive UI using Bootstrap
- Automated testing with RSpec
- Continuous Integration using GitHub Actions
- Cloud deployment on Render

# Technology Stack
- Ruby on Rails
- PostgreSQL (production)
- SQLite (development/test)
- Devise (authentication)
- Bootstrap 5 (UI)
- RSpec (testing)
- GitHub Actions (CI/CD)
- Render (cloud hosting)


# Setup Instructions (Local)
1. Clone the repository:
```bash
git clone https://github.com/your-username/rails-cloud-app.git
cd rails-cloud-app
Install dependencies:

bash
Copy code
bundle install
Set up the database:

bash
Copy code
rails db:create db:migrate
Start the server:

bash
Copy code
rails s
Open in browser:

arduino
Copy code
http://localhost:3000
 Running Tests
Run the full test suite using:

bash
Copy code
bundle exec rspec
Deployment
The application is deployed on the Render cloud platform and is accessible via the following URL:

https://rails-cloud-app.onrender.com

Continuous Integration
GitHub Actions is used to automate testing, linting, and security checks on every push to the main branch.

Author
Yonas Haftom
Student ID: 23154454

License
This project was developed for academic purposes.

yaml
Copy code

---

##  Why this is enough
✔ Professional  
✔ Clear  
✔ Covers all module expectations  
✔ No unnecessary detail  
✔ Looks good to examiners  

---

## Next step
1. Paste this into `README.md`
2. Save
3. Commit and push again:

```bash
git add README.md
git commit -m "Update README with project overview and setup instructions"
git push origin main
