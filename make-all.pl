#!/usr/bin/perl

use File::chdir;

$pwd = `pwd`;
chomp $pwd;
$CMD = $pwd;
@dirs = ('deutsch', 'english', 'espanol', 'francais', 'italiano');
`mkdir /tmp/compile`;
foreach $dir (@dirs) {
    chomp $dir;
    @zipfiles = `ls -1 $dir/*.zip 2>/dev/null`;
    foreach $zipfile (@zipfiles) {
	chomp $zipfile;
	print "$zipfile";
	`unzip -d /tmp/compile $zipfile`;
	print "  unzipped\n";
	`cp common/physathome.cls /tmp/compile/smartphysicslab/.`;
	print "  class file updated\n";
	local $CWD = "/tmp/compile/smartphysicslab";
	print "  compiling...\n";
	`/Library/TeX/texbin/pdflatex *.tex 1>/tmp/latex.log 2>&1`;
	print "  ...done\n";
	$cmd = "cp *.pdf $pwd/$dir/.";
	print "  $cmd\n";
	`$cmd`;
	$cmd = "rm -f *.aux *.log *.out";
	print "  $cmd\n";
	`$cmd`;
	$cmd = "cp * $pwd/$dir/smartphysicslab/.";
	print "  $cmd\n";
	$CWD = "/tmp/compile";
	$cmd = "  zip $pwd/$zipfile smartphysicslab/*";
	print "$cmd\n";
	`$cmd`;
	`rm -rf /tmp/compile/smartphysicslab`;
	print "\n";
    }
}
`rm -rf /tmp/compile`;
