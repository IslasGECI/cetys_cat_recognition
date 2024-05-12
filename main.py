from ultralytics import YOLO

# Use custom trained model and predict results
model = YOLO('yolov8OnlyCats_602020.pt')

#Define the location of the database
source = "/Trial_photos" 

#Configure the prediction 
resultsDetect = model.predict(source, conf=0.5, stream=True, show=False, save=True)

#Creates bounding boxes
for result in resultsDetect:
    boxes = result.boxes
    masks = result.masks
    keypoints = result.keypoints
    probs = result.probs
