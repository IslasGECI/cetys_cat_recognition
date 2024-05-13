classification:
	mv /workdir/camera_trap_photos/ /Trial_photos/
	#cp -r /workdir/camera_trap_photos /Trial_photos
	python main.py
	cp -r /runs/detect/predict /workdir/cat_detected 
	# Create a copy before purging /runs/detect
	cp -r /runs/detect/predict /Backup_prediction

.PHONY: classification
