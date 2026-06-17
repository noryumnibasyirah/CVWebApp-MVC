# CV Generator Web Application (MVC)

## Project Overview

This project is a Curriculum Vitae (CV) Generator Web Application developed using the Model-View-Controller (MVC) architectural pattern.

The application allows users to enter personal and professional information through a web form and generate a professional CV instantly.

The system was developed using:

- Java
- JSP
- Servlets
- Apache Tomcat
- Maven
- Tailwind CSS

---

## Features

### CV Form Page
- Enter personal information
- Enter education details
- Enter work experience
- Enter skills
- Enter languages
- Enter address information
- Enter career position/title

### Generated CV
- Professional CV layout
- Sidebar design
- Skills displayed as bullet points
- Languages displayed as bullet points
- Education displayed as bullet points
- Work experience displayed as bullet points

### Example CV
- Sample CV generated using hardcoded data
- Uses the same template design as the generated CV

---

## MVC Architecture

### Model
- CV.java

Stores all CV information entered by the user.

### View
- index.jsp
- cv.jsp
- exampleCV.jsp

Responsible for displaying information to users.

### Controller
- CVController.java
- ExampleCVController.java

Processes user requests and controls application flow.

---

## Project Structure

```text
CVWebApp
│
├── Source Packages
│   ├── model
│   │   └── CV.java
│   │
│   └── controller
│       ├── CVController.java
│       └── ExampleCVController.java
│
├── Web Pages
│   ├── index.jsp
│   ├── cv.jsp
│   └── exampleCV.jsp
│
└── pom.xml
```

---

## Technologies Used

- Java
- JSP
- Servlet
- Apache Tomcat 10
- Maven
- Tailwind CSS
- MVC Architecture

---

## Author

Noryumni Basyirah

Bachelor of Computer Science

Universiti Teknologi MARA (UiTM)
