name: Question ❓
description: Ask a question or get help
title: "[QUESTION] "
labels: ["question"]

body:
  - type: markdown
    attributes:
      value: |
        Have a question? We're here to help! Please fill out the form below.

  - type: checkboxes
    attributes:
      label: Did you check the docs?
      description: Please check the README and existing discussions first
      options:
        - label: I have checked the README and documentation
          required: true

  - type: textarea
    attributes:
      label: Your Question
      description: What would you like to know?
      placeholder: |
        Ask your question here
    validations:
      required: true

  - type: textarea
    attributes:
      label: Context
      description: Provide any relevant context
      placeholder: |
        What are you trying to do? What have you already tried?

  - type: checkboxes
    attributes:
      label: Checklist
      options:
        - label: I have read the README
        - label: I have searched for existing answers
