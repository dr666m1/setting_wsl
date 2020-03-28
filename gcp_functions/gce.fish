function gce
    gcloud compute ssh --project $gcp_project --zone $gce_zone $gce_name
end
