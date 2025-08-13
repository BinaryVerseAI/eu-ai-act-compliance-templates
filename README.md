# EU AI Act Compliance Starter Templates

Practical, open-source templates to help engineering and compliance teams start their EU AI Act compliance journey. These templates are designed to be used with the step-by-step guide available on BinaryVerseAI.

**Read the full guide here: [The Definitive 2025 EU AI Act Compliance Checklist](https://binaryverseai.com/eu-ai-act-compliance-checklist)**

---

### **Important Disclaimer**

These templates are provided for educational and illustrative purposes only. They are intended to serve as a starting point for understanding the technical documentation and governance requirements of the EU AI Act. They are **NOT** production-ready and do **NOT** constitute legal advice. You must adapt them to your specific architecture, security posture, and legal obligations, and you must consult with a qualified legal professional to ensure your organization's compliance.

---

### **What's Included in This Repository?**

This repository contains four starter templates that map directly to the obligations in the EU AI Act:

1.  **`data-governance-policy.yaml`**: A structured policy file for documenting your data governance practices, aligning with **Article 10**.
2.  **`main.tf`**: A Terraform script for creating a version-controlled AWS S3 bucket and DynamoDB index to manage your technical documentation and model cards, supporting **Articles 11 & 12**.
3.  **`logging-schema.json`**: A formal JSON Schema to define the structure of your audit-ready event logs, implementing the traceability requirements of **Article 12**.
4.  **`fria-template.md`**: A markdown checklist for deployers who need to perform a Fundamental Rights Impact Assessment (FRIA).

### **License**

This project is licensed under the MIT License. See the `LICENSE` file for details.
