#!/usr/bin/bash

read directory


if [[ ! -d "$directory" ]]; then
    echo "Given Directory Is Not Exists"
    exit 1
fi

echo "          "
echo "**************************** File Organizer *********************"
echo "*                                                               *"
echo "*                                                               *"
echo "*                            MAHMOUD ASHRAF                     *"
echo "*                                                               *"
echo "*                                                               *"
echo "*****************************************************************"
echo "          "


function file_organizer() {

    # Loop through all files in the directory
    for file in "${directory}"/*; do
        
        if [ -f "$file" ]; then

            # Get base name and extension of the file
            extension="${file##*.}"

            if [[ "${extension}" = "txt" ]]; then
                ## search for txt files
                if [[ -d "${directory}/txt" ]]; then
                    mv "${file}" "${directory}/txt"
                else
                    mkdir "${directory}/txt"
                    mv "${file}" "${directory}/txt"
                fi

            ## search for pdf files   
            elif [[ "${extension}" = "pdf" ]]; then
            
                if [[ -d "${directory}/pdf" ]]; then
                    mv "${file}" "${directory}/pdf"
                else
                    mkdir "${directory}/pdf"
                    mv "${file}" "${directory}/pdf"
                fi
            ## search for jpg/png files
            elif [[ "${extension}" = "jpg" || "${extension}" = "png" ]]; then
                if [[ -d "${directory}/jpg" ]]; then
                    mv "${file}" "${directory}/jpg"
                else
                    mkdir "${directory}/jpg"
                    mv "${file}" "${directory}/jpg"
                fi
            ## search for mp4 files
            elif [[ "${extension}" = "mp4" ]]; then
                
                if [[ -d "${directory}/videos" ]]; then
                    mv "${file}" "${directory}/videos"
                else
                    mkdir "${directory}/videos"
                    mv "${file}" "${directory}/videos"
                fi
            ## search for mp3 files
            elif [[ "${extension}" = "mp3" ]]; then
            
                if [[ -d "${directory}/Musics" ]]; then
                    mv "${file}" "${directory}/Musics"
                else
                    mkdir "${directory}/Musics"
                    mv "${file}" "${directory}/Musics"
                fi
            else
                if [[ ! -d "${directory}/UNKNOWN" ]]; then
                    mkdir "${directory}/UNKNOWN"
                fi
                mv "${file}" "${directory}/UNKNOWN"
            fi
        fi
    done

}


file_organizer "${directory}"
