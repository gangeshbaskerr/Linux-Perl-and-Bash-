#STRING CONCATENATION :
$st1='hi';
$st2='Gangesh';
$st3=$st1.$st2;
print "$st3 \n";# OUTPUT : hiGangesh

#STRING OPERATIONS :
$st='abc';
$a=$st*2;
print "$a  \n";#OUTPUT : 0
$d=$st++;
print $d ; #OUTPUT : abd

 
$s1='12abc';
$b=$s1*3;
print "$b \n";#OUTPUT : 36

$s2='t';
$c=$s2 x 5;
print "$c \n";#OUTPUT: ttttt

#ARRAY :

@l=(2..5);
print "@l\n";#output : 2 3 4 5

@l1=(aa..ad);
print"@l1\n";#OUTPUT : aa ab ac ad

#SORT AND REVERSE SORT:
@l2=reverse sort@l;
print "@l2 \n"; #OUTPUT : 5 4 3 2

@l3=sort@l2;
print "@l3 \n"; #OUTPUT : 2 3 4 5

#SPLIT AND JOIN :

$s3=join("/","my","name","is","gangesh");
print "$s3 \n";#OUTPUT: my/name/is/gangesh 

@list=('i','am','gang');
$s3=join(':',@list,'esh');
print "$s3 \n"; #OUTPUT : i:am:gang:esh

