classification:
	mv /workdir/camera_trap_photos/* /Trial_photos/
	python main.py
	cp -r /runs/detect/predict/ /workdir/cat_detected/
	cp -r /runs/detect/predict/ /Backup_prediction/

.PHONY: classification
