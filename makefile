PROJECT_PURPOSE = creating a github repository and uploading files
FOLDER_NAME = C:\Users\User\Documents\InfoTech - RANDOM TESTS\HEROKU_TEST
USER_NAME = donald-besong
EMAIL = donbes@yahoo.com

USER_NAME2 = goodCharity
EMAIL2 = universal.plus.unity@gmail.com
NAME = Donald O. Besong
MESSAGE = "Adding files ..."
GITHUB_REPO = https://github.com/Donald-Besong/test_herokuapp.git
LOCAL_GIT = .git
FILE_TO_AMEND = .\myapp\main.py
#note: do not concatenate file names because it introduces a space 

#default commands
build0:	clean_up initialise 
 
build1: add_files configure commit add_location upload
 
clean_up:
ifeq (,$(wildcard .\$(LOCAL_GIT)))
	@echo "no such file. Creating..." 
else
	@echo "file exists. Deleting..., Creating..."
	rd /s /q .\$(LOCAL_GIT) 
endif
 
initialise:
	@echo ... initialising
	@echo type "dir /a:d" to show all directories or "dir /a:h" to show hidden directories and files
	git init

add_files:
	@echo type "git add file_name" to add a specific file
	git add .

configure:
	git config --global user.name $(USER_NAME)
	git config --global user.email $(EMAIL)
	
commit:
	git commit -m $(MESSAGE) 
	
add_location:
	git remote add origin $(GITHUB_REPO)
	@echo very location by typing "git remote -v"

upload:
	git push -u origin master

update0:
	git checkout amend_main1
	@echo git checkout -b amend_main1 (if branch does not exist)

update1:
	git add .
	@echo run git add filename, if you wanna add only a specific file, eg 	git add $(FILE_TO_AMEND)
	git commit -m "added the amended files"
	git push origin amend_main1
	@echo git push -u origin amend_main1 (if branch does not exist in remote rep)

force_match_origin:
	@echo do "git fetch origin" if necessary
	git reset -- hard
	git pull 
	
remove_uncomited:
	git checkout -f
	
	
checkout_and_branch:
	git checkout -b test_amend_name
	git add bokeh_heroku/main.py
	git commit -m "added the amended main.py"
	git push origin test_amend_name
	@echo run  "git branch" to find out which branch you are in (git branch -a	List all branches - both local and remote)
	@echo run  "git branch new_branch_name" to create a new branch. You switch to the neew branch "git checkout new_branch_name"
	@echo the two commands in the above line together are equivalent to "git checkout -b new_branch_name"
	@echo to merge the branch named test_amend_name with the master branch, go to master branch and run merge test_amend_name
	@echo to revert a commit or anything, so git revert"
	@echo after merging branch with local master, push to remote origing by running "git pull origin master" and then "git push origin master"
	@echo see a git commands cheatsheet at https://github.com/joshnh/Git-Commands
	
   