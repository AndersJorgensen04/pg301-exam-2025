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