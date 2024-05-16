classification:
	mv /workdir/camera_trap_photos/* Trial_photos/
	python main.py
<<<<<<< HEAD
	cp -r Found_cats/ /workdir/cat_detected/
=======
	cp -r runs/detect/predict/ /workdir/cat_detected/
	cp -r runs/detect/predict/ Backup_prediction/
>>>>>>> a668d4b0f61b766383e4c5b9b33701cfef2d61e7

.PHONY: classification
