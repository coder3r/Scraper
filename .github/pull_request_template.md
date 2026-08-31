name: Pull Request
description: Submit code changes
title: "[PR] "
labels: ["review"]

body:
  - type: markdown
    attributes:
      value: |
        Thanks for submitting a pull request! Please fill out the form below to help us review your changes.

  - type: checkboxes
    attributes:
      label: PR Checklist
      options:
        - label: I have read the CONTRIBUTING guide
          required: true
        - label: My code follows the style guidelines
          required: true
        - label: I have added tests for new features
        - label: I have updated documentation
        - label: My branch is up to date with main

  - type: textarea
    attributes:
      label: Description
      description: Describe the changes in this PR
      placeholder: |
        What does this PR do? Why is it needed?
    validations:
      required: true

  - type: textarea
    attributes:
      label: Related Issue
      description: Link to related issue (if any)
      placeholder: |
        Fixes #123
        Related to #456

  - type: textarea
    attributes:
      label: Changes Made
      description: List the specific changes
      placeholder: |
        - Change 1
        - Change 2
        - ...
    validations:
      required: true

  - type: textarea
    attributes:
      label: Testing
      description: How have you tested these changes?
      placeholder: |
        Describe your testing approach
    validations:
      required: true

  - type: textarea
    attributes:
      label: Screenshots or Logs
      description: Add any relevant screenshots, logs, or output

  - type: checkboxes
    attributes:
      label: Review Checklist
      options:
        - label: I am ready for review
