
FROM centos:7
RUN mkdir /workstation
WORKDIR /workstation/
COPY pass.py /workstation/ 
RUN yum install -y epel-release python3-pip
RUN pip3 install jupyterlab
RUN pip3 install os-win
RUN yum remove -y epel-release
RUN jupyter notebook --generate-config
CMD jupyter-notebook --allow-root
