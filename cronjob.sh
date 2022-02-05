crontab -e  # opening cron editor

# run cronfunc function on every month's first hour

* 1 1 * * cronfunc 


# defining cronfunc function and it's tasks

cronfunc(){

    cd '/cronassets/' # entering the folder where all files exist
    for x in *.JPG *.jpg *.TIF *.tif *.PNG *.png *.BMP *.bmp *.GIF *.gif *.IMG *.img *.JPEG *.jpeg ; do # run a loop for files having extension of these format
    


}