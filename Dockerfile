FROM codercom/code-server
USER coder
RUN sudo mkdir /user-data
ADD extensions /extensions
RUN sudo chown -R coder /extensions /user-data
RUN code-server --user-data-dir /user-data --install-extension /extensions/vs-code-bpmn-io-0.12.0.vsix
