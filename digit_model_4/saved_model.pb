??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-0-gc256c071bb28ь
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?b*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	d?b*
dtype0
?
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*,
shared_namebatch_normalization_6/gamma
?
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:?b*
dtype0
?
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*+
shared_namebatch_normalization_6/beta
?
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:?b*
dtype0
?
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*2
shared_name#!batch_normalization_6/moving_mean
?
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:?b*
dtype0
?
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?b*6
shared_name'%batch_normalization_6/moving_variance
?
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:?b*
dtype0
?
conv2d_transpose_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??**
shared_nameconv2d_transpose_6/kernel
?
-conv2d_transpose_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_7/gamma
?
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_7/beta
?
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_7/moving_mean
?
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_7/moving_variance
?
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?**
shared_nameconv2d_transpose_7/kernel
?
-conv2d_transpose_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_7/kernel*'
_output_shapes
:@?*
dtype0
?
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_8/gamma
?
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_8/beta
?
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
:@*
dtype0
?
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_8/moving_mean
?
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
:@*
dtype0
?
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_8/moving_variance
?
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_transpose_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameconv2d_transpose_8/kernel
?
-conv2d_transpose_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_8/kernel*&
_output_shapes
:@*
dtype0

NoOpNoOp
?1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?0
value?0B?0 B?0
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
	variables
trainable_variables
regularization_losses
	keras_api

signatures
^

kernel
	variables
trainable_variables
regularization_losses
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
^

'kernel
(	variables
)trainable_variables
*regularization_losses
+	keras_api
?
,axis
	-gamma
.beta
/moving_mean
0moving_variance
1	variables
2trainable_variables
3regularization_losses
4	keras_api
R
5	variables
6trainable_variables
7regularization_losses
8	keras_api
^

9kernel
:	variables
;trainable_variables
<regularization_losses
=	keras_api
?
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
R
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
^

Kkernel
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
v
0
1
2
3
4
'5
-6
.7
/8
09
910
?11
@12
A13
B14
K15
F
0
1
2
'3
-4
.5
96
?7
@8
K9
 
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
 
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3

0
1
 
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
 trainable_variables
!regularization_losses
 
 
 
?
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
#	variables
$trainable_variables
%regularization_losses
ec
VARIABLE_VALUEconv2d_transpose_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE

'0

'0
 
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
(	variables
)trainable_variables
*regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
/2
03

-0
.1
 
?
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
1	variables
2trainable_variables
3regularization_losses
 
 
 
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
5	variables
6trainable_variables
7regularization_losses
ec
VARIABLE_VALUEconv2d_transpose_7/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE

90

90
 
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
:	variables
;trainable_variables
<regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

?0
@1
A2
B3

?0
@1
 
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
ec
VARIABLE_VALUEconv2d_transpose_8/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE

K0

K0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
*
0
1
/2
03
A4
B5
N
0
1
2
3
4
5
6
7
	8

9
10
 
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

/0
01
 
 
 
 
 
 
 
 
 
 
 
 
 
 

A0
B1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_dense_4_inputPlaceholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_4_inputdense_4/kernel%batch_normalization_6/moving_variancebatch_normalization_6/gamma!batch_normalization_6/moving_meanbatch_normalization_6/betaconv2d_transpose_6/kernelbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_transpose_7/kernelbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_transpose_8/kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_970132
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp-conv2d_transpose_6/kernel/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp-conv2d_transpose_7/kernel/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp-conv2d_transpose_8/kernel/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_971102
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kernelbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_transpose_6/kernelbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_transpose_7/kernelbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_transpose_8/kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_971160??
?
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970955

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_969700
dense_4_input
unknown:	d?b
	unknown_0:	?b
	unknown_1:	?b
	unknown_2:	?b
	unknown_3:	?b%
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_969665w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_4_input
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970721

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_970446

