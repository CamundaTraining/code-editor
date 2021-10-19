FROM codercom/code-server
USER coder
ADD extensions /home/coder/.config/code-server/extensions
RUN sudo chown -R coder /home/coder/.config
RUN code-server --install-extension /home/coder/.config/code-server/extensions/vs-code-bpmn-io-0.12.0.vsix
