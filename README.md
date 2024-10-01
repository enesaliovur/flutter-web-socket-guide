🌐 Flutter WebSocket Clean Architecture Project

This project demonstrates how to implement a WebSocket system in a Flutter application, following the Clean Architecture principles. It uses Bloc for state management, GetIt for dependency injection, and ensures that each layer is well-structured and maintainable.

🛠️ Features

🔌 Real-Time WebSocket Communication
Connect to a WebSocket server, send messages, and listen for real-time updates in an efficient way.

🏛️ Clean Architecture
The project is organized using Clean Architecture, which divides responsibilities into different layers:

Domain: Handles business logic and use cases.
Data: Manages data sources and repositories.
Presentation: Includes UI and Bloc for state management.
📦 Dependency Injection
All dependencies are managed using GetIt, ensuring that each component is easily replaceable and testable.

🚀 Bloc State Management
The app uses the Bloc library to handle WebSocket events and states, ensuring smooth and predictable state transitions.

📋 Simple WebSocket CRUD Operations

Connect: Establish a WebSocket connection.

Send Message: Send real-time messages to the server.

Listen Message: Listen for incoming WebSocket messages and display them in the UI.