inputs9
&dense_4_matmul_readvariableop_resource:	d?bL
=batch_normalization_6_assignmovingavg_readvariableop_resource:	?bN
?batch_normalization_6_assignmovingavg_1_readvariableop_resource:	?bJ
;batch_normalization_6_batchnorm_mul_readvariableop_resource:	?bF
7batch_normalization_6_batchnorm_readvariableop_resource:	?bW
;conv2d_transpose_6_conv2d_transpose_readvariableop_resource:??<
-batch_normalization_7_readvariableop_resource:	?>
/batch_normalization_7_readvariableop_1_resource:	?M
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?V
;conv2d_transpose_7_conv2d_transpose_readvariableop_resource:@?;
-batch_normalization_8_readvariableop_resource:@=
/batch_normalization_8_readvariableop_1_resource:@L
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:@U
;conv2d_transpose_8_conv2d_transpose_readvariableop_resource:@
identity??%batch_normalization_6/AssignMovingAvg?4batch_normalization_6/AssignMovingAvg/ReadVariableOp?'batch_normalization_6/AssignMovingAvg_1?6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_6/batchnorm/ReadVariableOp?2batch_normalization_6/batchnorm/mul/ReadVariableOp?$batch_normalization_7/AssignNewValue?&batch_normalization_7/AssignNewValue_1?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?$batch_normalization_8/AssignNewValue?&batch_normalization_8/AssignNewValue_1?5batch_normalization_8/FusedBatchNormV3/ReadVariableOp?7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_8/ReadVariableOp?&batch_normalization_8/ReadVariableOp_1?2conv2d_transpose_6/conv2d_transpose/ReadVariableOp?2conv2d_transpose_7/conv2d_transpose/ReadVariableOp?2conv2d_transpose_8/conv2d_transpose/ReadVariableOp?dense_4/MatMul/ReadVariableOp?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype0z
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b~
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
"batch_normalization_6/moments/meanMeandense_4/MatMul:product:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?b*
	keep_dims(?
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:	?b?
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferencedense_4/MatMul:product:03batch_normalization_6/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????b?
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?b*
	keep_dims(?
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 ?
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 p
+batch_normalization_6/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource*
_output_shapes	
:?b*
dtype0?
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_6/moments/Squeeze:output:0*
T0*
_output_shapes	
:?b?
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:04batch_normalization_6/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?b?
%batch_normalization_6/AssignMovingAvgAssignSubVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_6/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?b*
dtype0?
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_6/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?b?
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:06batch_normalization_6/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?b?
'batch_normalization_6/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?b}
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:?b?
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype0?
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b?
%batch_normalization_6/batchnorm/mul_1Muldense_4/MatMul:product:0'batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b?
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:?b?
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype0?
#batch_normalization_6/batchnorm/subSub6batch_normalization_6/batchnorm/ReadVariableOp:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b?
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b?
leaky_re_lu_10/LeakyRelu	LeakyRelu)batch_normalization_6/batchnorm/add_1:z:0*(
_output_shapes
:??????????b*
alpha%???>e
reshape_2/ShapeShape&leaky_re_lu_10/LeakyRelu:activations:0*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
reshape_2/ReshapeReshape&leaky_re_lu_10/LeakyRelu:activations:0 reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????b
conv2d_transpose_6/ShapeShapereshape_2/Reshape:output:0*
T0*
_output_shapes
:p
&conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_6/strided_sliceStridedSlice!conv2d_transpose_6/Shape:output:0/conv2d_transpose_6/strided_slice/stack:output:01conv2d_transpose_6/strided_slice/stack_1:output:01conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_6/stackPack)conv2d_transpose_6/strided_slice:output:0#conv2d_transpose_6/stack/1:output:0#conv2d_transpose_6/stack/2:output:0#conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_6/strided_slice_1StridedSlice!conv2d_transpose_6/stack:output:01conv2d_transpose_6/strided_slice_1/stack:output:03conv2d_transpose_6/strided_slice_1/stack_1:output:03conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_6_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInput!conv2d_transpose_6/stack:output:0:conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0reshape_2/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_6/conv2d_transpose:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_7/AssignNewValueAssignVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource3batch_normalization_7/FusedBatchNormV3:batch_mean:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_7/AssignNewValue_1AssignVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_7/FusedBatchNormV3:batch_variance:08^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
leaky_re_lu_11/LeakyRelu	LeakyRelu*batch_normalization_7/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>n
conv2d_transpose_7/ShapeShape&leaky_re_lu_11/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_7/strided_sliceStridedSlice!conv2d_transpose_7/Shape:output:0/conv2d_transpose_7/strided_slice/stack:output:01conv2d_transpose_7/strided_slice/stack_1:output:01conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv2d_transpose_7/stackPack)conv2d_transpose_7/strided_slice:output:0#conv2d_transpose_7/stack/1:output:0#conv2d_transpose_7/stack/2:output:0#conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_7/strided_slice_1StridedSlice!conv2d_transpose_7/stack:output:01conv2d_transpose_7/strided_slice_1/stack:output:03conv2d_transpose_7/strided_slice_1/stack_1:output:03conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_7_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
#conv2d_transpose_7/conv2d_transposeConv2DBackpropInput!conv2d_transpose_7/stack:output:0:conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_11/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_7/conv2d_transpose:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_8/AssignNewValueAssignVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource3batch_normalization_8/FusedBatchNormV3:batch_mean:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_8/AssignNewValue_1AssignVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_8/FusedBatchNormV3:batch_variance:08^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
leaky_re_lu_12/LeakyRelu	LeakyRelu*batch_normalization_8/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>n
conv2d_transpose_8/ShapeShape&leaky_re_lu_12/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_8/strided_sliceStridedSlice!conv2d_transpose_8/Shape:output:0/conv2d_transpose_8/strided_slice/stack:output:01conv2d_transpose_8/strided_slice/stack_1:output:01conv2d_transpose_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_8/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_8/stackPack)conv2d_transpose_8/strided_slice:output:0#conv2d_transpose_8/stack/1:output:0#conv2d_transpose_8/stack/2:output:0#conv2d_transpose_8/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_8/strided_slice_1StridedSlice!conv2d_transpose_8/stack:output:01conv2d_transpose_8/strided_slice_1/stack:output:03conv2d_transpose_8/strided_slice_1/stack_1:output:03conv2d_transpose_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_8/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
#conv2d_transpose_8/conv2d_transposeConv2DBackpropInput!conv2d_transpose_8/stack:output:0:conv2d_transpose_8/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_12/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
conv2d_transpose_8/TanhTanh,conv2d_transpose_8/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????r
IdentityIdentityconv2d_transpose_8/Tanh:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp&^batch_normalization_6/AssignMovingAvg5^batch_normalization_6/AssignMovingAvg/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_17^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp3^batch_normalization_6/batchnorm/mul/ReadVariableOp%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_13^conv2d_transpose_6/conv2d_transpose/ReadVariableOp3^conv2d_transpose_7/conv2d_transpose/ReadVariableOp3^conv2d_transpose_8/conv2d_transpose/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 2N
%batch_normalization_6/AssignMovingAvg%batch_normalization_6/AssignMovingAvg2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_1'batch_normalization_6/AssignMovingAvg_12p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2P
&batch_normalization_7/AssignNewValue_1&batch_normalization_7/AssignNewValue_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2P
&batch_normalization_8/AssignNewValue_1&batch_normalization_8/AssignNewValue_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12h
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2h
2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2h
2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?E
?
"__inference__traced_restore_971160
file_prefix2
assignvariableop_dense_4_kernel:	d?b=
.assignvariableop_1_batch_normalization_6_gamma:	?b<
-assignvariableop_2_batch_normalization_6_beta:	?bC
4assignvariableop_3_batch_normalization_6_moving_mean:	?bG
8assignvariableop_4_batch_normalization_6_moving_variance:	?bH
,assignvariableop_5_conv2d_transpose_6_kernel:??=
.assignvariableop_6_batch_normalization_7_gamma:	?<
-assignvariableop_7_batch_normalization_7_beta:	?C
4assignvariableop_8_batch_normalization_7_moving_mean:	?G
8assignvariableop_9_batch_normalization_7_moving_variance:	?H
-assignvariableop_10_conv2d_transpose_7_kernel:@?=
/assignvariableop_11_batch_normalization_8_gamma:@<
.assignvariableop_12_batch_normalization_8_beta:@C
5assignvariableop_13_batch_normalization_8_moving_mean:@G
9assignvariableop_14_batch_normalization_8_moving_variance:@G
-assignvariableop_15_conv2d_transpose_8_kernel:@
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp.assignvariableop_1_batch_normalization_6_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp-assignvariableop_2_batch_normalization_6_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp4assignvariableop_3_batch_normalization_6_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp8assignvariableop_4_batch_normalization_6_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp,assignvariableop_5_conv2d_transpose_6_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp.assignvariableop_6_batch_normalization_7_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp-assignvariableop_7_batch_normalization_7_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp4assignvariableop_8_batch_normalization_7_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp8assignvariableop_9_batch_normalization_7_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp-assignvariableop_10_conv2d_transpose_7_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batch_normalization_8_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp.assignvariableop_12_batch_normalization_8_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp5assignvariableop_13_batch_normalization_8_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp9assignvariableop_14_batch_normalization_8_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_conv2d_transpose_8_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
3__inference_conv2d_transpose_8_layer_call_fn_970979

inputs!
unknown:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_969660w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_970319

