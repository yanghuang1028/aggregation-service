/**
 * Copyright 2022 Google LLC
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

# Example values required by job_service.tf
#
# These values should be modified for each of your environments.
region      = "us-west2"
region_zone = "us-west2-c"

user_provided_worker_sa_email = "worker-sa-aggregation-service@microsites-sa.iam.gserviceaccount.com"
project_id  = "ecs-1709881683838"
environment = "dev"

# Co-locate your Cloud Spanner instance configuration with the region above.
# https://cloud.google.com/spanner/docs/instance-configurations#regional-configurations
spanner_instance_config = "regional-us-central1"
# Adjust this based on the job load you expect for your deployment.
# Monitor the spanner instance utilization to decide on scale out / scale in.
# https://console.cloud.google.com/spanner/instances
spanner_processing_units = 100

instance_type = "n2d-standard-8" # 8 cores, 32GiB

# Container image location that packages the job service application
# If not set otherwise, uncomment and edit the line below:
#worker_image = "<location>/<project>/<repository>/<image>:<tag or digest>"

# Coordinator service accounts to impersonate for authorization and authentication
# If not set otherwise, uncomment and edit the lines below:
#coordinator_a_impersonate_service_account = "<CoordinatorAServiceAccountEmail>"
#coordinator_b_impersonate_service_account = "<CoordinatorBServiceAccountEmail>"

alarms_enabled           = false
alarms_notification_email = "yanghuang@ebay.com"
