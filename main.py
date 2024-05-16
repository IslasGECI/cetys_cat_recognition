from ultralytics import YOLO
import shutil

# Use custom trained model and predict results
model = YOLO('yolov8OnlyCats_602020.pt')

#Define the location of the database
source = "Trial_photos/" 
output = "Found_cats/"

#Configure the prediction 
resultsDetect = model.predict(source, conf=0.5, stream=True, show=False, save=True)

#Creates bounding boxes
for result in resultsDetect:
    boxes = result.boxes
    masks = result.masks
    keypoints = result.keypoints
    probs = result.probs
    if "Cat" in result.verbose():
        shutil.copy(result.path, output)


