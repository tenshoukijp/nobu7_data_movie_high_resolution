while (<*.avi>) {
    $orgfile = $_;
    $newfile = $_;
    $newfile =~ s/\.avi/\.wav/;
	# ムービーから音声部分をコピーする。エンコードしなおさない
	`ffmpeg -vn -i "$orgfile" -acodec copy "$newfile"`;
}