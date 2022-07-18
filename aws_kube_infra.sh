occurance=$(grep -i eksctl-capstone output.txt | wc -l)
if [[ $occurance -gt 0 ]]
    then 
    echo "Since Infra is already existing hence not creating Clstr"
    else
    echo "creat AWS kube clustr"
    eksctl create cluster --name gg-capstone-udacity --version 1.21 --region $AWS_DEFAULT_REGION --nodegroup-name capstone --node-type t3.large --nodes-min 2 --nodes-max 3 --managed
fi
