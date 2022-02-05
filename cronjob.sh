crontab -e  # opening cron editor

# run cronfunc function on every month's first hour

* 1 1 * * cronfunc


# defining cronfunc function and it's tasks

cronfunc(){

    cd '/cronassets/' # entering the folder where all files exist
    mkdir tempfolder # creating a directory to temporariliy store sorted files
    for x in *.JPG *.jpg *.TIF *.tif *.PNG *.png *.BMP *.bmp *.GIF *.gif *.IMG *.img *.JPEG *.jpeg ; # run a loop for files having extension of these format
    do
        mv x tempfolder # adding images to a folder after sorting
    done
    timestamp = date +%b-%d-%y # Timestamp var to show when the backup was done
    tar -cvf ./backups/backedup-$timestamp.tar.gz /tempfolder #backing up the directory where sorted files are kept
    rmdir tempfolder # deleting the file sorted directory after backup is done

}