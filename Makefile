classification:
	mv /workdir/camera_trap_photos/* Trial_photos/
	python main.py
	cp -r Found_cats/ /workdir/cat_detected/

.PHONY: classification
