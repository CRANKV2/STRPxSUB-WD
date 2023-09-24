# Description: File cleanup and rollback logic from @CRANKV2 by STRP Company

# Copyright (c) 2023-2024 @CRANKV2
# All rights reserved.
# File cleanup and rollback logic
if [ -f $BACKUP_FILE ]; then
  while read FILE_PATH; do
    # Skip files with backup indicators
    if [ "$(echo -n $FILE_PATH | tail -c 1)" == "~" ]; then
      continue
    # Check if a backup file exists and replace the original
    elif [ -f "$FILE_PATH~" ]; then
      mv -f "$FILE_PATH~" "$FILE_PATH"
    # Remove the original file and its empty parent directories
    else
      rm -f "$FILE_PATH"
      while true; do
        FILE_PATH=$(get_parent_directory "$FILE_PATH")
        # Check if the parent directory is empty and remove it if so
        [ "$(list_files_in_directory "$FILE_PATH" 2>/dev/null)" ] && break 1 || remove_empty_directory "$FILE_PATH"
      done
    fi
  done < $BACKUP_FILE
  # Remove the backup file after processing
  rm -f $BACKUP_FILE
fi

