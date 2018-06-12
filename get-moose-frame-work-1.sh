#!/bin/bash


copy_mpf_files () {
  
  mpf_folder="/Users/shourav/_sh/moose-plugin-framework-1"

  echo "------------------------------------------------------------------------------------------"
  echo "Moose Framework Folder: $mpf_folder"
  echo "------------------------------------------------------------------------------------------"

  ls -ltra $mpf_folder
  
  echo "------------------------------------------------------------------------------------------"
  echo "Copying Files ..."
  cp -r $mpf_folder/* .
  cp $mpf_folder/.gitignore .

  echo "------------------------------------------------------------------------------------------"
  echo "Contents of current folder ..."
  echo "------------------------------------------------------------------------------------------"
  pwd
  echo "------------------------------------------------------------------------------------------"
  ls -ltra
}

rename_main_files () {

 plugin_name=${PWD##*/}
 original_main_file_name="mpf-starter-kit.php"
 main_file_name="$plugin_name.php"
 original_main_class_name="class-mpf-starter-kit.php"
 main_class_name="class-$plugin_name.php"

  echo "------------------------------------------------------------------------------------------"
  echo "Renaming Files ..."
  echo "------------------------------------------------------------------------------------------"
 
  mv ./$original_main_file_name ./$main_file_name  
  mv ./$original_main_class_name ./$main_class_name  

  echo "------------------------------------------------------------------------------------------"
  ls -ltra
  echo "------------------------------------------------------------------------------------------"
}

echo "------------------------------------------------------------------------------------------"
pwd
echo "------------------------------------------------------------------------------------------"

read -p "PLEASE Verify This Folder is The Folder for new MPF 1.0 (y or n): " decision

case $decision in

y) 
  copy_mpf_files
  rename_main_files
  ;;
*)
  echo "Try Again!"
  exit 1
esac
