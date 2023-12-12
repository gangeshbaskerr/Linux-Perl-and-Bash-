
#PRINTING ALL THE LINES
open(fh,'a.txt');
while($line=<fh>){
    print $line;
}
close fh;


#PRINTING THE EVEN NUMBER OF LINES
open(fh,'a.txt');
$n=1;
while($line=<fh>){
    if ($n%2==0){
        print $line;
    }
    $n=$n+1;
}
close fh;


#NUMBER OF TERMS AND CHARACTERS IN A LINE 
open(fh,'a.txt');
$n=1;
while($line=<fh>){
    @t1=split(/ /,$line);
    @t2=split(//,$line);
    $count1=@t1;
    $count2=@t2;
    print "number of terms in line $n = $count1 \n";
    print "number of characters in line $n = $count2 \n";
    $n=$n+1;
}
close fh;


#COUNTING THE LOWERCASE,UPPERCASE, UNDERSCORE AND DOT CHARACTERS IN THE TEXT FILE

open(fh,'a.txt');
$l_count=0;
$u_count=0;
$un_count=0;
$dot_count=0;
while($line=<fh>){
    chomp $line;
    @t=split(//,$line);
    $n=@t;
    for($i=0;$i<$n;$i=$i+1){
        if($t[i]=~m/[a-z]/){
         $l_count++;
        }
        elsif($t[i]=~m/[A-Z]/){
            $u_count++;
        }
        elsif($t[i]=~m/_/){
            $un_count++;
        }
        elsif($t[i]=~m/\./){
            $dot_count++;
        }
    }
    print "$n \n";
}
close fh;
print "count of lower case = $l_count \n";
print "count of upper case = $u_count \n";
print "count of underscore(_) = $un_count \n";
print "count of dots = $dot_count \n";



#FINDING EUCLIDEAN DISTANCE BETWEEN TWO COORDINATES
open(fh,'a.txt');
@lines=<fh>;
chomp @lines;
print "@lines \n";
$n=@lines;
for($i=0;$i<$n;$i++){
    for($j=0;$j<$n;$j++){
        @p1=split(/ /,$lines[$i]);
        @p2=split(/ /,$lines[$j]);
        $sum=0;
        $d=0;
        $m=@p1;
        for($k=0;$k<$m;$k++){
            $sum=$sum+(($p1[$k]-$p2[$k])**2);
        }
        $d=sqrt($sum);
        print "Distance between $lines[$i] and $lines[$j] is \t : $d. \n";
    }
}
close fh;

#PRIME NUMER :
print "Enter a number :";
$n=<STDIN>;
$flag=1;
for ($i = 2; $i<$n; $i++){
    if (($n%$i)==0){
        $flag=0;
        last;
    }
}
if($flag==1){
    print "Its a Prime Number \n";
}
else{
    print "Its not a prime number \n";
}
