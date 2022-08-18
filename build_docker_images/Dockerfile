#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM public.ecr.aws/codebuild/amazonlinux2-x86_64-standard:3.0



#Install Kubectl
RUN mkdir -p installers
WORKDIR installers
RUN curl -LO https://dl.k8s.io/release/v1.21.0/bin/linux/amd64/kubectl
#RUN echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
RUN chmod +x kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN rm /root/.pyenv/shims/aws

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN sudo ./aws/install



#Install Helm Chart
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh
RUN chmod 700 get_helm.sh
RUN ./get_helm.sh
ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh"]

#Install Terraform 
RUN curl -s -qL -o terraform_install.zip https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_linux_amd64.zip
RUN unzip terraform_install.zip -d /usr/bin/
RUN chmod +x /usr/bin/terraform
