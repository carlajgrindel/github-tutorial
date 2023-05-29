clear

********************************************************************************
* introduction to Stata and Git from https://medium.com/the-stata-guide/stata-and-github-integration-8c87ddf9784a
********************************************************************************


/* Git: add, commit, push 

! git add
! git commit
! git push 

*/ 

* Set Folder 
* Folder has to be created manually
* has to be the same name as repository!! 
cap cd "C:\Users\carla\OneDrive\Dokumente\GitHub\github-tutorial\"

* Preparation 
//ssc install schemepack, replace
set scheme black_w3d

* Commands to call windows shell 
h shell 

* Create and save graphs 
sysuse auto
scatter price mpg 
graph export ./figures/figure1.png, replace wid(1000)
scatter length weight
graph export ./figures/figure2.png, replace wid(1000)
scatter price weight
graph export ./figures/figure3.png, replace wid(1000)
scatter length mpg
graph export ./figures/figure4.png, replace wid(1000)

* Check working directory 
dir

* Create readme
! echo # github-tutorial  >> README.md

* initialize git code
! git init
	//These two commands should create the README.md file and create this hidden .git directory to your folder. Both are essential for your folder to correctly synchronize online.
	
* add readme file: 	
! git add README.md

* commit readme (with description )
! git commit -m 'my upload'

* push to existing repository 
! git remote add origin https://github.com/carlajgrindel/tutorial.git
! git branch -M main
! git push -u origin main


! git remote add origin https://github.com/carlajgrindel/github-tutorial.git
! git branch -M main
! git push -u origin main











	