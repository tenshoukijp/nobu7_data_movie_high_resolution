while (<*.mp4>) {
    $orgfile = $_;
    $newfile = $_;
    $newfile =~ s/\.mp4/\.avi/;
    `ffmpeg -i $orgfile -r 15 -vcodec copy $newfile`;
}