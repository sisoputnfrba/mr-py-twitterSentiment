#!/usr/bin/perl

$old_date = '';
$old_loc = '';
$max_sent = 0;
$max_rt = 0;
$max_tweet = '';

# 2015-04-24,Mountain View  CA,170,RT @GoogleforWork: If Isaac Newton had Google Apps  how would it benefit his discoveries? See what we think: http://t.co/Jp5udrvS0s http://...,1.0

while(<stdin>) {

	chop($_);
        @chunks = split(',', $_);


        if (($old_date eq $chunks[0]) && ($old_loc eq $chunks[1])){
                if($chunks[4] > $max_sent) {
                        $max_sent = $chunks[4];
                        $max_rt = $chunks[2];
			$max_tweet = $chunks[3];
                }
        } else {
                if ($old_date ne '') {
                        print $old_date . "," . $old_loc . "," . $max_rt . "," . $max_tweet . "," . $max_sent . "\n";
                }
                $old_date = $chunks[0];
                $old_loc = $chunks[1];
                $max_rt = $chunks[2];
                $max_tweet = $chunks[3];
                $max_sent = $chunks[4];
        }
}

print $old_date . "," . $old_loc . "," . $max_rt . "," . $max_tweet . "," . $max_sent . "\n";

#if ($old_key ne "Date") {
#        print $old_key . ";" . $wban_max . ";" . $key_max . ";" . $max_hour;
#}


