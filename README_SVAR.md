Leveranser
**Oppgave 1**: workflow - https://github.com/AndersJorgensen04/pg301-exam-2025/blob/oppgave1/.github/workflows/terraform-s3.yml

**Opgave 2 - Del A**: 
    - Http endpoint for lambda funksjonen: https://github.com/AndersJorgensen04/pg301-exam-2025/blob/oppgave1/.github/workflows/terraform-s3.yml
    - Path til et lagret analyseresultat: https://eu-west-1.console.aws.amazon.com/s3/object/kandidat-39-data?region=eu-west-1&prefix=midlertidig/comprehend-20251118-163037-d5f28591.json
    
**Oppgave 2 - Del B**:
    - SAM-workflow fil: https://github.com/AndersJorgensen04/pg301-exam-2025/blob/main/.github/workflows/sam-deploy.yml
    - Succesful deploy: https://github.com/AndersJorgensen04/pg301-exam-2025/actions/runs/19482182277/job/55756081873
    - Successful PR validation: https://github.com/AndersJorgensen04/pg301-exam-2025/actions/runs/19482173196/job/55756051566 
    - For å få workflow til å kjøre må du: 
        - Sette opp AWS credentials i github secrets
        - Gjøre en pull request med endringer under sam-comprehend/ mappen
        - Merge PR til main for å kjøre deploy

**Oppgave 3 - Del A **: 
    - link to dockerfile: https://github.com/AndersJorgensen04/pg301-exam-2025/blob/main/sentiment-docker/dockerfile

**Oppgave 3 - Del B **: \
    - Link til .github/workflow/docker-build.yml: https://github.com/AndersJorgensen04/pg301-exam-2025/blob/main/.github/workflows/docker-build.yml \
    - Link til 'successful' build: https://github.com/AndersJorgensen04/pg301-exam-2025/actions/runs/19514823076/job/55863779523
    - Forklaring på strategi: Jeg valgte å bruke sha-tagging strategi for å kunne garantere unike tagger for versjonene, ingen forandringer slik som kan oppstå av å bruke 'latest' taggen. Med denne strategien kan også taggen bli brukt for å finne tilbake til commiten som var gjort for den versjonen av builden. \
    - Navn på  Container image: andinijor/pg301-exam:sha-0284a4cc3541e3686756b9a17f33501f258adf5e
    - Hvordan teste workflowen: 
        1. Etter å ha forket repository mitt, Sørg for å lage en Docker Hub Access token https://hub.docker.com/signup \
        2. Gå til Settings -> Secrets and variables -> Actions -> New repository secret, og legg til "DOCKER_USERNAME" med ditt brukernavn og "DOCKERHUB_TOKEN" med token du lagde.\
        3. gjør en liten endring under mappen sentiment-docker (f.eks legg til en tom linje), commit og så push til main
        4. Se workflow i action :)
        5. Sjekk Docker Hub repository "navn/pg301-exam, da skal du kunne se den nye tagget sha-"832y941233323fg243234184"- lignende \
??? Postman endpoint: https://4hxekc4aud.execute-api.eu-west-1.amazonaws.com/Prod/analyze/