inputs9
&dense_4_matmul_readvariableop_resource:	d?bF
7batch_normalization_6_batchnorm_readvariableop_resource:	?bJ
;batch_normalization_6_batchnorm_mul_readvariableop_resource:	?bH
9batch_normalization_6_batchnorm_readvariableop_1_resource:	?bH
9batch_normalization_6_batchnorm_readvariableop_2_resource:	?bW
;conv2d_transpose_6_conv2d_transpose_readvariableop_resource:??<
-batch_normalization_7_readvariableop_resource:	?>
/batch_normalization_7_readvariableop_1_resource:	?M
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?V
;conv2d_transpose_7_conv2d_transpose_readvariableop_resource:@?;
-batch_normalization_8_readvariableop_resource:@=
/batch_normalization_8_readvariableop_1_resource:@L
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:@U
;conv2d_transpose_8_conv2d_transpose_readvariableop_resource:@
identity??.batch_normalization_6/batchnorm/ReadVariableOp?0batch_normalization_6/batchnorm/ReadVariableOp_1?0batch_normalization_6/batchnorm/ReadVariableOp_2?2batch_normalization_6/batchnorm/mul/ReadVariableOp?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?5batch_normalization_8/FusedBatchNormV3/ReadVariableOp?7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_8/ReadVariableOp?&batch_normalization_8/ReadVariableOp_1?2conv2d_transpose_6/conv2d_transpose/ReadVariableOp?2conv2d_transpose_7/conv2d_transpose/ReadVariableOp?2conv2d_transpose_8/conv2d_transpose/ReadVariableOp?dense_4/MatMul/ReadVariableOp?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype0z
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b?
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?b}
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:?b?
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype0?
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b?
%batch_normalization_6/batchnorm/mul_1Muldense_4/MatMul:product:0'batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b?
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:?b*
dtype0?
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:?b?
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:?b*
dtype0?
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b?
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b?
leaky_re_lu_10/LeakyRelu	LeakyRelu)batch_normalization_6/batchnorm/add_1:z:0*(
_output_shapes
:??????????b*
alpha%???>e
reshape_2/ShapeShape&leaky_re_lu_10/LeakyRelu:activations:0*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
reshape_2/ReshapeReshape&leaky_re_lu_10/LeakyRelu:activations:0 reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????b
conv2d_transpose_6/ShapeShapereshape_2/Reshape:output:0*
T0*
_output_shapes
:p
&conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_6/strided_sliceStridedSlice!conv2d_transpose_6/Shape:output:0/conv2d_transpose_6/strided_slice/stack:output:01conv2d_transpose_6/strided_slice/stack_1:output:01conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_6/stackPack)conv2d_transpose_6/strided_slice:output:0#conv2d_transpose_6/stack/1:output:0#conv2d_transpose_6/stack/2:output:0#conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_6/strided_slice_1StridedSlice!conv2d_transpose_6/stack:output:01conv2d_transpose_6/strided_slice_1/stack:output:03conv2d_transpose_6/strided_slice_1/stack_1:output:03conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_6_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInput!conv2d_transpose_6/stack:output:0:conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0reshape_2/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_6/conv2d_transpose:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
leaky_re_lu_11/LeakyRelu	LeakyRelu*batch_normalization_7/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>n
conv2d_transpose_7/ShapeShape&leaky_re_lu_11/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_7/strided_sliceStridedSlice!conv2d_transpose_7/Shape:output:0/conv2d_transpose_7/strided_slice/stack:output:01conv2d_transpose_7/strided_slice/stack_1:output:01conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv2d_transpose_7/stackPack)conv2d_transpose_7/strided_slice:output:0#conv2d_transpose_7/stack/1:output:0#conv2d_transpose_7/stack/2:output:0#conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_7/strided_slice_1StridedSlice!conv2d_transpose_7/stack:output:01conv2d_transpose_7/strided_slice_1/stack:output:03conv2d_transpose_7/strided_slice_1/stack_1:output:03conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_7_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
#conv2d_transpose_7/conv2d_transposeConv2DBackpropInput!conv2d_transpose_7/stack:output:0:conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_11/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_7/conv2d_transpose:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
leaky_re_lu_12/LeakyRelu	LeakyRelu*batch_normalization_8/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>n
conv2d_transpose_8/ShapeShape&leaky_re_lu_12/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_8/strided_sliceStridedSlice!conv2d_transpose_8/Shape:output:0/conv2d_transpose_8/strided_slice/stack:output:01conv2d_transpose_8/strided_slice/stack_1:output:01conv2d_transpose_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_8/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_8/stackPack)conv2d_transpose_8/strided_slice:output:0#conv2d_transpose_8/stack/1:output:0#conv2d_transpose_8/stack/2:output:0#conv2d_transpose_8/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_8/strided_slice_1StridedSlice!conv2d_transpose_8/stack:output:01conv2d_transpose_8/strided_slice_1/stack:output:03conv2d_transpose_8/strided_slice_1/stack_1:output:03conv2d_transpose_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_8/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
#conv2d_transpose_8/conv2d_transposeConv2DBackpropInput!conv2d_transpose_8/stack:output:0:conv2d_transpose_8/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_12/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
conv2d_transpose_8/TanhTanh,conv2d_transpose_8/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????r
IdentityIdentityconv2d_transpose_8/Tanh:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp6^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_13^conv2d_transpose_6/conv2d_transpose/ReadVariableOp3^conv2d_transpose_7/conv2d_transpose/ReadVariableOp3^conv2d_transpose_8/conv2d_transpose/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12h
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2h
2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2h
2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_970506