$s4='My:Name:Is:Gangesh';
@s4=split(//,$s4);
@s5=split(/:/,$s4);
print " @s4 \n";#OUTPUT : ('M','y',':','N','a','m')
print " @s4 \n";#OUTPUT : ('My','Name','Is','Gangesh')

#FOR EACH LOOP :
#ARRAY :
@list=('i','am','gang');
foreach $word (@list){
    print "$word";#OUTPUT : IAMGANGESH
}

#DICTIONARY:
%dict=('modi'=>'india','Trump' => 'USA');
foreach $key (%dict){
    print("$key \n");
}

while (($key,$value) = each %dict ){
    print "$key => $value \n";
}
$dict{'Boris'}='Britain';

@names=keys %dict;
@countrys=keys %dict;
print "$names[0] \n";

#ARRAY APPEND: (PUSH OPERATION) :
push(@names,'gangesh');#OUTPUT : (MODI,TRUMP,GANGESH)
push(@countrys,$list[0]);#OUTPUT : (india,usa,i)
print " $names[2] \n";
print " $country[2] \n";


#GREP :
@names=('Gangesh','Jacob9','Mohith','Harish');
@grepnames=grep(!/^G/,@names);#HAS EVERYTHING THT DOESNT START WITH G #OUTPUT: JACOB9
@grepnames1=grep(/^M/,@names);#HAS EVERYTHING THT START WITH M #OUTPUT : MOHITH
@grepnames2=grep(/[a-z]$/,@names);#HAS EVERYTHING THT END in a-z #OUTPUT : GANGESH
@grepnames3=grep(/\d$/,@names);#HAS EVERYTHING THT END with a Integer #OUTPUT : JACOB9
print "$grepnames[0] \n $grepnames1[0] \n $grepnames2[0] \n $grepnames3[0] \n";


#PATTERN MATCHING :
$s='perl tutorial by gangesh by by academy';
$s=~ m/by/;
print "BEFORE : $` \n";
print "AFTER : $' \n";
print "MATCHED STGRING : $& \n";


#SUNSTITUTION OPERATOR :(only substitutes for the frst occurance)
$s=~ s/gangesh/harish/;
print " $s \n";#PERL TUTORIAL BY HARISH ACADEMY

#TRANSILERATE OPERATOR :
$s=~tr/by/yb/;
print "$s \n";#perl tutorial yb harish yb yb academb


#NUMBER EXTRACTIONS:
#TO extract 19.2.1896 in a para text
$date=($text =~ /(\d{2}+\.\d+\.\d{4})/);


#CGPA CALCULATION :;
$tot=0;
print "enter number of courses :";
$n=<STDIN>;
%dict=();
for($i=0;$i<$n;$i=$i+1){
    print "Enter course code :";
    $course = <STDIN>;
    print "Enter the credits :";
    $credit = <STDIN>;
    print "Enter you marks :";
    $mark = <STDIN>;
    if ($mark>90){
        $grade = 's';
        $point=10;
    }
    elsif ($mark>85 && mark <=90){
        $grade = 'a+';
        $point=9;
    }
    elsif ($mark>75 && mark <=85){
        $grade = 'a';
        $point=8;
    }
    elsif ($mark>65 && mark <=75){
        $grade = 'a';
        $point=7;
    }
    elsif ($mark>55 && mark <=65){
        $grade = 'b';
        $point=6;
    }
    elsif ($mark>45 && mark <=55){
        $grade = 'f';
        $point=0;
    }
    else{
        $grade = 'e';
    }
    $dict{$course}=$grade;
    $tot=$tot+($credit*10);
    $sum=($credit*$point)+$sum;
}

$cgpa=($sum/$tot)*10;
while(($key,$value)= each %dict){
    chomp $key;
    chomp $value;
    print("$key => $value \n");
}
print (" $cgpa \n");

#CGPA CALC :
%gradepoints = ('S' => 10, 'A+' => 9, 'A' => 8, 'B' => 7, 'C' => 6, 'D' => 5, 'F' => 0, 'E' => 0);
%credit = ('S1' => 4, 'S2' => 4, 'S3' => 4);  # Unique keys for each semester

$cgpa = 0;
$tot_credit = 0;
$totmark = 0;

for ($i = 1; $i <= 3; $i++) {  # Change loop condition to iterate from 1 to 3
    print "Enter the mark for Semester $i: ";
    $mark = <STDIN>;
    chomp($mark);

    $tot_credit += $credit{"S$i"};

    if ($mark >= 90) {
        $grade = 'S';
        $totmark += $credit{"S$i"} * $gradepoints{'S'};
    } elsif ($mark < 90 && $mark >= 85) {
        $grade = 'A+';
        $totmark += $credit{"S$i"} * $gradepoints{'A+'};
    } elsif ($mark < 85 && $mark >= 80) {
        $grade = 'A';
        $totmark += $credit{"S$i"} * $gradepoints{'A'};
    } elsif ($mark < 80 && $mark >= 70) {
        $grade = 'B';
        $totmark += $credit{"S$i"} * $gradepoints{'B'};
    } elsif ($mark < 70 && $mark >= 60) {
        $grade = 'C';
        $totmark += $credit{"S$i"} * $gradepoints{'C'};
    } elsif ($mark < 60 && $mark >= 50) {
        $grade = 'D';
        $totmark += $credit{"S$i"} * $gradepoints{'D'};
    } elsif ($mark < 50) {
        $grade = 'F';
        $totmark += $credit{"S$i"} * $gradepoints{'F'};
    } else {
        $grade = 'E';
        $totmark += $credit{"S$i"} * $gradepoints{'E'};
    }
}

$cgpa = ($totmark / ($tot_credit * 10)) * 10;
print "CGPA: $cgpa\n";

#LONGEST COMMON SUB SEQUENCE :

print "enter the term 1 :";
$t1=<STDIN>;
print "enter the term 2 :"; 
$t2=<STDIN>;
@t1=split(//,$t1);
@t2=split(//,$t2);
$lent1=@t1;
$lent2=@t2;
for($i=0;$i<$lent1;$i=$i+1){
        $mat[0][$i]=0;
        $mat[$i][0]=0;
}
for($i=1;$i<$lent1;$i=$i+1){
    for($j=1;$j<$lent2;$j=$j+1){
        if(@t1[0]==@t2[0]){
            $mat[$i][$j]=$mat[$i-1][$j-1]+1;
        }
        elsif(@t1[0]!=@t2[0]){
            $mat[$i][$j]=max($mat[$i-1][$j],$mat[$i][$j-1]);
        }
    }
}
for($i=0;$i<$lent1;$i=$i+1){
    for($j=0;$j<$lent1;$j=$j+1){
        print $mat[$i][$j];
    }
    print "\n";
}

sub max{
    ($a,$b)=@_;
    if ($a>$b){
        return $a;
    }
    else{
        return $b;
    }
}

