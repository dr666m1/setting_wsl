function gce_down
    gcloud compute scp --recurse --project $gcp_project --zone $gce_zone $gce_name:~/sync/ $gce_sync_dir
end
