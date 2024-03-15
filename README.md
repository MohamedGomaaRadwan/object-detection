# ARCore and Marker Placement Implementation

## Overview
This project aims to implement functionality for placing visual markers in 3D space on detected objects in real-time using ARCore. Additionally, the project integrates YOLOv8 for real-time object detection within the camera view. The application should reliably identify various objects in different environments and ensure accurate positioning of markers on the detected objects, adjusting dynamically with camera movements in 3D.

## Features
1. **ARCore Marker Placement**
    - Implement functionality to place visual markers (e.g., dots or bounding boxes) in 3D space on detected objects.
    - Ensure accurate positioning and dynamic adjustment of markers with camera movements.

2. **Object Detection with YOLOv5**
    - Integrate YOLOv8 for real-time object detection within the camera view.
    - Perform all object detection processing locally on the device.
    - Ensure reliable identification of various objects in different environments.

3. **Performance Optimization**
    - Focus on optimizing the app for efficient performance, particularly in object detection and AR overlay.
    - Address potential issues such as latency, battery drain, or heat generation to enhance user experience.

4. **Save Data to Local Storage**
    - Implement functionality to capture photos using the device's camera and save them to local storage.
    - Develop a page to display all saved photos in a list format, allowing users to delete any photo from both the list and local storage.

5. **Using Firebase**
    - Provide an option for users to select images from the photos list and upload them to Firebase storage.
    - Implement flags in photos to track whether each photo has been uploaded or not.
    - Create a separate page to retrieve uploaded photos from Firebase and display them in a list, enabling users to delete any photo from Firebase.
    - Integrate Firebase notifications for testing, accessible from the Firebase dashboard.

## Technologies Used
- ARCore for marker placement in 3D space.
- YOLOv8 for real-time object detection.
- Local storage for saving captured photos.
- Firebase for cloud storage and notifications.

## Installation
1. Clone the repository.
2. Ensure ARCore and YOLOv5 dependencies are installed and configured.
3. Set up Firebase project and configure Firebase SDK.
4. Run the application on a compatible device or emulator.

## Usage
1. Launch the application on a supported device.
2. Enable camera permissions for object detection and marker placement.
3. Capture photos using the camera feature and view them in the local storage page.
4. Select photos to upload to Firebase and monitor upload status.
5. Access the Firebase page to view uploaded photos and manage them.
6. Test Firebase notifications from the Firebase dashboard.
