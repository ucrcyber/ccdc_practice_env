# wowwow dockerfiles

``dockerfiles/`` contains ``docker-compose.yml`` files that are made from images pulled from other people or custom-ish images that can be found in ``images/``.

the goal is for different docker-compose files to exist in the dockerfiles folder, and you would cp the file you want to use into the root of the project and then build/bring up the environment

the goal in the long run is to only expose one port for the environment (a jumpbox) that you can rdp or some equivalent into and then interact with the environment normally from there

man docker is op af