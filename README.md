# Introduction
This document details the approach taken to migrate Infrastructure as Code (IaC) from an Azure-based configuration to a Google Cloud Platform (GCP) configuration. The migration process began with identifying and mapping Azure resources to their corresponding equivalents in GCP, followed by aligning the respective configurations to ensure a seamless transition.

# Resource Mapping
The following Azure resources were mapped to their corresponding GCP services to maintain similar functionality and ensure compatibility with the desired infrastructure requirements:

| Azure Resource          | GCP Resource                | Reason for Mapping                                                                      |
|-------------------------|-----------------------------|-----------------------------------------------------------------------------------------|
| Azure Key Vault Key     | Google KMS Crypto Key       | Both provide managed encryption key management services for secure data protection.     |
| Azure Postgres DB       | Google Cloud SQL            | Both offer managed relational database solutions with support for PostgreSQL.           |
| Azure Redis Cache       | Google Redis Instance       | Both provide fully managed in-memory data stores for caching.                           |
| Azure Storage Container | Google Cloud Storage Bucket | Both serve as object storage solutions for unstructured data.                           |
| Azure Role Definition   | IAM Custom Role             | Both allow the creation of roles with fine-grained permissions for resource management. |
| Managed Identity        | Service Account             | Both are used for secure identity management and granting access to resources.          |

# Resource Configurations

## Google KMS Crypto Key
- In GCP, the Key Management Service (KMS) Key Ring is used to group crypto keys, similar to Azure Key Vault.
- The key generated by Azure IaC uses:
    - Key Type: `RSA`
    - Curve: `P-256`
- These configurations are equivalent to the `EC_SIGN_P256_SHA256` algorithm in GCP, with the purpose set to **"ASYMMETRIC_SIGN"**.

## Custom Role
- For Azure Key Vault Key:
    - Azure permissions: keys/read and decrypt/action.
    - GCP equivalent: Crypto Key User role with permissions:
        - cryptoKeyVersions.useToDecrypt
        - cryptoKeys.get
        - cryptoKeyVersions.viewPublicKey
- For Azure Storage Container:
    - Azure permissions: blobs/read, blobs/delete, and blobs/deleteBlobVersion/action.
    - GCP equivalent: Storage Bucket User role with permissions:
        - objects.get
        - objects.list
        - objects.delete

## Redis Instance
- The Google Redis Instance was configured to match Azure Redis Cache as follows:
    - Public network access is disabled, and it operates within a VPC network.
    - Uses a Private Service Access Connection to connect with internal GCP services.
    - TLS encryption is enabled for secure communication.
    - A maintenance window is scheduled for Sundays at 02:00 UTC.

## PostgreSQL DB
- The PostgreSQL DB was replicated in GCP with configurations to ensure parity with Azure Postgres DB:
    - Backup configurations and network restrictions were matched.
    - Access to the public internet is disabled; it operates within a VPC network.
    - Internal GCP services connect via Private Service Access Connection (PSC).
    - SSL mode is enabled to ensure secure connections.