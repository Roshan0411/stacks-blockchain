# 📜 Certificate Verification Smart Contract (Clarity)

## 🚀 Introduction

This is a Clarity smart contract for decentralized certificate issuance and verification on the Stacks blockchain. It enables institutions to issue digital certificates securely and immutably, while allowing third parties to verify their authenticity trustlessly.

## 🧾 Description

This smart contract maintains a mapping of unique certificate IDs to their corresponding data, which includes:
- The certificate owner's wallet address (`principal`)
- The certificate title (`string-utf8`)
- The date of issue (`string-utf8`)

### Key Features

- **Issue Certificates:**  
  Authorized users (any wallet address) can issue a certificate by providing a unique ID, title, and issue date.  
  Duplicate certificate IDs are prevented.

- **Verify Certificates:**  
  Anyone can verify a certificate using its ID. If found, the contract returns all certificate data, otherwise returns an error.

### Core Functions

#### `issue-certificate`
```clarity
(define-public (issue-certificate (cert-id uint) (title (string-utf8 50)) (issued (string-utf8 20))))

# contract address
ST1WY237NHMYQ6QCVVJF2J4WVM00ZCGE23V6N2RWE.easyier
<img width="1892" height="1047" alt="image" src="https://github.com/user-attachments/assets/d70ea7ff-a7b8-4dc4-ae73-a934c370e2be" />
