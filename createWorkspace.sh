#to run: . ./createWorkspace.sh
#Prompts user for title of new directory
#Creates directory, README file with some contents
#then changes to new directory

echo "What is the project or lab title?"
read ASSIGNMENT_TITLE

mkdir $ASSIGNMENT_TITLE

echo "README" > README.md
echo "" >> README.md
finger $USER | grep Name | awk '{ print $4,$5 }' >> README.md
date >> README.md
echo $ASSIGNMENT_TITLE >> README.md
mv README.md $ASSIGNMENT_TITLE
cd $ASSIGNMENT_TITLE


echo "You are now in new directory"
