function gce
    gcloud compute ssh --project $gcp_project --zone $gce_zone $gce_name
    # when login as a specific user, use `username@$gce_name`
end
