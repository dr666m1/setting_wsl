function gce_up
    gcloud compute scp --recurse --project $gcp_project --zone $gce_zone $gce_sync_dir/sync $gce_name:~/
end
