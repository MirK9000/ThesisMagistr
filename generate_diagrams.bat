@echo off
echo Generating Mermaid Diagrams for the Diploma...

rem Ensure the figures directory exists
if not exist "figures" mkdir "figures"

rem Run mermaid CLI to generate a High-Res PNG (so it plays nice with pdflatex)
call npx -y @mermaid-js/mermaid-cli -i diagrams\architecture.mmd -o figures\horeca_architecture_scheme.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_asis_customer_journey.mmd -o figures\chapter2_asis_customer_journey.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_asis_booking_bpmn.mmd -o figures\chapter2_asis_booking_bpmn.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_asis_feedback_bpmn.mmd -o figures\chapter2_asis_feedback_bpmn.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_problem_tree.mmd -o figures\chapter2_problem_tree.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_tobe_booking_bpmn.mmd -o figures\chapter2_tobe_booking_bpmn.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_tobe_feedback_bpmn.mmd -o figures\chapter2_tobe_feedback_bpmn.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_use_case.mmd -o figures\chapter2_use_case.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_infological_model.mmd -o figures\chapter2_infological_model.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_er_diagram.mmd -o figures\chapter2_er_diagram.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_component_architecture.mmd -o figures\chapter2_component_architecture.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_data_flow_dfd.mmd -o figures\chapter2_data_flow_dfd.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_client_screen_flow.mmd -o figures\chapter2_client_screen_flow.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_admin_screen_flow.mmd -o figures\chapter2_admin_screen_flow.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_booking_sequence.mmd -o figures\chapter2_booking_sequence.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_feedback_sequence.mmd -o figures\chapter2_feedback_sequence.png -s 4 -b white

rem Chapter 2 rewritten draft diagrams
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_v2_context.mmd -o figures\chapter2_v2_context.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_v2_asis_journey.mmd -o figures\chapter2_v2_asis_journey.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_v2_tobe_event_request.mmd -o figures\chapter2_v2_tobe_event_request.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_v2_gamification_journey.mmd -o figures\chapter2_v2_gamification_journey.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_v2_data_model.mmd -o figures\chapter2_v2_data_model.png -s 4 -b white
call npx -y @mermaid-js/mermaid-cli -i diagrams\chapter2_v2_architecture.mmd -o figures\chapter2_v2_architecture.png -s 4 -b white

echo Diagram Generation Complete!
