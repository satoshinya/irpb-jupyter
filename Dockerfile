FROM jupyter/base-notebook:python-3.8.6

USER $NB_UID
RUN conda install -y -c conda-forge numpy==1.20.2 \
                                    scipy==1.6.2 \
                                    scikit-learn==0.24.1 \
                                    matplotlib==3.4.1 \
                                    gensim==3.8.3 \
                                    Janome==0.4.1 \
                                    wordcloud==1.8.1 && \
    conda clean -f -y --all && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER


CMD jupyter notebook
