/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

project = "ecs-1709881683838"

# Required to generate identity token for access of Adtech Services API endpoints
service_account_token_creator_list = ["user:sa-aggregation-service@microsites-sa.iam.gserviceaccount.com"]

# Uncomment the below line if you like Terraform to create an Artifact registry repository
# for self-build container artifacts. "artifact_repo_location" defaults to "us".
# artifact_repo_name     = "<YourArtifactRepoName>"

# Note: Either one of [1] or [2] must be uncommented.

# [1] Uncomment below lines if you like Terraform grant needed permissions to
# pre-existing service accounts
deploy_service_account_email = "sa-aggregation-service@microsites-sa.iam.gserviceaccount.com"
worker_service_account_email = "worker-sa-aggregation-service@microsites-sa.iam.gserviceaccount.com"

# [2] Uncomment below lines if you like Terraform to create service accounts
# and needed permissions granted e.g "deploy-sa" or "worker-sa"
# deploy_service_account_name = "deploy-tracking-hy-sa"
# worker_service_account_name = "worker-tracking-hy-sa"

# Uncomment the below line if you want Terraform to create the
# below bucket. "data_bucket_location" defaults to "us".
# data_bucket_name     = "<YourDataBucketName>"

# Uncomment the below lines if you want to specify service account customer role names
# deploy_sa_role_name = "deploy_sa_custom_role"
# worker_sa_role_name = "worker_sa_custom_role"
