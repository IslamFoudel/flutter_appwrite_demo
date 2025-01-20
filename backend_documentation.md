# Backend Documentation

## Appwrite Setup

1. **Create a Project**:
   - Go to the Appwrite console.
   - Create a new project and name it.

2. **Database Setup**:
   - Create a database.
   - Add a collection with attributes:
     - `title` (string)
     - `description` (string)

3. **Permissions**:
   - Allow read permissions for all users to the collection.

4. **API Configuration**:
   - Note down the `Project ID` and `Database ID`.
   - These are used in the Flutter app.

5. **Test Data**:
   - Insert sample documents into the collection with `title` and `description`.

## Backend Documentation

- This Appwrite setup ensures the Flutter app can fetch data from the `items` collection.
- Follow the steps above to replicate the backend.
