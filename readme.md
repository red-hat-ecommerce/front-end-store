# Red Hat eCommerce - Front-End Store

A simple, responsive e-commerce front-end application for Red Hat Store. This project demonstrates a basic e-commerce website interface with store location selection.

## Description

This project is a front-end implementation of a Red Hat eCommerce store. It provides a clean, responsive user interface for customers to browse store locations and view store information. The application is built with modern web technologies and follows responsive design principles.

## Technologies Used

- HTML5
- CSS3
- JavaScript
- jQuery
- Bootstrap 5
- Nginx (for serving the application)
- Docker (for containerization)

## Features

- Responsive design that works on desktop and mobile devices
- Navigation menu with home link
- Store location selector (Jakarta, Surabaya, Bandung)
- Dynamic content loading based on selected store
- Red Hat branding and styling

## Installation

### Prerequisites

- Docker installed on your system
- Git (optional, for cloning the repository)

### Local Development

1. Clone the repository or download the source code:
   ```
   git clone <repository-url>
   ```

2. Navigate to the project directory:
   ```
   cd front-end-store
   ```

3. For local development, you can use any web server to serve the static files, or simply open the `index.html` file in a browser.

## Deployment

The application is containerized using Docker for easy deployment.

### Building the Docker Image

```bash
docker build -t redhat-ecommerce-frontend .
```

### Running the Container

```bash
docker run -d -p 8080:8080 --name redhat-store redhat-ecommerce-frontend
```

The application will be available at http://localhost:8080

## Usage

1. Open the application in a web browser
2. Navigate through the site using the top navigation bar
3. Select different store locations from the sidebar to view store-specific information

## Project Structure

```
front-end-store/
├── css/                  # CSS stylesheets
│   ├── bootstrap*.css    # Bootstrap CSS files
│   └── shop-homepage.css # Custom CSS for the application
├── img/                  # Image assets
├── js/                   # JavaScript files
│   ├── bootstrap*.js     # Bootstrap JS files
│   └── jquery.min.js     # jQuery library
├── Dockerfile            # Docker configuration
├── index.html            # Main HTML file
└── README.md             # Project documentation
```

## License

Copyright © Red Hat 2025

---

*This project is for demonstration purposes and is not an official Red Hat product.*