//test pipeline1
//main jenkinsfile for ids
//name pipeline
//url




def targetenv ;
def outputshell;


pipeline {
    agent any
    // agent any{ }
    parameters{
        choice( name: 'TARGET_ENVIRONMENT', choices: ['AlligatorToon', 'Burstinatrix', 'Clayman', "ABFlameWingman" ], description: "");
        string( name: 'OUTPUT_SHELL', defaultvalue: '/var/log/log_SHELL_ansible.log', description: "This used for shell output");
        // string ()
    }
    stages{
        stage('Preparing'){
                steps{
                    script{
                        targetenv=params.TARGET_ENVIRONMENT;
                        outputshell=params.OUTPUT_SHELL;

                    }
                }

        }        
        
        stage('Launching playbook1'){
                steps{
                    script{
                        myAnsiblelaunch("https://github.com/amineAUPEC/zeIDS.git","zeIDS", ".", "playbook-test.yml", "-e 'target_env=${params.TARGET_ENVIRONMENT}'");

                    }
                }

        }



    }

}



def myAnsiblelaunch(giturl, gitprojectname, playbookdir, playbook, parameters){


    //def sshgit = 'gitssh'
    //git credentialsId: sshgit, url: giturl, branch: 'main'
            bat 'wmic computersystem get name'
            bat 'bash'
            sh "clone ${giturl} && cd ${gitprojectname}"
            dir(playbookdir){

                sh "./ansible-playbooklauncher.sh" + playbook + " " + parameters+
            }


}