@echo off
echo Generating Mermaid Diagrams for the Diploma...

rem Ensure the figures directory exists
if not exist "figures" mkdir "figures"

rem Run mermaid CLI to generate a High-Res PNG (so it plays nice with pdflatex)
call npx -y @mermaid-js/mermaid-cli -i diagrams\architecture.mmd -o figures\horeca_architecture_scheme.png -s 4 -b transparent

echo Diagram Generation Complete!