inputs0
!batchnorm_readvariableop_resource:	?b4
%batchnorm_mul_readvariableop_resource:	?b2
#batchnorm_readvariableop_1_resource:	?b2
#batchnorm_readvariableop_2_resource:	?b
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?bQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?b
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?bd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?b*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?b{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?b*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?bs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????bc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????b?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????b: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970901

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_969172

inputs0
!batchnorm_readvariableop_resource:	?b4
%batchnorm_mul_readvariableop_resource:	?b2
#batchnorm_readvariableop_1_resource:	?b2
#batchnorm_readvariableop_2_resource:	?b
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?bQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?b
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?bd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?b*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?b{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?b*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?bs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????bc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????b?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????b: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?8
?	
H__inference_sequential_4_layer_call_and_return_conditional_losses_970093
dense_4_input!
dense_4_970049:	d?b+
batch_normalization_6_970052:	?b+
batch_normalization_6_970054:	?b+
batch_normalization_6_970056:	?b+
batch_normalization_6_970058:	?b5
conv2d_transpose_6_970063:??+
batch_normalization_7_970066:	?+
batch_normalization_7_970068:	?+
batch_normalization_7_970070:	?+
batch_normalization_7_970072:	?4
conv2d_transpose_7_970076:@?*
batch_normalization_8_970079:@*
batch_normalization_8_970081:@*
batch_normalization_8_970083:@*
batch_normalization_8_970085:@3
conv2d_transpose_8_970089:@
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_6/StatefulPartitionedCall?*conv2d_transpose_7/StatefulPartitionedCall?*conv2d_transpose_8/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_970049*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_969490?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_6_970052batch_normalization_6_970054batch_normalization_6_970056batch_normalization_6_970058*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_969219?
leaky_re_lu_10/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_969508?
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_969524?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_6_970063*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_969545?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0batch_normalization_7_970066batch_normalization_7_970068batch_normalization_7_970070batch_normalization_7_970072*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969803?
leaky_re_lu_11/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_969581?
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0conv2d_transpose_7_970076*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_969602?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0batch_normalization_8_970079batch_normalization_8_970081batch_normalization_8_970083batch_normalization_8_970085*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969746?
leaky_re_lu_12/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_969638?
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0conv2d_transpose_8_970089*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_969660?
IdentityIdentity3conv2d_transpose_8/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_4_input
?
?
3__inference_conv2d_transpose_6_layer_call_fn_970583

inputs#
unknown:??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_969545x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_11_layer_call_fn_970762

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_969581i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_12_layer_call_fn_970960

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_969638h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_969638

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????@*
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969394

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_970965

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????@*
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969566

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969425

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_969581

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????*
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?8
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_969927

inputs!
dense_4_969883:	d?b+
batch_normalization_6_969886:	?b+
batch_normalization_6_969888:	?b+
batch_normalization_6_969890:	?b+
batch_normalization_6_969892:	?b5
conv2d_transpose_6_969897:??+
batch_normalization_7_969900:	?+
batch_normalization_7_969902:	?+
batch_normalization_7_969904:	?+
batch_normalization_7_969906:	?4
conv2d_transpose_7_969910:@?*
batch_normalization_8_969913:@*
batch_normalization_8_969915:@*
batch_normalization_8_969917:@*
batch_normalization_8_969919:@3
conv2d_transpose_8_969923:@
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_6/StatefulPartitionedCall?*conv2d_transpose_7/StatefulPartitionedCall?*conv2d_transpose_8/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_969883*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_969490?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_6_969886batch_normalization_6_969888batch_normalization_6_969890batch_normalization_6_969892*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_969219?
leaky_re_lu_10/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_969508?
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_969524?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_6_969897*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_969545?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0batch_normalization_7_969900batch_normalization_7_969902batch_normalization_7_969904batch_normalization_7_969906*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969803?
leaky_re_lu_11/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_969581?
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0conv2d_transpose_7_969910*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_969602?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0batch_normalization_8_969913batch_normalization_8_969915batch_normalization_8_969917batch_normalization_8_969919*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969746?
leaky_re_lu_12/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_969638?
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0conv2d_transpose_8_969923*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_969660?
IdentityIdentity3conv2d_transpose_8/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_10_layer_call_fn_970545

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_969508a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????b"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_970613

inputsD
(conv2d_transpose_readvariableop_resource:??
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
?
IdentityIdentityconv2d_transpose:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_969367

inputsC
(conv2d_transpose_readvariableop_resource:@?
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
?
IdentityIdentityconv2d_transpose:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?%
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_970540

inputs6
'assignmovingavg_readvariableop_resource:	?b8
)assignmovingavg_1_readvariableop_resource:	?b4
%batchnorm_mul_readvariableop_resource:	?b0
!batchnorm_readvariableop_resource:	?b
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?b*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?b?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????bl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?b*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?b*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?by
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?b?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?b*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?b
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?b?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?bQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?b
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?bd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????bi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?bw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?bs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????bc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????b?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????b: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_7_layer_call_fn_970672

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969566x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_6_layer_call_fn_970473

inputs
unknown:	?b
	unknown_0:	?b
	unknown_1:	?b
	unknown_2:	?b
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_969172p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????b`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????b: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_970767

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????*
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_7_layer_call_fn_970685

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969803x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_8_layer_call_fn_970857

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969425?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_970206

inputs
unknown:	d?b
	unknown_0:	?b
	unknown_1:	?b
	unknown_2:	?b
	unknown_3:	?b%
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_969927w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?-
?
__inference__traced_save_971102
file_prefix-
)savev2_dense_4_kernel_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_6_kernel_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_7_kernel_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_8_kernel_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop4savev2_conv2d_transpose_6_kernel_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop4savev2_conv2d_transpose_7_kernel_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop4savev2_conv2d_transpose_8_kernel_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	d?b:?b:?b:?b:?b:??:?:?:?:?:@?:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	d?b:!

_output_shapes	
:?b:!

_output_shapes	
:?b:!

_output_shapes	
:?b:!

_output_shapes	
:?b:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:-)
'
_output_shapes
:@?: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@:

_output_shapes
: 
?
?
6__inference_batch_normalization_6_layer_call_fn_970486

inputs
unknown:	?b
	unknown_0:	?b
	unknown_1:	?b
	unknown_2:	?b
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_969219p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????b`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????b: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
C__inference_dense_4_layer_call_and_return_conditional_losses_970460

inputs1
matmul_readvariableop_resource:	d?b
identity??MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b`
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:??????????b^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_969508

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????b*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????b"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_969660

inputsB
(conv2d_transpose_readvariableop_resource:@
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
a
TanhTanhconv2d_transpose:output:0*
T0*/
_output_shapes
:?????????_
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:?????????h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?8
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_969665

inputs!
dense_4_969491:	d?b+
batch_normalization_6_969494:	?b+
batch_normalization_6_969496:	?b+
batch_normalization_6_969498:	?b+
batch_normalization_6_969500:	?b5
conv2d_transpose_6_969546:??+
batch_normalization_7_969567:	?+
batch_normalization_7_969569:	?+
batch_normalization_7_969571:	?+
batch_normalization_7_969573:	?4
conv2d_transpose_7_969603:@?*
batch_normalization_8_969624:@*
batch_normalization_8_969626:@*
batch_normalization_8_969628:@*
batch_normalization_8_969630:@3
conv2d_transpose_8_969661:@
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_6/StatefulPartitionedCall?*conv2d_transpose_7/StatefulPartitionedCall?*conv2d_transpose_8/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_969491*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_969490?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_6_969494batch_normalization_6_969496batch_normalization_6_969498batch_normalization_6_969500*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_969172?
leaky_re_lu_10/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_969508?
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_969524?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_6_969546*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_969545?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0batch_normalization_7_969567batch_normalization_7_969569batch_normalization_7_969571batch_normalization_7_969573*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969566?
leaky_re_lu_11/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_969581?
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0conv2d_transpose_7_969603*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_969602?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0batch_normalization_8_969624batch_normalization_8_969626batch_normalization_8_969628batch_normalization_8_969630*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969623?
leaky_re_lu_12/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_969638?
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0conv2d_transpose_8_969661*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_969660?
IdentityIdentity3conv2d_transpose_8/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970757

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_971010

inputsB
(conv2d_transpose_readvariableop_resource:@
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
s
TanhTanhconv2d_transpose:output:0*
T0*A
_output_shapes/
-:+???????????????????????????q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????@: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
F
*__inference_reshape_2_layer_call_fn_970555

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_969524i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_970132
dense_4_input
unknown:	d?b
	unknown_0:	?b
	unknown_1:	?b
	unknown_2:	?b
	unknown_3:	?b%
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_969148w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_4_input
?
?
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_969471

inputsB
(conv2d_transpose_readvariableop_resource:@
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
s
TanhTanhconv2d_transpose:output:0*
T0*A
_output_shapes/
-:+???????????????????????????q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????@: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_971031

inputsB
(conv2d_transpose_readvariableop_resource:@
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
a
TanhTanhconv2d_transpose:output:0*
T0*/
_output_shapes
:?????????_
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:?????????h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
C__inference_dense_4_layer_call_and_return_conditional_losses_969490

inputs1
matmul_readvariableop_resource:	d?b
identity??MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b`
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:??????????b^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_8_layer_call_fn_970844

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969394?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_6_layer_call_fn_970576

inputs#
unknown:??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_969264?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_7_layer_call_fn_970774

inputs"
unknown:@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_969367?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?8
?	
H__inference_sequential_4_layer_call_and_return_conditional_losses_970046
dense_4_input!
dense_4_970002:	d?b+
batch_normalization_6_970005:	?b+
batch_normalization_6_970007:	?b+
batch_normalization_6_970009:	?b+
batch_normalization_6_970011:	?b5
conv2d_transpose_6_970016:??+
batch_normalization_7_970019:	?+
batch_normalization_7_970021:	?+
batch_normalization_7_970023:	?+
batch_normalization_7_970025:	?4
conv2d_transpose_7_970029:@?*
batch_normalization_8_970032:@*
batch_normalization_8_970034:@*
batch_normalization_8_970036:@*
batch_normalization_8_970038:@3
conv2d_transpose_8_970042:@
identity??-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall?-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_6/StatefulPartitionedCall?*conv2d_transpose_7/StatefulPartitionedCall?*conv2d_transpose_8/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_970002*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_969490?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_6_970005batch_normalization_6_970007batch_normalization_6_970009batch_normalization_6_970011*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_969172?
leaky_re_lu_10/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_969508?
reshape_2/PartitionedCallPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_969524?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_6_970016*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_969545?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0batch_normalization_7_970019batch_normalization_7_970021batch_normalization_7_970023batch_normalization_7_970025*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969566?
leaky_re_lu_11/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_969581?
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_11/PartitionedCall:output:0conv2d_transpose_7_970029*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_969602?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0batch_normalization_8_970032batch_normalization_8_970034batch_normalization_8_970036batch_normalization_8_970038*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969623?
leaky_re_lu_12/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_969638?
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0conv2d_transpose_8_970042*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_969660?
IdentityIdentity3conv2d_transpose_8/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_4_input
?
?
3__inference_conv2d_transpose_8_layer_call_fn_970972

inputs!
unknown:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_969471?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????@: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969803

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_970831

inputsC
(conv2d_transpose_readvariableop_resource:@?
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
p
IdentityIdentityconv2d_transpose:output:0^NoOp*
T0*/
_output_shapes
:?????????@h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_8_layer_call_fn_970870

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969623w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_7_layer_call_fn_970659

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969322?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_969545

inputsD
(conv2d_transpose_readvariableop_resource:??
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
q
IdentityIdentityconv2d_transpose:output:0^NoOp*
T0*0
_output_shapes
:??????????h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_969219

inputs6
'assignmovingavg_readvariableop_resource:	?b8
)assignmovingavg_1_readvariableop_resource:	?b4
%batchnorm_mul_readvariableop_resource:	?b0
!batchnorm_readvariableop_resource:	?b
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?b*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?b?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????bl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?b*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?b*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?b*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?by
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?b?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?b*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?b
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?b?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?bQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?b
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?bd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????bi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?bw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?bs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????bc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????b?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????b: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
}
(__inference_dense_4_layer_call_fn_970453

inputs
unknown:	d?b
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_969490p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????b`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969623

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970739

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:???????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969291

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_7_layer_call_fn_970781

inputs"
unknown:@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_969602w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970919

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_970169

inputs
unknown:	d?b
	unknown_0:	?b
	unknown_1:	?b
	unknown_2:	?b
	unknown_3:	?b%
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_969665w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_970633

inputsD
(conv2d_transpose_readvariableop_resource:??
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
q
IdentityIdentityconv2d_transpose:output:0^NoOp*
T0*0
_output_shapes
:??????????h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_reshape_2_layer_call_and_return_conditional_losses_969524

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_969999
dense_4_input
unknown:	d?b
	unknown_0:	?b
	unknown_1:	?b
	unknown_2:	?b
	unknown_3:	?b%
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*,
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_969927w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_4_input
?
?
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_969602

inputsC
(conv2d_transpose_readvariableop_resource:@?
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B :I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
p
IdentityIdentityconv2d_transpose:output:0^NoOp*
T0*/
_output_shapes
:?????????@h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970703

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969322

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_7_layer_call_fn_970646

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_969291?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_8_layer_call_fn_970883

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969746w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_969264

inputsD
(conv2d_transpose_readvariableop_resource:??
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
?
IdentityIdentityconv2d_transpose:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_969148
dense_4_inputF
3sequential_4_dense_4_matmul_readvariableop_resource:	d?bS
Dsequential_4_batch_normalization_6_batchnorm_readvariableop_resource:	?bW
Hsequential_4_batch_normalization_6_batchnorm_mul_readvariableop_resource:	?bU
Fsequential_4_batch_normalization_6_batchnorm_readvariableop_1_resource:	?bU
Fsequential_4_batch_normalization_6_batchnorm_readvariableop_2_resource:	?bd
Hsequential_4_conv2d_transpose_6_conv2d_transpose_readvariableop_resource:??I
:sequential_4_batch_normalization_7_readvariableop_resource:	?K
<sequential_4_batch_normalization_7_readvariableop_1_resource:	?Z
Ksequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?c
Hsequential_4_conv2d_transpose_7_conv2d_transpose_readvariableop_resource:@?H
:sequential_4_batch_normalization_8_readvariableop_resource:@J
<sequential_4_batch_normalization_8_readvariableop_1_resource:@Y
Ksequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:@[
Msequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:@b
Hsequential_4_conv2d_transpose_8_conv2d_transpose_readvariableop_resource:@
identity??;sequential_4/batch_normalization_6/batchnorm/ReadVariableOp?=sequential_4/batch_normalization_6/batchnorm/ReadVariableOp_1?=sequential_4/batch_normalization_6/batchnorm/ReadVariableOp_2??sequential_4/batch_normalization_6/batchnorm/mul/ReadVariableOp?Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?1sequential_4/batch_normalization_7/ReadVariableOp?3sequential_4/batch_normalization_7/ReadVariableOp_1?Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?1sequential_4/batch_normalization_8/ReadVariableOp?3sequential_4/batch_normalization_8/ReadVariableOp_1??sequential_4/conv2d_transpose_6/conv2d_transpose/ReadVariableOp??sequential_4/conv2d_transpose_7/conv2d_transpose/ReadVariableOp??sequential_4/conv2d_transpose_8/conv2d_transpose/ReadVariableOp?*sequential_4/dense_4/MatMul/ReadVariableOp?
*sequential_4/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_4_matmul_readvariableop_resource*
_output_shapes
:	d?b*
dtype0?
sequential_4/dense_4/MatMulMatMuldense_4_input2sequential_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b?
;sequential_4/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpDsequential_4_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:?b*
dtype0w
2sequential_4/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
0sequential_4/batch_normalization_6/batchnorm/addAddV2Csequential_4/batch_normalization_6/batchnorm/ReadVariableOp:value:0;sequential_4/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?b?
2sequential_4/batch_normalization_6/batchnorm/RsqrtRsqrt4sequential_4/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:?b?
?sequential_4/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_4_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?b*
dtype0?
0sequential_4/batch_normalization_6/batchnorm/mulMul6sequential_4/batch_normalization_6/batchnorm/Rsqrt:y:0Gsequential_4/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?b?
2sequential_4/batch_normalization_6/batchnorm/mul_1Mul%sequential_4/dense_4/MatMul:product:04sequential_4/batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????b?
=sequential_4/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_4_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:?b*
dtype0?
2sequential_4/batch_normalization_6/batchnorm/mul_2MulEsequential_4/batch_normalization_6/batchnorm/ReadVariableOp_1:value:04sequential_4/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:?b?
=sequential_4/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_4_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:?b*
dtype0?
0sequential_4/batch_normalization_6/batchnorm/subSubEsequential_4/batch_normalization_6/batchnorm/ReadVariableOp_2:value:06sequential_4/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?b?
2sequential_4/batch_normalization_6/batchnorm/add_1AddV26sequential_4/batch_normalization_6/batchnorm/mul_1:z:04sequential_4/batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????b?
%sequential_4/leaky_re_lu_10/LeakyRelu	LeakyRelu6sequential_4/batch_normalization_6/batchnorm/add_1:z:0*(
_output_shapes
:??????????b*
alpha%???>
sequential_4/reshape_2/ShapeShape3sequential_4/leaky_re_lu_10/LeakyRelu:activations:0*
T0*
_output_shapes
:t
*sequential_4/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_4/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_4/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_4/reshape_2/strided_sliceStridedSlice%sequential_4/reshape_2/Shape:output:03sequential_4/reshape_2/strided_slice/stack:output:05sequential_4/reshape_2/strided_slice/stack_1:output:05sequential_4/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_4/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_4/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :i
&sequential_4/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
$sequential_4/reshape_2/Reshape/shapePack-sequential_4/reshape_2/strided_slice:output:0/sequential_4/reshape_2/Reshape/shape/1:output:0/sequential_4/reshape_2/Reshape/shape/2:output:0/sequential_4/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
sequential_4/reshape_2/ReshapeReshape3sequential_4/leaky_re_lu_10/LeakyRelu:activations:0-sequential_4/reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????|
%sequential_4/conv2d_transpose_6/ShapeShape'sequential_4/reshape_2/Reshape:output:0*
T0*
_output_shapes
:}
3sequential_4/conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_4/conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_4/conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-sequential_4/conv2d_transpose_6/strided_sliceStridedSlice.sequential_4/conv2d_transpose_6/Shape:output:0<sequential_4/conv2d_transpose_6/strided_slice/stack:output:0>sequential_4/conv2d_transpose_6/strided_slice/stack_1:output:0>sequential_4/conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_4/conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_4/conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :j
'sequential_4/conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
%sequential_4/conv2d_transpose_6/stackPack6sequential_4/conv2d_transpose_6/strided_slice:output:00sequential_4/conv2d_transpose_6/stack/1:output:00sequential_4/conv2d_transpose_6/stack/2:output:00sequential_4/conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_4/conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7sequential_4/conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_4/conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/sequential_4/conv2d_transpose_6/strided_slice_1StridedSlice.sequential_4/conv2d_transpose_6/stack:output:0>sequential_4/conv2d_transpose_6/strided_slice_1/stack:output:0@sequential_4/conv2d_transpose_6/strided_slice_1/stack_1:output:0@sequential_4/conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
?sequential_4/conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_4_conv2d_transpose_6_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
0sequential_4/conv2d_transpose_6/conv2d_transposeConv2DBackpropInput.sequential_4/conv2d_transpose_6/stack:output:0Gsequential_4/conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0'sequential_4/reshape_2/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
1sequential_4/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype0?
3sequential_4/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
3sequential_4/batch_normalization_7/FusedBatchNormV3FusedBatchNormV39sequential_4/conv2d_transpose_6/conv2d_transpose:output:09sequential_4/batch_normalization_7/ReadVariableOp:value:0;sequential_4/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
%sequential_4/leaky_re_lu_11/LeakyRelu	LeakyRelu7sequential_4/batch_normalization_7/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>?
%sequential_4/conv2d_transpose_7/ShapeShape3sequential_4/leaky_re_lu_11/LeakyRelu:activations:0*
T0*
_output_shapes
:}
3sequential_4/conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_4/conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_4/conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-sequential_4/conv2d_transpose_7/strided_sliceStridedSlice.sequential_4/conv2d_transpose_7/Shape:output:0<sequential_4/conv2d_transpose_7/strided_slice/stack:output:0>sequential_4/conv2d_transpose_7/strided_slice/stack_1:output:0>sequential_4/conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_4/conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_4/conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_4/conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
%sequential_4/conv2d_transpose_7/stackPack6sequential_4/conv2d_transpose_7/strided_slice:output:00sequential_4/conv2d_transpose_7/stack/1:output:00sequential_4/conv2d_transpose_7/stack/2:output:00sequential_4/conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_4/conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7sequential_4/conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_4/conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/sequential_4/conv2d_transpose_7/strided_slice_1StridedSlice.sequential_4/conv2d_transpose_7/stack:output:0>sequential_4/conv2d_transpose_7/strided_slice_1/stack:output:0@sequential_4/conv2d_transpose_7/strided_slice_1/stack_1:output:0@sequential_4/conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
?sequential_4/conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_4_conv2d_transpose_7_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
0sequential_4/conv2d_transpose_7/conv2d_transposeConv2DBackpropInput.sequential_4/conv2d_transpose_7/stack:output:0Gsequential_4/conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:03sequential_4/leaky_re_lu_11/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
1sequential_4/batch_normalization_8/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype0?
3sequential_4/batch_normalization_8/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
3sequential_4/batch_normalization_8/FusedBatchNormV3FusedBatchNormV39sequential_4/conv2d_transpose_7/conv2d_transpose:output:09sequential_4/batch_normalization_8/ReadVariableOp:value:0;sequential_4/batch_normalization_8/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
%sequential_4/leaky_re_lu_12/LeakyRelu	LeakyRelu7sequential_4/batch_normalization_8/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>?
%sequential_4/conv2d_transpose_8/ShapeShape3sequential_4/leaky_re_lu_12/LeakyRelu:activations:0*
T0*
_output_shapes
:}
3sequential_4/conv2d_transpose_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_4/conv2d_transpose_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_4/conv2d_transpose_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-sequential_4/conv2d_transpose_8/strided_sliceStridedSlice.sequential_4/conv2d_transpose_8/Shape:output:0<sequential_4/conv2d_transpose_8/strided_slice/stack:output:0>sequential_4/conv2d_transpose_8/strided_slice/stack_1:output:0>sequential_4/conv2d_transpose_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_4/conv2d_transpose_8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_4/conv2d_transpose_8/stack/2Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_4/conv2d_transpose_8/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
%sequential_4/conv2d_transpose_8/stackPack6sequential_4/conv2d_transpose_8/strided_slice:output:00sequential_4/conv2d_transpose_8/stack/1:output:00sequential_4/conv2d_transpose_8/stack/2:output:00sequential_4/conv2d_transpose_8/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_4/conv2d_transpose_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7sequential_4/conv2d_transpose_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_4/conv2d_transpose_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/sequential_4/conv2d_transpose_8/strided_slice_1StridedSlice.sequential_4/conv2d_transpose_8/stack:output:0>sequential_4/conv2d_transpose_8/strided_slice_1/stack:output:0@sequential_4/conv2d_transpose_8/strided_slice_1/stack_1:output:0@sequential_4/conv2d_transpose_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
?sequential_4/conv2d_transpose_8/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_4_conv2d_transpose_8_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype0?
0sequential_4/conv2d_transpose_8/conv2d_transposeConv2DBackpropInput.sequential_4/conv2d_transpose_8/stack:output:0Gsequential_4/conv2d_transpose_8/conv2d_transpose/ReadVariableOp:value:03sequential_4/leaky_re_lu_12/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
$sequential_4/conv2d_transpose_8/TanhTanh9sequential_4/conv2d_transpose_8/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????
IdentityIdentity(sequential_4/conv2d_transpose_8/Tanh:y:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp<^sequential_4/batch_normalization_6/batchnorm/ReadVariableOp>^sequential_4/batch_normalization_6/batchnorm/ReadVariableOp_1>^sequential_4/batch_normalization_6/batchnorm/ReadVariableOp_2@^sequential_4/batch_normalization_6/batchnorm/mul/ReadVariableOpC^sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12^sequential_4/batch_normalization_7/ReadVariableOp4^sequential_4/batch_normalization_7/ReadVariableOp_1C^sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12^sequential_4/batch_normalization_8/ReadVariableOp4^sequential_4/batch_normalization_8/ReadVariableOp_1@^sequential_4/conv2d_transpose_6/conv2d_transpose/ReadVariableOp@^sequential_4/conv2d_transpose_7/conv2d_transpose/ReadVariableOp@^sequential_4/conv2d_transpose_8/conv2d_transpose/ReadVariableOp+^sequential_4/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????d: : : : : : : : : : : : : : : : 2z
;sequential_4/batch_normalization_6/batchnorm/ReadVariableOp;sequential_4/batch_normalization_6/batchnorm/ReadVariableOp2~
=sequential_4/batch_normalization_6/batchnorm/ReadVariableOp_1=sequential_4/batch_normalization_6/batchnorm/ReadVariableOp_12~
=sequential_4/batch_normalization_6/batchnorm/ReadVariableOp_2=sequential_4/batch_normalization_6/batchnorm/ReadVariableOp_22?
?sequential_4/batch_normalization_6/batchnorm/mul/ReadVariableOp?sequential_4/batch_normalization_6/batchnorm/mul/ReadVariableOp2?
Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12f
1sequential_4/batch_normalization_7/ReadVariableOp1sequential_4/batch_normalization_7/ReadVariableOp2j
3sequential_4/batch_normalization_7/ReadVariableOp_13sequential_4/batch_normalization_7/ReadVariableOp_12?
Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12f
1sequential_4/batch_normalization_8/ReadVariableOp1sequential_4/batch_normalization_8/ReadVariableOp2j
3sequential_4/batch_normalization_8/ReadVariableOp_13sequential_4/batch_normalization_8/ReadVariableOp_12?
?sequential_4/conv2d_transpose_6/conv2d_transpose/ReadVariableOp?sequential_4/conv2d_transpose_6/conv2d_transpose/ReadVariableOp2?
?sequential_4/conv2d_transpose_7/conv2d_transpose/ReadVariableOp?sequential_4/conv2d_transpose_7/conv2d_transpose/ReadVariableOp2?
?sequential_4/conv2d_transpose_8/conv2d_transpose/ReadVariableOp?sequential_4/conv2d_transpose_8/conv2d_transpose/ReadVariableOp2X
*sequential_4/dense_4/MatMul/ReadVariableOp*sequential_4/dense_4/MatMul/ReadVariableOp:V R
'
_output_shapes
:?????????d
'
_user_specified_namedense_4_input
?
a
E__inference_reshape_2_layer_call_and_return_conditional_losses_970569

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
f
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_970550

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????b*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????b"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????b:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_969746

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970937

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_970811

inputsC
(conv2d_transpose_readvariableop_resource:@?
identity??conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
?
IdentityIdentityconv2d_transpose:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@h
NoOpNoOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
dense_4_input6
serving_default_dense_4_input:0?????????dN
conv2d_transpose_88
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?

kernel
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(	variables
)trainable_variables
*regularization_losses
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
,axis
	-gamma
.beta
/moving_mean
0moving_variance
1	variables
2trainable_variables
3regularization_losses
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

9kernel
:	variables
;trainable_variables
<regularization_losses
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Kkernel
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
0
1
2
3
4
'5
-6
.7
/8
09
910
?11
@12
A13
B14
K15"
trackable_list_wrapper
f
0
1
2
'3
-4
.5
96
?7
@8
K9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
!:	d?b2dense_4/kernel
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?b2batch_normalization_6/gamma
):'?b2batch_normalization_6/beta
2:0?b (2!batch_normalization_6/moving_mean
6:4?b (2%batch_normalization_6/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
 trainable_variables
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
#	variables
$trainable_variables
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5:3??2conv2d_transpose_6/kernel
'
'0"
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
(	variables
)trainable_variables
*regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?2batch_normalization_7/gamma
):'?2batch_normalization_7/beta
2:0? (2!batch_normalization_7/moving_mean
6:4? (2%batch_normalization_7/moving_variance
<
-0
.1
/2
03"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
1	variables
2trainable_variables
3regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
5	variables
6trainable_variables
7regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2@?2conv2d_transpose_7/kernel
'
90"
trackable_list_wrapper
'
90"
trackable_list_wrapper
 "
trackable_list_wrapper
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
:	variables
;trainable_variables
<regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_8/gamma
(:&@2batch_normalization_8/beta
1:/@ (2!batch_normalization_8/moving_mean
5:3@ (2%batch_normalization_8/moving_variance
<
?0
@1
A2
B3"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
3:1@2conv2d_transpose_8/kernel
'
K0"
trackable_list_wrapper
'
K0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
J
0
1
/2
03
A4
B5"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
-__inference_sequential_4_layer_call_fn_969700
-__inference_sequential_4_layer_call_fn_970169
-__inference_sequential_4_layer_call_fn_970206
-__inference_sequential_4_layer_call_fn_969999?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_4_layer_call_and_return_conditional_losses_970319
H__inference_sequential_4_layer_call_and_return_conditional_losses_970446
H__inference_sequential_4_layer_call_and_return_conditional_losses_970046
H__inference_sequential_4_layer_call_and_return_conditional_losses_970093?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_969148dense_4_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_4_layer_call_fn_970453?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_4_layer_call_and_return_conditional_losses_970460?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
6__inference_batch_normalization_6_layer_call_fn_970473
6__inference_batch_normalization_6_layer_call_fn_970486?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_970506
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_970540?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_leaky_re_lu_10_layer_call_fn_970545?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_970550?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_reshape_2_layer_call_fn_970555?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_reshape_2_layer_call_and_return_conditional_losses_970569?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_6_layer_call_fn_970576
3__inference_conv2d_transpose_6_layer_call_fn_970583?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_970613
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_970633?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
6__inference_batch_normalization_7_layer_call_fn_970646
6__inference_batch_normalization_7_layer_call_fn_970659
6__inference_batch_normalization_7_layer_call_fn_970672
6__inference_batch_normalization_7_layer_call_fn_970685?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970703
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970721
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970739
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970757?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_leaky_re_lu_11_layer_call_fn_970762?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_970767?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_7_layer_call_fn_970774
3__inference_conv2d_transpose_7_layer_call_fn_970781?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_970811
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_970831?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
6__inference_batch_normalization_8_layer_call_fn_970844
6__inference_batch_normalization_8_layer_call_fn_970857
6__inference_batch_normalization_8_layer_call_fn_970870
6__inference_batch_normalization_8_layer_call_fn_970883?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970901
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970919
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970937
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970955?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_leaky_re_lu_12_layer_call_fn_970960?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_970965?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_8_layer_call_fn_970972
3__inference_conv2d_transpose_8_layer_call_fn_970979?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_971010
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_971031?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_970132dense_4_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_969148?'-./09?@ABK6?3
,?)
'?$
dense_4_input?????????d
? "O?L
J
conv2d_transpose_84?1
conv2d_transpose_8??????????
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_970506d4?1
*?'
!?
inputs??????????b
p 
? "&?#
?
0??????????b
? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_970540d4?1
*?'
!?
inputs??????????b
p
? "&?#
?
0??????????b
? ?
6__inference_batch_normalization_6_layer_call_fn_970473W4?1
*?'
!?
inputs??????????b
p 
? "???????????b?
6__inference_batch_normalization_6_layer_call_fn_970486W4?1
*?'
!?
inputs??????????b
p
? "???????????b?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970703?-./0N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970721?-./0N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970739t-./0<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_970757t-./0<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
6__inference_batch_normalization_7_layer_call_fn_970646?-./0N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
6__inference_batch_normalization_7_layer_call_fn_970659?-./0N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
6__inference_batch_normalization_7_layer_call_fn_970672g-./0<?9
2?/
)?&
inputs??????????
p 
? "!????????????
6__inference_batch_normalization_7_layer_call_fn_970685g-./0<?9
2?/
)?&
inputs??????????
p
? "!????????????
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970901??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970919??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970937r?@AB;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_970955r?@AB;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
6__inference_batch_normalization_8_layer_call_fn_970844??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
6__inference_batch_normalization_8_layer_call_fn_970857??@ABM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
6__inference_batch_normalization_8_layer_call_fn_970870e?@AB;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
6__inference_batch_normalization_8_layer_call_fn_970883e?@AB;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_970613?'J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_970633m'8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
3__inference_conv2d_transpose_6_layer_call_fn_970576?'J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
3__inference_conv2d_transpose_6_layer_call_fn_970583`'8?5
.?+
)?&
inputs??????????
? "!????????????
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_970811?9J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_970831l98?5
.?+
)?&
inputs??????????
? "-?*
#? 
0?????????@
? ?
3__inference_conv2d_transpose_7_layer_call_fn_970774?9J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
3__inference_conv2d_transpose_7_layer_call_fn_970781_98?5
.?+
)?&
inputs??????????
? " ??????????@?
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_971010?KI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_971031kK7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????
? ?
3__inference_conv2d_transpose_8_layer_call_fn_970972?KI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
3__inference_conv2d_transpose_8_layer_call_fn_970979^K7?4
-?*
(?%
inputs?????????@
? " ???????????
C__inference_dense_4_layer_call_and_return_conditional_losses_970460\/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????b
? {
(__inference_dense_4_layer_call_fn_970453O/?,
%?"
 ?
inputs?????????d
? "???????????b?
J__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_970550Z0?-
&?#
!?
inputs??????????b
? "&?#
?
0??????????b
? ?
/__inference_leaky_re_lu_10_layer_call_fn_970545M0?-
&?#
!?
inputs??????????b
? "???????????b?
J__inference_leaky_re_lu_11_layer_call_and_return_conditional_losses_970767j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
/__inference_leaky_re_lu_11_layer_call_fn_970762]8?5
.?+
)?&
inputs??????????
? "!????????????
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_970965h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
/__inference_leaky_re_lu_12_layer_call_fn_970960[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
E__inference_reshape_2_layer_call_and_return_conditional_losses_970569b0?-
&?#
!?
inputs??????????b
? ".?+
$?!
0??????????
? ?
*__inference_reshape_2_layer_call_fn_970555U0?-
&?#
!?
inputs??????????b
? "!????????????
H__inference_sequential_4_layer_call_and_return_conditional_losses_970046?'-./09?@ABK>?;
4?1
'?$
dense_4_input?????????d
p 

 
? "-?*
#? 
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_970093?'-./09?@ABK>?;
4?1
'?$
dense_4_input?????????d
p

 
? "-?*
#? 
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_970319z'-./09?@ABK7?4
-?*
 ?
inputs?????????d
p 

 
? "-?*
#? 
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_970446z'-./09?@ABK7?4
-?*
 ?
inputs?????????d
p

 
? "-?*
#? 
0?????????
? ?
-__inference_sequential_4_layer_call_fn_969700t'-./09?@ABK>?;
4?1
'?$
dense_4_input?????????d
p 

 
? " ???????????
-__inference_sequential_4_layer_call_fn_969999t'-./09?@ABK>?;
4?1
'?$
dense_4_input?????????d
p

 
? " ???????????
-__inference_sequential_4_layer_call_fn_970169m'-./09?@ABK7?4
-?*
 ?
inputs?????????d
p 

 
? " ???????????
-__inference_sequential_4_layer_call_fn_970206m'-./09?@ABK7?4
-?*
 ?
inputs?????????d
p

 
? " ???????????
$__inference_signature_wrapper_970132?'-./09?@ABKG?D
? 
=?:
8
dense_4_input'?$
dense_4_input?????????d"O?L
J
conv2d_transpose_84?1
conv2d_transpose_8?????????