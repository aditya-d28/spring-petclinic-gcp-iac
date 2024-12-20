output "google_kms_key_ring_spring_petclinic_init_key_ring_id"{
    value = module.stackgen_1cee0b8c-b9be-595e-aa25-cc334fcf3b64.key_ring_id
    sensitive  = false
}
output "google_kms_crypto_key_spring_petclinic_init_key_id"{
    value = module.stackgen_1cee0b8c-b9be-595e-aa25-cc334fcf3b64.key_id
    sensitive  = false
}
output "google_kms_crypto_key_spring_petclinic_init_version"{
    value = module.stackgen_1cee0b8c-b9be-595e-aa25-cc334fcf3b64.version
    sensitive  = false
}

output "google_storage_bucket_bucket_name_bucket_url"{
    value = module.stackgen_e028fb84-ce37-54f0-9e0d-2f31c9ac840d.bucket_url
    sensitive = false
}
output "google_storage_bucket_bucket_name_bucket_uri"{
    value = module.stackgen_e028fb84-ce37-54f0-9e0d-2f31c9ac840d.bucket_uri
    sensitive = false
}

output "google_project_iam_custom_role_cryptoKeyUser_id"{
    value = module.stackgen_1dc6a9f8-5c88-41f7-9dda-4015794f3b72.id
    sensitive = false
}
output "google_project_iam_custom_role_storageBucketUser_id"{
    value = module.stackgen_7857d9bb-bf1d-4443-9de0-e23367638e4d.id
    sensitive = false
}

output "google_compute_network_vpc_name_id"{
    value = module.stackgen_76da7cb4-51f4-50e6-aae5-618d34eae8b3.id
    sensitive = false
}
output "google_compute_network_vpc_name_gateway_ipv4"{
    value = module.stackgen_76da7cb4-51f4-50e6-aae5-618d34eae8b3.gateway_ipv4
    sensitive = false
}
output "google_compute_network_vpc_name_numeric_id"{
    value = module.stackgen_76da7cb4-51f4-50e6-aae5-618d34eae8b3.numeric_id
    sensitive = false
}
output "google_compute_network_vpc_name_self_link"{
    value = module.stackgen_76da7cb4-51f4-50e6-aae5-618d34eae8b3.self_link
    sensitive = false
}
output "google_compute_network_vpc_name_psc_peering"{
    value = module.stackgen_76da7cb4-51f4-50e6-aae5-618d34eae8b3.psc_peering
    sensitive = false
}

output "google_redis_instance_cache_name_id"{
    value = module.stackgen_c56101c6-3af6-5c6e-87b8-5b045c2029c1.id
    sensitive = false
}
output "google_redis_instance_cache_name_host"{
    value = module.stackgen_c56101c6-3af6-5c6e-87b8-5b045c2029c1.host
    sensitive = false
}
output "google_redis_instance_cache_name_port"{
    value = module.stackgen_c56101c6-3af6-5c6e-87b8-5b045c2029c1.port
    sensitive = false
}
output "google_redis_instance_cache_name_read_endpoint"{
    value = module.stackgen_c56101c6-3af6-5c6e-87b8-5b045c2029c1.read_endpoint
    sensitive = false
}
output "google_redis_instance_cache_name_read_endpoint_port"{
    value = module.stackgen_c56101c6-3af6-5c6e-87b8-5b045c2029c1.read_endpoint_port
    sensitive = false
}

output "google_sql_database_instance_psqlserver1_psql_server_link"{
    value = module.stackgen_90e0852d-ec7b-54b7-b540-8285e85c22b3.psql_server_link
    sensitive = false
}
output "google_sql_database_psqldb1_psql_db_link"{
    value = module.stackgen_90e0852d-ec7b-54b7-b540-8285e85c22b3.psql_db_link
    sensitive = false
}
output "google_sql_database_psqldb1_psql_db_id"{
    value = module.stackgen_90e0852d-ec7b-54b7-b540-8285e85c22b3.psql_db_id
    sensitive = false
}
output "google_sql_database_instance_psqlserver1_psql_server_public_ip"{
    value = module.stackgen_90e0852d-ec7b-54b7-b540-8285e85c22b3.psql_server_public_ip
    sensitive = false
}
output "google_sql_database_instance_psqlserver1_psql_server_private_ip"{
    value = module.stackgen_90e0852d-ec7b-54b7-b540-8285e85c22b3.psql_server_private_ip
    sensitive = false
}

output "google_sql_database_instance_psqlserver2_psql_server_link"{
    value = module.stackgen_9b3eebdd-882a-526b-9ee9-33ecd1fc9edf.psql_server_link
    sensitive = false
}
output "google_sql_database_psqldb2_psql_db_link"{
    value = module.stackgen_9b3eebdd-882a-526b-9ee9-33ecd1fc9edf.psql_db_link
    sensitive = false
}
output "google_sql_database_psqldb2_psql_db_id"{
    value = module.stackgen_9b3eebdd-882a-526b-9ee9-33ecd1fc9edf.psql_db_id
    sensitive = false
}
output "google_sql_database_instance_psqlserver2_psql_server_public_ip"{
    value = module.stackgen_9b3eebdd-882a-526b-9ee9-33ecd1fc9edf.psql_server_public_ip
    sensitive = false
}
output "google_sql_database_instance_psqlserver2_psql_server_private_ip"{
    value = module.stackgen_9b3eebdd-882a-526b-9ee9-33ecd1fc9edf.psql_server_private_ip
    sensitive = false
}

output "google_service_account_gke_service_account_sa_id"{
    value = module.stackgen_241312ab_f8d0_402d_87a9_26a50ede16ae.sa_id
    sensitive = false
}
output "google_service_account_gke_service_account_sa_email"{
    value = module.stackgen_241312ab_f8d0_402d_87a9_26a50ede16ae.sa_email
    sensitive = false
}
output "google_service_account_gke_service_account_member"{
    value = module.stackgen_241312ab_f8d0_402d_87a9_26a50ede16ae.member
    sensitive = false
}