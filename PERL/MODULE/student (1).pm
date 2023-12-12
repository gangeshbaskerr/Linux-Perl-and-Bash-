package student;
sub new{
    my($class,$regno,$name,$dept)=@_;
    $self={"regno"=>@_[1],"name"=>@_[2],"dept"=>@_[3]};
    bless $self,$class;
    return $self;
}
sub regno($object){
    my($object)=@_;
    $regno=$object->{regno};
    print $regno;
}
sub name($object){
    my($object)=@_;
    $name=$object->{name};
    print $name;
}
sub dept($object){
    my($object)=@_;
    $dept=$object->{dept};
    print $dept;
}
1;
