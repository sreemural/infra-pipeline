pipeline{
    agent any

    environment{
        ENV        = "${env.BRANCH_NAME}"
        TF_WORKDIR = "environments/${env.BRANCH_NAME}"    
        }
    
    stages{
        stage('Checkout'){
            steps{
                git branch: "${env.BRANCH_NAME}", url: "https://github.com/sreemural/infra-pipeline.git"
                
            }
        }

        stage('Terraform Init'){
            steps{
                dir("${TF_WORKDIR}") {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan'){
            steps{
                dir("${TF_WORKDIR}") {
                         sh '''
                            terraform plan -input=false -out=tfplan
                            terraform show -no-color tfplan > tfplan.txt
                            cat tfplan.txt
                         '''
                     
                }
            }
        }
        stage('Approval'){
            when{
                expression { env.BRANCH_NAME == 'production' }
            }
            steps{
                input message: "Approve deployment to production?", ok: "Deploy"
            }
        }

        stage('Terraform Apply'){
            steps{
                dir("${TF_WORKDIR}") {
                       sh '''
                          terraform apply -input=false -auto-approve tfplan
                       '''
                }
            }
        }
    }
}