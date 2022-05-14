#!/bin/bash
filename="run.sh"
case  $1  in
    help)
        echo -e "Git\n- Push -> ./$filename gp\n- Remove file/Dir in repo -> ./$filename grc\n- Pull repo -> ./$filename gpl\n- Push an existing repository -> ./$filename gper\n\nReact Native\n- React Native run andriod -> ./$filename rna\n- start app -> ./$filename rns"
    ;;
    gper)
        read -p "Paste repo http Url including .git : " giturl
        read -p "Commit message : " commitMsg
        git init
        git add .
        git remote add origin $giturl
        git branch -M main
        git commit -m ""
        git push -u origin main
    ;;
    gp)
        git add .
        read -p "commit message : " com_msg  
        git commit -m " $com_msg "
        read -p "do push [y/n] : " commit  
        if [ $commit == "y" ]
        then  
            git push
            echo -e "\n\n\nPushed sucessfully"  
        fi
    ;;
    gpl)
        git add .
        read -p "commit message : " com_msg  
        git commit -m " $com_msg "
        read -p "origin : " origin
        git pull origin $origin
        echo -e "Git Pull sucess"
    ;;
    grc)
        read -p "enter file name or dir : " removeing  
        git rm --cached removeing
    ;;
    rna)
        while true
        do
            adb devices
            npx react-native run-android
        done
    ;;
    rns)
        while true
        do
            adb devices
            npx react-native start
        done
    ;;
    *)
        echo -e "\nPlease give any valid argument\nrefer ./$filename help"
    ;;              
esac