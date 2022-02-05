crontab -e  # opening cron editor

# run cronfunc function on every month's first hour

* 1 1 * * cronfunc


# defining cronfunc function and it's tasks

cronfunc(){

    cd '/cronassets/' # entering the folder where all files exist
    mkdir imgfolder # creating a directory to temporariliy store sorted files
    for x in *.JPG *.jpg *.TIF *.tif *.PNG *.png *.BMP *.bmp *.GIF *.gif *.IMG *.img *.JPEG *.jpeg ; # run a loop for files having extension of these format
    do
        mv x imgfolder # adding images to a folder after sorting
    done
    timestamp = date +%b-%d-%y # Timestamp var to show when the backup was done
    tar -cvf ./backups/backedup-$timestamp.tar.gz /imgfolder #backing up the directory where sorted files are kept
    rmdir imgfolder # deleting the file sorted directory after backup is done

}