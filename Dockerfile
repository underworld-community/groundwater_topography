# Please choose your required Underworld/UWGeo version here
FROM underworldcode/underworld2:2.8.1b

# This command will copy in all the files in your repo.
# You probably don't need to modify it. 
COPY --chown=jovyan:users . /home/jovyan/community_model

# Set working directory to where we've put files. 
WORKDIR /home/jovyan/community_model