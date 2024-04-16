# Generated from release version - using prebuilt container image
# If you want use your self-built container image, follow the steps at
# https://github.com/privacysandbox/aggregation-service/blob/main/docs/gcp-aggregation-service.md#set-up-your-deployment-environment
# and change worker_image to your Google Artifact Registry path and tag
worker_image = "us-docker.pkg.dev/ps-msmt-published-artifacts/aggregation-service-container-artifacts/worker_mp_gcp_prod:2.4.0"

frontend_service_jar = "../../jars/FrontendServiceHttpCloudFunction_2.4.0.jar"
worker_scale_in_jar  = "../../jars/WorkerScaleInCloudFunction_2.4.0.jar"

# Coordinator service accounts to impersonate for authorization and authentication
coordinator_a_impersonate_service_account = "a-opallowedusr@ps-msmt-coord-prd-gg-svcacc.iam.gserviceaccount.com"
coordinator_b_impersonate_service_account = "b-opallowedusr@ps-msmt-coord-prd-gg-svcacc.iam.gserviceaccount.com"

