
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
dtype0*
shared_name *
shape: *
	container 

global_step/AssignAssignglobal_stepglobal_step/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@global_step
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
/
Add/yConst*
value	B :*
dtype0
,
AddAddglobal_step/readAdd/y*
T0
t
AssignAssignglobal_stepAdd*
T0*
use_locking(*
validate_shape(*
_class
loc:@global_step
5

batch_sizePlaceholder*
dtype0*
shape:
:
sequence_lengthPlaceholder*
dtype0*
shape:
;
masksPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
+
CastCastmasks*

DstT0*

SrcT0
F
last_reward/initial_valueConst*
valueB
 *    *
dtype0
W
last_reward
VariableV2*
dtype0*
shared_name *
shape: *
	container 

last_reward/AssignAssignlast_rewardlast_reward/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@last_reward
R
last_reward/readIdentitylast_reward*
T0*
_class
loc:@last_reward
3

new_rewardPlaceholder*
dtype0*
shape: 
}
Assign_1Assignlast_reward
new_reward*
T0*
use_locking(*
validate_shape(*
_class
loc:@last_reward
L
vector_observationPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿW
¥
?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shapeConst*
valueB"W      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *ÆXú=*
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
þ
Imain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
seed

=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
ù
9main_graph_0/hidden_0/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
¢
main_graph_0/hidden_0/kernel
VariableV2*
dtype0*
shared_name *
shape:	W*
	container */
_class%
#!loc:@main_graph_0/hidden_0/kernel
é
#main_graph_0/hidden_0/kernel/AssignAssignmain_graph_0/hidden_0/kernel9main_graph_0/hidden_0/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

!main_graph_0/hidden_0/kernel/readIdentitymain_graph_0/hidden_0/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

<main_graph_0/hidden_0/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias

2main_graph_0/hidden_0/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias
ð
,main_graph_0/hidden_0/bias/Initializer/zerosFill<main_graph_0/hidden_0/bias/Initializer/zeros/shape_as_tensor2main_graph_0/hidden_0/bias/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_0/bias
Ö
!main_graph_0/hidden_0/bias/AssignAssignmain_graph_0/hidden_0/bias,main_graph_0/hidden_0/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/bias/readIdentitymain_graph_0/hidden_0/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/MatMulMatMulvector_observation!main_graph_0/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_0/hidden_0/BiasAddBiasAddmain_graph_0/hidden_0/MatMulmain_graph_0/hidden_0/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_0/SigmoidSigmoidmain_graph_0/hidden_0/BiasAdd*
T0
g
main_graph_0/hidden_0/MulMulmain_graph_0/hidden_0/BiasAddmain_graph_0/hidden_0/Sigmoid*
T0
¥
?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *ÐdN=*
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
þ
Imain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
seed

=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
ù
9main_graph_0/hidden_1/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
£
main_graph_0/hidden_1/kernel
VariableV2*
dtype0*
shared_name *
shape:
*
	container */
_class%
#!loc:@main_graph_0/hidden_1/kernel
é
#main_graph_0/hidden_1/kernel/AssignAssignmain_graph_0/hidden_1/kernel9main_graph_0/hidden_1/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

!main_graph_0/hidden_1/kernel/readIdentitymain_graph_0/hidden_1/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

<main_graph_0/hidden_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias

2main_graph_0/hidden_1/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias
ð
,main_graph_0/hidden_1/bias/Initializer/zerosFill<main_graph_0/hidden_1/bias/Initializer/zeros/shape_as_tensor2main_graph_0/hidden_1/bias/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_1/bias
Ö
!main_graph_0/hidden_1/bias/AssignAssignmain_graph_0/hidden_1/bias,main_graph_0/hidden_1/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/bias/readIdentitymain_graph_0/hidden_1/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/MatMulMatMulmain_graph_0/hidden_0/Mul!main_graph_0/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_0/hidden_1/BiasAddBiasAddmain_graph_0/hidden_1/MatMulmain_graph_0/hidden_1/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_1/SigmoidSigmoidmain_graph_0/hidden_1/BiasAdd*
T0
g
main_graph_0/hidden_1/MulMulmain_graph_0/hidden_1/BiasAddmain_graph_0/hidden_1/Sigmoid*
T0

/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel
|
.dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel
~
0dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *s¥;*
dtype0*
_class
loc:@dense/kernel
Î
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2;*
_class
loc:@dense/kernel*
seed
Ë
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel
¹
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel

dense/kernel
VariableV2*
dtype0*
shared_name *
shape:	*
	container *
_class
loc:@dense/kernel
©
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
s
dense/MatMulMatMulmain_graph_0/hidden_1/Muldense/kernel/read*
transpose_b( *
T0*
transpose_a( 
A
action_probs/concat_dimConst*
value	B :*
dtype0
/
action_probsIdentitydense/MatMul*
T0
F
action_masksPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
H
strided_slice/stackConst*
valueB"        *
dtype0
J
strided_slice/stack_1Const*
valueB"       *
dtype0
J
strided_slice/stack_2Const*
valueB"      *
dtype0
è
strided_sliceStridedSliceaction_probsstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
J
strided_slice_1/stackConst*
valueB"        *
dtype0
L
strided_slice_1/stack_1Const*
valueB"       *
dtype0
L
strided_slice_1/stack_2Const*
valueB"      *
dtype0
ð
strided_slice_1StridedSliceaction_masksstrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
*
SoftmaxSoftmaxstrided_slice*
T0
-
MulMulSoftmaxstrided_slice_1*
T0
2
add/yConst*
valueB
 *ÿæÛ.*
dtype0

addAddMuladd/y*
T0
4
add_1/yConst*
valueB
 *ÿæÛ.*
dtype0
#
add_1Addaddadd_1/y*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
N
SumSumadd_1Sum/reduction_indices*
	keep_dims(*
T0*

Tidx0
%
truedivRealDivaddSum*
T0

LogLogtruediv*
T0
M
#multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial/MultinomialMultinomialLog#multinomial/Multinomial/num_samples*
T0*
seed2W*
output_dtype0	*
seed
;
concat/concat_dimConst*
value	B :*
dtype0
4
concatIdentitymultinomial/Multinomial*
T0	

Log_1Logtruediv*
T0
=
concat_1/concat_dimConst*
value	B :*
dtype0
$
concat_1IdentityLog_1*
T0
#
actionIdentityconcat*
T0	

/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel
}
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *|Ý½*
dtype0*!
_class
loc:@dense_1/kernel
}
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *|Ý=*
dtype0*!
_class
loc:@dense_1/kernel
Ì
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2b*!
_class
loc:@dense_1/kernel*
seed
¾
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel
È
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel
º
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel

dense_1/kernel
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_1/kernel
¯
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
}
.dense_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_1/bias
r
$dense_1/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_1/bias
¸
dense_1/bias/Initializer/zerosFill.dense_1/bias/Initializer/zeros/shape_as_tensor$dense_1/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias
}
dense_1/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_1/bias

dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
w
dense_1/MatMulMatMulmain_graph_0/hidden_1/Muldense_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC
4
value_estimateIdentitydense_1/BiasAdd*
T0
G
action_holderPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
J
strided_slice_2/stackConst*
valueB"        *
dtype0
L
strided_slice_2/stack_1Const*
valueB"       *
dtype0
L
strided_slice_2/stack_2Const*
valueB"      *
dtype0
ñ
strided_slice_2StridedSliceaction_holderstrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
end_mask*
shrink_axis_mask*
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
=
one_hot/on_valueConst*
valueB
 *  ?*
dtype0
>
one_hot/off_valueConst*
valueB
 *    *
dtype0
7
one_hot/depthConst*
value	B :*
dtype0
~
one_hotOneHotstrided_slice_2one_hot/depthone_hot/on_valueone_hot/off_value*
axisÿÿÿÿÿÿÿÿÿ*
T0*
TI0
=
concat_2/concat_dimConst*
value	B :*
dtype0
&
concat_2Identityone_hot*
T0
K
old_probabilitiesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
J
strided_slice_3/stackConst*
valueB"        *
dtype0
L
strided_slice_3/stack_1Const*
valueB"       *
dtype0
L
strided_slice_3/stack_2Const*
valueB"      *
dtype0
õ
strided_slice_3StridedSliceold_probabilitiesstrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
J
strided_slice_4/stackConst*
valueB"        *
dtype0
L
strided_slice_4/stack_1Const*
valueB"       *
dtype0
L
strided_slice_4/stack_2Const*
valueB"      *
dtype0
ð
strided_slice_4StridedSliceaction_masksstrided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
.
	Softmax_1Softmaxstrided_slice_3*
T0
1
Mul_1Mul	Softmax_1strided_slice_4*
T0
4
add_2/yConst*
valueB
 *ÿæÛ.*
dtype0
%
add_2AddMul_1add_2/y*
T0
4
add_3/yConst*
valueB
 *ÿæÛ.*
dtype0
%
add_3Addadd_2add_3/y*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
R
Sum_1Sumadd_3Sum_1/reduction_indices*
	keep_dims(*
T0*

Tidx0
+
	truediv_1RealDivadd_2Sum_1*
T0
 
Log_2Log	truediv_1*
T0
O
%multinomial_1/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_1/MultinomialMultinomialLog_2%multinomial_1/Multinomial/num_samples*
T0*
seed2*
output_dtype0	*
seed
=
concat_3/concat_dimConst*
value	B :*
dtype0
8
concat_3Identitymultinomial_1/Multinomial*
T0	
 
Log_3Log	truediv_1*
T0
=
concat_4/concat_dimConst*
value	B :*
dtype0
$
concat_4IdentityLog_3*
T0
J
strided_slice_5/stackConst*
valueB"        *
dtype0
L
strided_slice_5/stack_1Const*
valueB"       *
dtype0
L
strided_slice_5/stack_2Const*
valueB"      *
dtype0
ð
strided_slice_5StridedSliceaction_probsstrided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
.
	Softmax_2Softmaxstrided_slice_5*
T0
J
strided_slice_6/stackConst*
valueB"        *
dtype0
L
strided_slice_6/stack_1Const*
valueB"       *
dtype0
L
strided_slice_6/stack_2Const*
valueB"      *
dtype0
ð
strided_slice_6StridedSliceaction_probsstrided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
P
&softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0
Z
'softmax_cross_entropy_with_logits/ShapeShapestrided_slice_6*
T0*
out_type0
R
(softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0
\
)softmax_cross_entropy_with_logits/Shape_1Shapestrided_slice_6*
T0*
out_type0
Q
'softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0

%softmax_cross_entropy_with_logits/SubSub(softmax_cross_entropy_with_logits/Rank_1'softmax_cross_entropy_with_logits/Sub/y*
T0
z
-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*

axis *
T0*
N
Z
,softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0
Î
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0
h
1softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
W
-softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0
Ý
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*
T0*
N*

Tidx0

)softmax_cross_entropy_with_logits/ReshapeReshapestrided_slice_6(softmax_cross_entropy_with_logits/concat*
T0*
Tshape0
R
(softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0
V
)softmax_cross_entropy_with_logits/Shape_2Shape	Softmax_2*
T0*
out_type0
S
)softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_1Sub(softmax_cross_entropy_with_logits/Rank_2)softmax_cross_entropy_with_logits/Sub_1/y*
T0
~
/softmax_cross_entropy_with_logits/Slice_1/beginPack'softmax_cross_entropy_with_logits/Sub_1*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0
Ô
)softmax_cross_entropy_with_logits/Slice_1Slice)softmax_cross_entropy_with_logits/Shape_2/softmax_cross_entropy_with_logits/Slice_1/begin.softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
Y
/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits/concat_1ConcatV23softmax_cross_entropy_with_logits/concat_1/values_0)softmax_cross_entropy_with_logits/Slice_1/softmax_cross_entropy_with_logits/concat_1/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits/Reshape_1Reshape	Softmax_2*softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0
£
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)softmax_cross_entropy_with_logits/Reshape+softmax_cross_entropy_with_logits/Reshape_1*
T0
S
)softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_2Sub&softmax_cross_entropy_with_logits/Rank)softmax_cross_entropy_with_logits/Sub_2/y*
T0
]
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0
}
.softmax_cross_entropy_with_logits/Slice_2/sizePack'softmax_cross_entropy_with_logits/Sub_2*

axis *
T0*
N
Ò
)softmax_cross_entropy_with_logits/Slice_2Slice'softmax_cross_entropy_with_logits/Shape/softmax_cross_entropy_with_logits/Slice_2/begin.softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0

+softmax_cross_entropy_with_logits/Reshape_2Reshape!softmax_cross_entropy_with_logits)softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0
X
stackPack+softmax_cross_entropy_with_logits/Reshape_2*

axis*
T0*
N
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
R
Sum_2SumstackSum_2/reduction_indices*
	keep_dims( *
T0*

Tidx0
J
strided_slice_7/stackConst*
valueB"        *
dtype0
L
strided_slice_7/stack_1Const*
valueB"       *
dtype0
L
strided_slice_7/stack_2Const*
valueB"      *
dtype0
ì
strided_slice_7StridedSliceconcat_2strided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
J
strided_slice_8/stackConst*
valueB"        *
dtype0
L
strided_slice_8/stack_1Const*
valueB"       *
dtype0
L
strided_slice_8/stack_2Const*
valueB"      *
dtype0
ì
strided_slice_8StridedSliceconcat_1strided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
R
(softmax_cross_entropy_with_logits_1/RankConst*
value	B :*
dtype0
\
)softmax_cross_entropy_with_logits_1/ShapeShapestrided_slice_8*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_1/Rank_1Const*
value	B :*
dtype0
^
+softmax_cross_entropy_with_logits_1/Shape_1Shapestrided_slice_8*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_1/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_1/SubSub*softmax_cross_entropy_with_logits_1/Rank_1)softmax_cross_entropy_with_logits_1/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_1/Slice/beginPack'softmax_cross_entropy_with_logits_1/Sub*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits_1/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_1/SliceSlice+softmax_cross_entropy_with_logits_1/Shape_1/softmax_cross_entropy_with_logits_1/Slice/begin.softmax_cross_entropy_with_logits_1/Slice/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits_1/concat/values_0Const*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
Y
/softmax_cross_entropy_with_logits_1/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_1/concatConcatV23softmax_cross_entropy_with_logits_1/concat/values_0)softmax_cross_entropy_with_logits_1/Slice/softmax_cross_entropy_with_logits_1/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_1/ReshapeReshapestrided_slice_8*softmax_cross_entropy_with_logits_1/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_1/Rank_2Const*
value	B :*
dtype0
^
+softmax_cross_entropy_with_logits_1/Shape_2Shapestrided_slice_7*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_1/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_1/Sub_1Sub*softmax_cross_entropy_with_logits_1/Rank_2+softmax_cross_entropy_with_logits_1/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_1/Slice_1/beginPack)softmax_cross_entropy_with_logits_1/Sub_1*

axis *
T0*
N
^
0softmax_cross_entropy_with_logits_1/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_1/Slice_1Slice+softmax_cross_entropy_with_logits_1/Shape_21softmax_cross_entropy_with_logits_1/Slice_1/begin0softmax_cross_entropy_with_logits_1/Slice_1/size*
Index0*
T0
l
5softmax_cross_entropy_with_logits_1/concat_1/values_0Const*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
[
1softmax_cross_entropy_with_logits_1/concat_1/axisConst*
value	B : *
dtype0
í
,softmax_cross_entropy_with_logits_1/concat_1ConcatV25softmax_cross_entropy_with_logits_1/concat_1/values_0+softmax_cross_entropy_with_logits_1/Slice_11softmax_cross_entropy_with_logits_1/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_1/Reshape_1Reshapestrided_slice_7,softmax_cross_entropy_with_logits_1/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_1SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_1/Reshape-softmax_cross_entropy_with_logits_1/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_1/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_1/Sub_2Sub(softmax_cross_entropy_with_logits_1/Rank+softmax_cross_entropy_with_logits_1/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_1/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_1/Slice_2/sizePack)softmax_cross_entropy_with_logits_1/Sub_2*

axis *
T0*
N
Ú
+softmax_cross_entropy_with_logits_1/Slice_2Slice)softmax_cross_entropy_with_logits_1/Shape1softmax_cross_entropy_with_logits_1/Slice_2/begin0softmax_cross_entropy_with_logits_1/Slice_2/size*
Index0*
T0
¡
-softmax_cross_entropy_with_logits_1/Reshape_2Reshape#softmax_cross_entropy_with_logits_1+softmax_cross_entropy_with_logits_1/Slice_2*
T0*
Tshape0
B
NegNeg-softmax_cross_entropy_with_logits_1/Reshape_2*
T0
2
stack_1PackNeg*

axis*
T0*
N
A
Sum_3/reduction_indicesConst*
value	B :*
dtype0
T
Sum_3Sumstack_1Sum_3/reduction_indices*
	keep_dims(*
T0*

Tidx0
J
strided_slice_9/stackConst*
valueB"        *
dtype0
L
strided_slice_9/stack_1Const*
valueB"       *
dtype0
L
strided_slice_9/stack_2Const*
valueB"      *
dtype0
ì
strided_slice_9StridedSliceconcat_2strided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
K
strided_slice_10/stackConst*
valueB"        *
dtype0
M
strided_slice_10/stack_1Const*
valueB"       *
dtype0
M
strided_slice_10/stack_2Const*
valueB"      *
dtype0
ð
strided_slice_10StridedSliceconcat_4strided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
R
(softmax_cross_entropy_with_logits_2/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_2/ShapeShapestrided_slice_10*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_2/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_2/Shape_1Shapestrided_slice_10*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_2/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_2/SubSub*softmax_cross_entropy_with_logits_2/Rank_1)softmax_cross_entropy_with_logits_2/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_2/Slice/beginPack'softmax_cross_entropy_with_logits_2/Sub*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits_2/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_2/SliceSlice+softmax_cross_entropy_with_logits_2/Shape_1/softmax_cross_entropy_with_logits_2/Slice/begin.softmax_cross_entropy_with_logits_2/Slice/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits_2/concat/values_0Const*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
Y
/softmax_cross_entropy_with_logits_2/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_2/concatConcatV23softmax_cross_entropy_with_logits_2/concat/values_0)softmax_cross_entropy_with_logits_2/Slice/softmax_cross_entropy_with_logits_2/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_2/ReshapeReshapestrided_slice_10*softmax_cross_entropy_with_logits_2/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_2/Rank_2Const*
value	B :*
dtype0
^
+softmax_cross_entropy_with_logits_2/Shape_2Shapestrided_slice_9*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_2/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_2/Sub_1Sub*softmax_cross_entropy_with_logits_2/Rank_2+softmax_cross_entropy_with_logits_2/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_2/Slice_1/beginPack)softmax_cross_entropy_with_logits_2/Sub_1*

axis *
T0*
N
^
0softmax_cross_entropy_with_logits_2/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_2/Slice_1Slice+softmax_cross_entropy_with_logits_2/Shape_21softmax_cross_entropy_with_logits_2/Slice_1/begin0softmax_cross_entropy_with_logits_2/Slice_1/size*
Index0*
T0
l
5softmax_cross_entropy_with_logits_2/concat_1/values_0Const*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
[
1softmax_cross_entropy_with_logits_2/concat_1/axisConst*
value	B : *
dtype0
í
,softmax_cross_entropy_with_logits_2/concat_1ConcatV25softmax_cross_entropy_with_logits_2/concat_1/values_0+softmax_cross_entropy_with_logits_2/Slice_11softmax_cross_entropy_with_logits_2/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_2/Reshape_1Reshapestrided_slice_9,softmax_cross_entropy_with_logits_2/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_2SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_2/Reshape-softmax_cross_entropy_with_logits_2/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_2/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_2/Sub_2Sub(softmax_cross_entropy_with_logits_2/Rank+softmax_cross_entropy_with_logits_2/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_2/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_2/Slice_2/sizePack)softmax_cross_entropy_with_logits_2/Sub_2*

axis *
T0*
N
Ú
+softmax_cross_entropy_with_logits_2/Slice_2Slice)softmax_cross_entropy_with_logits_2/Shape1softmax_cross_entropy_with_logits_2/Slice_2/begin0softmax_cross_entropy_with_logits_2/Slice_2/size*
Index0*
T0
¡
-softmax_cross_entropy_with_logits_2/Reshape_2Reshape#softmax_cross_entropy_with_logits_2+softmax_cross_entropy_with_logits_2/Slice_2*
T0*
Tshape0
D
Neg_1Neg-softmax_cross_entropy_with_logits_2/Reshape_2*
T0
4
stack_2PackNeg_1*

axis*
T0*
N
A
Sum_4/reduction_indicesConst*
value	B :*
dtype0
T
Sum_4Sumstack_2Sum_4/reduction_indices*
	keep_dims(*
T0*

Tidx0
Q
next_vector_observationPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿW
±
Evector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*
valueB"W      *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
¨
Dvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
ª
Fvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *ÆXú=*
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

Ovector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
seed
£
Cvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/mulMulOvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalFvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

?vector_obs_encoder/hidden_0/kernel/Initializer/truncated_normalAddCvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/mulDvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
®
"vector_obs_encoder/hidden_0/kernel
VariableV2*
dtype0*
shared_name *
shape:	W*
	container *5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

)vector_obs_encoder/hidden_0/kernel/AssignAssign"vector_obs_encoder/hidden_0/kernel?vector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

'vector_obs_encoder/hidden_0/kernel/readIdentity"vector_obs_encoder/hidden_0/kernel*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
¦
Bvector_obs_encoder/hidden_0/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

8vector_obs_encoder/hidden_0/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

2vector_obs_encoder/hidden_0/bias/Initializer/zerosFillBvector_obs_encoder/hidden_0/bias/Initializer/zeros/shape_as_tensor8vector_obs_encoder/hidden_0/bias/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
¦
 vector_obs_encoder/hidden_0/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
î
'vector_obs_encoder/hidden_0/bias/AssignAssign vector_obs_encoder/hidden_0/bias2vector_obs_encoder/hidden_0/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

%vector_obs_encoder/hidden_0/bias/readIdentity vector_obs_encoder/hidden_0/bias*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

"vector_obs_encoder/hidden_0/MatMulMatMulvector_observation'vector_obs_encoder/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 

#vector_obs_encoder/hidden_0/BiasAddBiasAdd"vector_obs_encoder/hidden_0/MatMul%vector_obs_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
\
#vector_obs_encoder/hidden_0/SigmoidSigmoid#vector_obs_encoder/hidden_0/BiasAdd*
T0
y
vector_obs_encoder/hidden_0/MulMul#vector_obs_encoder/hidden_0/BiasAdd#vector_obs_encoder/hidden_0/Sigmoid*
T0
±
Evector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¨
Dvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
ª
Fvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *Eñ=*
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

Ovector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2¯*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
seed
£
Cvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/mulMulOvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalFvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

?vector_obs_encoder/hidden_1/kernel/Initializer/truncated_normalAddCvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/mulDvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¯
"vector_obs_encoder/hidden_1/kernel
VariableV2*
dtype0*
shared_name *
shape:
*
	container *5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

)vector_obs_encoder/hidden_1/kernel/AssignAssign"vector_obs_encoder/hidden_1/kernel?vector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

'vector_obs_encoder/hidden_1/kernel/readIdentity"vector_obs_encoder/hidden_1/kernel*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¦
Bvector_obs_encoder/hidden_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

8vector_obs_encoder/hidden_1/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

2vector_obs_encoder/hidden_1/bias/Initializer/zerosFillBvector_obs_encoder/hidden_1/bias/Initializer/zeros/shape_as_tensor8vector_obs_encoder/hidden_1/bias/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
¦
 vector_obs_encoder/hidden_1/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
î
'vector_obs_encoder/hidden_1/bias/AssignAssign vector_obs_encoder/hidden_1/bias2vector_obs_encoder/hidden_1/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

%vector_obs_encoder/hidden_1/bias/readIdentity vector_obs_encoder/hidden_1/bias*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
¥
"vector_obs_encoder/hidden_1/MatMulMatMulvector_obs_encoder/hidden_0/Mul'vector_obs_encoder/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

#vector_obs_encoder/hidden_1/BiasAddBiasAdd"vector_obs_encoder/hidden_1/MatMul%vector_obs_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
\
#vector_obs_encoder/hidden_1/SigmoidSigmoid#vector_obs_encoder/hidden_1/BiasAdd*
T0
y
vector_obs_encoder/hidden_1/MulMul#vector_obs_encoder/hidden_1/BiasAdd#vector_obs_encoder/hidden_1/Sigmoid*
T0

$vector_obs_encoder_1/hidden_0/MatMulMatMulnext_vector_observation'vector_obs_encoder/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 

%vector_obs_encoder_1/hidden_0/BiasAddBiasAdd$vector_obs_encoder_1/hidden_0/MatMul%vector_obs_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
`
%vector_obs_encoder_1/hidden_0/SigmoidSigmoid%vector_obs_encoder_1/hidden_0/BiasAdd*
T0

!vector_obs_encoder_1/hidden_0/MulMul%vector_obs_encoder_1/hidden_0/BiasAdd%vector_obs_encoder_1/hidden_0/Sigmoid*
T0
©
$vector_obs_encoder_1/hidden_1/MatMulMatMul!vector_obs_encoder_1/hidden_0/Mul'vector_obs_encoder/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

%vector_obs_encoder_1/hidden_1/BiasAddBiasAdd$vector_obs_encoder_1/hidden_1/MatMul%vector_obs_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
`
%vector_obs_encoder_1/hidden_1/SigmoidSigmoid%vector_obs_encoder_1/hidden_1/BiasAdd*
T0

!vector_obs_encoder_1/hidden_1/MulMul%vector_obs_encoder_1/hidden_1/BiasAdd%vector_obs_encoder_1/hidden_1/Sigmoid*
T0
=
concat_5/concat_dimConst*
value	B :*
dtype0
>
concat_5Identityvector_obs_encoder/hidden_1/Mul*
T0
=
concat_6/concat_dimConst*
value	B :*
dtype0
@
concat_6Identity!vector_obs_encoder_1/hidden_1/Mul*
T0
7
concat_7/axisConst*
value	B :*
dtype0
U
concat_7ConcatV2concat_5concat_6concat_7/axis*
T0*
N*

Tidx0

/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_2/kernel
}
-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *óµ½*
dtype0*!
_class
loc:@dense_2/kernel
}
-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ=*
dtype0*!
_class
loc:@dense_2/kernel
Í
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2Ð*!
_class
loc:@dense_2/kernel*
seed
¾
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel
È
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel
º
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel

dense_2/kernel
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_2/kernel
¯
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
~
.dense_2/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_2/bias
r
$dense_2/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_2/bias
¸
dense_2/bias/Initializer/zerosFill.dense_2/bias/Initializer/zeros/shape_as_tensor$dense_2/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_2/bias
~
dense_2/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_2/bias

dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias
U
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias
f
dense_2/MatMulMatMulconcat_7dense_2/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC
4
dense_2/SigmoidSigmoiddense_2/BiasAdd*
T0
=
dense_2/MulMuldense_2/BiasAdddense_2/Sigmoid*
T0

/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_3/kernel
}
-dense_3/kernel/Initializer/random_uniform/minConst*
valueB
 *,B¾*
dtype0*!
_class
loc:@dense_3/kernel
}
-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *,B>*
dtype0*!
_class
loc:@dense_3/kernel
Í
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2ä*!
_class
loc:@dense_3/kernel*
seed
¾
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel
È
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel
º
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel

dense_3/kernel
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_3/kernel
¯
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel
[
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel
}
.dense_3/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_3/bias
r
$dense_3/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_3/bias
¸
dense_3/bias/Initializer/zerosFill.dense_3/bias/Initializer/zeros/shape_as_tensor$dense_3/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_3/bias
}
dense_3/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_3/bias

dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias
U
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias
i
dense_3/MatMulMatMuldense_2/Muldense_3/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC
4
dense_3/SoftmaxSoftmaxdense_3/BiasAdd*
T0
=
concat_8/concat_dimConst*
value	B :*
dtype0
.
concat_8Identitydense_3/Softmax*
T0
4
add_4/yConst*
valueB
 *ÿæÛ.*
dtype0
(
add_4Addconcat_8add_4/y*
T0

Log_4Logadd_4*
T0

Neg_2NegLog_4*
T0
$
mulMulNeg_2concat_2*
T0
A
Sum_5/reduction_indicesConst*
value	B :*
dtype0
P
Sum_5SummulSum_5/reduction_indices*
	keep_dims( *
T0*

Tidx0
P
DynamicPartitionDynamicPartitionSum_5Cast*
T0*
num_partitions
3
ConstConst*
valueB: *
dtype0
M
MeanMeanDynamicPartition:1Const*
	keep_dims( *
T0*

Tidx0
7
concat_9/axisConst*
value	B :*
dtype0
U
concat_9ConcatV2concat_5concat_2concat_9/axis*
T0*
N*

Tidx0

/dense_4/kernel/Initializer/random_uniform/shapeConst*
valueB"     *
dtype0*!
_class
loc:@dense_4/kernel
}
-dense_4/kernel/Initializer/random_uniform/minConst*
valueB
 *º Ü½*
dtype0*!
_class
loc:@dense_4/kernel
}
-dense_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *º Ü=*
dtype0*!
_class
loc:@dense_4/kernel
Í
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2*!
_class
loc:@dense_4/kernel*
seed
¾
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel
È
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_4/kernel
º
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel

dense_4/kernel
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_4/kernel
¯
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel
[
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel
~
.dense_4/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_4/bias
r
$dense_4/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_4/bias
¸
dense_4/bias/Initializer/zerosFill.dense_4/bias/Initializer/zeros/shape_as_tensor$dense_4/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_4/bias
~
dense_4/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_4/bias

dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias
U
dense_4/bias/readIdentitydense_4/bias*
T0*
_class
loc:@dense_4/bias
f
dense_4/MatMulMatMulconcat_9dense_4/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*
T0*
data_formatNHWC
4
dense_4/SigmoidSigmoiddense_4/BiasAdd*
T0
=
dense_4/MulMuldense_4/BiasAdddense_4/Sigmoid*
T0

/dense_5/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_5/kernel
}
-dense_5/kernel/Initializer/random_uniform/minConst*
valueB
 *×³Ý½*
dtype0*!
_class
loc:@dense_5/kernel
}
-dense_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *×³Ý=*
dtype0*!
_class
loc:@dense_5/kernel
Í
7dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_5/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2*!
_class
loc:@dense_5/kernel*
seed
¾
-dense_5/kernel/Initializer/random_uniform/subSub-dense_5/kernel/Initializer/random_uniform/max-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel
È
-dense_5/kernel/Initializer/random_uniform/mulMul7dense_5/kernel/Initializer/random_uniform/RandomUniform-dense_5/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_5/kernel
º
)dense_5/kernel/Initializer/random_uniformAdd-dense_5/kernel/Initializer/random_uniform/mul-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel

dense_5/kernel
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_5/kernel
¯
dense_5/kernel/AssignAssigndense_5/kernel)dense_5/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel
[
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel
~
.dense_5/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_5/bias
r
$dense_5/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_5/bias
¸
dense_5/bias/Initializer/zerosFill.dense_5/bias/Initializer/zeros/shape_as_tensor$dense_5/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_5/bias
~
dense_5/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_5/bias

dense_5/bias/AssignAssigndense_5/biasdense_5/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias
U
dense_5/bias/readIdentitydense_5/bias*
T0*
_class
loc:@dense_5/bias
i
dense_5/MatMulMatMuldense_4/Muldense_5/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*
T0*
data_formatNHWC
J
SquaredDifferenceSquaredDifferencedense_5/BiasAddconcat_6*
T0
A
Sum_6/reduction_indicesConst*
value	B :*
dtype0
^
Sum_6SumSquaredDifferenceSum_6/reduction_indices*
	keep_dims( *
T0*

Tidx0
4
mul_1/xConst*
valueB
 *   ?*
dtype0
%
mul_1Mulmul_1/xSum_6*
T0
4
mul_2/xConst*
valueB
 *
×#<*
dtype0
%
mul_2Mulmul_2/xmul_1*
T0
D
clip_by_value/Minimum/yConst*
valueB
 *  ?*
dtype0
I
clip_by_value/MinimumMinimummul_2clip_by_value/Minimum/y*
T0
<
clip_by_value/yConst*
valueB
 *    *
dtype0
I
clip_by_valueMaximumclip_by_value/Minimumclip_by_value/y*
T0
R
DynamicPartition_1DynamicPartitionmul_1Cast*
T0*
num_partitions
5
Const_1Const*
valueB: *
dtype0
S
Mean_1MeanDynamicPartition_1:1Const_1*
	keep_dims( *
T0*

Tidx0
H
discounted_rewardsPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
D

advantagesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
J
PolynomialDecay/learning_rateConst*
valueB
 *RI9*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

DstT0*

SrcT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 * $tI*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *ÿæÛ.*
dtype0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
[
PolynomialDecay/MinimumMinimumPolynomialDecay/CastPolynomialDecay/Cast_1/x*
T0
Z
PolynomialDecay/divRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_1/x*
T0
\
PolynomialDecay/subSubPolynomialDecay/learning_ratePolynomialDecay/Cast_2/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
S
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/div*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_3/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
N
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast_2/x*
T0
I
old_value_estimatesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
L
PolynomialDecay_1/learning_rateConst*
valueB
 *ÍÌL>*
dtype0
H
PolynomialDecay_1/CastCastglobal_step/read*

DstT0*

SrcT0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 * $tI*
dtype0
G
PolynomialDecay_1/Cast_2/xConst*
valueB
 *ÍÌÌ=*
dtype0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/CastPolynomialDecay_1/Cast_1/x*
T0
`
PolynomialDecay_1/divRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_1/x*
T0
b
PolynomialDecay_1/subSubPolynomialDecay_1/learning_ratePolynomialDecay_1/Cast_2/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/div*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_3/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
T
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast_2/x*
T0
L
PolynomialDecay_2/learning_rateConst*
valueB
 *
×#<*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

DstT0*

SrcT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 * $tI*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/CastPolynomialDecay_2/Cast_1/x*
T0
`
PolynomialDecay_2/divRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_1/x*
T0
b
PolynomialDecay_2/subSubPolynomialDecay_2/learning_ratePolynomialDecay_2/Cast_2/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/div*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_3/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
T
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast_2/x*
T0
A
Sum_7/reduction_indicesConst*
value	B :*
dtype0
[
Sum_7Sumvalue_estimateSum_7/reduction_indices*
	keep_dims( *
T0*

Tidx0
/
subSubSum_7old_value_estimates*
T0
(
Neg_3NegPolynomialDecay_1*
T0
C
clip_by_value_1/MinimumMinimumsubPolynomialDecay_1*
T0
C
clip_by_value_1Maximumclip_by_value_1/MinimumNeg_3*
T0
;
add_5Addold_value_estimatesclip_by_value_1*
T0
A
Sum_8/reduction_indicesConst*
value	B :*
dtype0
[
Sum_8Sumvalue_estimateSum_8/reduction_indices*
	keep_dims( *
T0*

Tidx0
L
SquaredDifference_1SquaredDifferencediscounted_rewardsSum_8*
T0
L
SquaredDifference_2SquaredDifferencediscounted_rewardsadd_5*
T0
E
MaximumMaximumSquaredDifference_1SquaredDifference_2*
T0
T
DynamicPartition_2DynamicPartitionMaximumCast*
T0*
num_partitions
5
Const_2Const*
valueB: *
dtype0
S
Mean_2MeanDynamicPartition_2:1Const_2*
	keep_dims( *
T0*

Tidx0
#
sub_1SubSum_3Sum_4*
T0

ExpExpsub_1*
T0
&
mul_3MulExp
advantages*
T0
4
sub_2/xConst*
valueB
 *  ?*
dtype0
1
sub_2Subsub_2/xPolynomialDecay_1*
T0
4
add_6/xConst*
valueB
 *  ?*
dtype0
1
add_6Addadd_6/xPolynomialDecay_1*
T0
7
clip_by_value_2/MinimumMinimumExpadd_6*
T0
C
clip_by_value_2Maximumclip_by_value_2/Minimumsub_2*
T0
2
mul_4Mulclip_by_value_2
advantages*
T0
)
MinimumMinimummul_3mul_4*
T0
T
DynamicPartition_3DynamicPartitionMinimumCast*
T0*
num_partitions
<
Const_3Const*
valueB"       *
dtype0
S
Mean_3MeanDynamicPartition_3:1Const_3*
	keep_dims( *
T0*

Tidx0

Neg_4NegMean_3*
T0
4
mul_5/xConst*
valueB
 *   ?*
dtype0
&
mul_5Mulmul_5/xMean_2*
T0
#
add_7AddNeg_4mul_5*
T0
R
DynamicPartition_4DynamicPartitionSum_2Cast*
T0*
num_partitions
5
Const_4Const*
valueB: *
dtype0
S
Mean_4MeanDynamicPartition_4:1Const_4*
	keep_dims( *
T0*

Tidx0
0
mul_6MulPolynomialDecay_2Mean_4*
T0
#
sub_3Subadd_7mul_6*
T0
4
mul_7/xConst*
valueB
 *ÍÌL>*
dtype0
&
mul_7Mulmul_7/xMean_1*
T0
4
mul_8/xConst*
valueB
 *ÍÌL?*
dtype0
$
mul_8Mulmul_8/xMean*
T0
#
add_8Addmul_7mul_8*
T0
4
mul_9/xConst*
valueB
 *   A*
dtype0
%
mul_9Mulmul_9/xadd_8*
T0
#
add_9Addsub_3mul_9*
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
>
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/Fill

-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/add_9_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill

/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/Fill&^gradients/add_9_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
W
gradients/sub_3_grad/NegNeg-gradients/add_9_grad/tuple/control_dependency*
T0
x
%gradients/sub_3_grad/tuple/group_depsNoOp.^gradients/add_9_grad/tuple/control_dependency^gradients/sub_3_grad/Neg
¼
-gradients/sub_3_grad/tuple/control_dependencyIdentity-gradients/add_9_grad/tuple/control_dependency&^gradients/sub_3_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
³
/gradients/sub_3_grad/tuple/control_dependency_1Identitygradients/sub_3_grad/Neg&^gradients/sub_3_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_3_grad/Neg
`
gradients/mul_9_grad/MulMul/gradients/add_9_grad/tuple/control_dependency_1add_8*
T0
d
gradients/mul_9_grad/Mul_1Mul/gradients/add_9_grad/tuple/control_dependency_1mul_9/x*
T0
e
%gradients/mul_9_grad/tuple/group_depsNoOp^gradients/mul_9_grad/Mul^gradients/mul_9_grad/Mul_1
±
-gradients/mul_9_grad/tuple/control_dependencyIdentitygradients/mul_9_grad/Mul&^gradients/mul_9_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_9_grad/Mul
·
/gradients/mul_9_grad/tuple/control_dependency_1Identitygradients/mul_9_grad/Mul_1&^gradients/mul_9_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_9_grad/Mul_1
]
%gradients/add_7_grad/tuple/group_depsNoOp.^gradients/sub_3_grad/tuple/control_dependency
¼
-gradients/add_7_grad/tuple/control_dependencyIdentity-gradients/sub_3_grad/tuple/control_dependency&^gradients/add_7_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
¾
/gradients/add_7_grad/tuple/control_dependency_1Identity-gradients/sub_3_grad/tuple/control_dependency&^gradients/add_7_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
a
gradients/mul_6_grad/MulMul/gradients/sub_3_grad/tuple/control_dependency_1Mean_4*
T0
n
gradients/mul_6_grad/Mul_1Mul/gradients/sub_3_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
e
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Mul^gradients/mul_6_grad/Mul_1
±
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Mul&^gradients/mul_6_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_6_grad/Mul
·
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Mul_1&^gradients/mul_6_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_6_grad/Mul_1
_
%gradients/add_8_grad/tuple/group_depsNoOp0^gradients/mul_9_grad/tuple/control_dependency_1
Ê
-gradients/add_8_grad/tuple/control_dependencyIdentity/gradients/mul_9_grad/tuple/control_dependency_1&^gradients/add_8_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_9_grad/Mul_1
Ì
/gradients/add_8_grad/tuple/control_dependency_1Identity/gradients/mul_9_grad/tuple/control_dependency_1&^gradients/add_8_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_9_grad/Mul_1
W
gradients/Neg_4_grad/NegNeg-gradients/add_7_grad/tuple/control_dependency*
T0
a
gradients/mul_5_grad/MulMul/gradients/add_7_grad/tuple/control_dependency_1Mean_2*
T0
d
gradients/mul_5_grad/Mul_1Mul/gradients/add_7_grad/tuple/control_dependency_1mul_5/x*
T0
e
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Mul^gradients/mul_5_grad/Mul_1
±
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Mul&^gradients/mul_5_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_5_grad/Mul
·
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Mul_1&^gradients/mul_5_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_5_grad/Mul_1
Q
#gradients/Mean_4_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_4_grad/ReshapeReshape/gradients/mul_6_grad/tuple/control_dependency_1#gradients/Mean_4_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_4_grad/ShapeShapeDynamicPartition_4:1*
T0*
out_type0
y
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/Shape*
T0*

Tmultiples0
U
gradients/Mean_4_grad/Shape_1ShapeDynamicPartition_4:1*
T0*
out_type0
F
gradients/Mean_4_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_4_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_1gradients/Mean_4_grad/Const*
	keep_dims( *
T0*

Tidx0
K
gradients/Mean_4_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const_1*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_4_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_4_grad/MaximumMaximumgradients/Mean_4_grad/Prod_1gradients/Mean_4_grad/Maximum/y*
T0
n
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum*
T0
Z
gradients/Mean_4_grad/CastCastgradients/Mean_4_grad/floordiv*

DstT0*

SrcT0
i
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0
_
gradients/mul_7_grad/MulMul-gradients/add_8_grad/tuple/control_dependencyMean_1*
T0
b
gradients/mul_7_grad/Mul_1Mul-gradients/add_8_grad/tuple/control_dependencymul_7/x*
T0
e
%gradients/mul_7_grad/tuple/group_depsNoOp^gradients/mul_7_grad/Mul^gradients/mul_7_grad/Mul_1
±
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Mul&^gradients/mul_7_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_7_grad/Mul
·
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Mul_1&^gradients/mul_7_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_7_grad/Mul_1
_
gradients/mul_8_grad/MulMul/gradients/add_8_grad/tuple/control_dependency_1Mean*
T0
d
gradients/mul_8_grad/Mul_1Mul/gradients/add_8_grad/tuple/control_dependency_1mul_8/x*
T0
e
%gradients/mul_8_grad/tuple/group_depsNoOp^gradients/mul_8_grad/Mul^gradients/mul_8_grad/Mul_1
±
-gradients/mul_8_grad/tuple/control_dependencyIdentitygradients/mul_8_grad/Mul&^gradients/mul_8_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_8_grad/Mul
·
/gradients/mul_8_grad/tuple/control_dependency_1Identitygradients/mul_8_grad/Mul_1&^gradients/mul_8_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_8_grad/Mul_1
X
#gradients/Mean_3_grad/Reshape/shapeConst*
valueB"      *
dtype0
~
gradients/Mean_3_grad/ReshapeReshapegradients/Neg_4_grad/Neg#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_3_grad/ShapeShapeDynamicPartition_3:1*
T0*
out_type0
y
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*
T0*

Tmultiples0
U
gradients/Mean_3_grad/Shape_1ShapeDynamicPartition_3:1*
T0*
out_type0
F
gradients/Mean_3_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_3_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
	keep_dims( *
T0*

Tidx0
K
gradients/Mean_3_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
T0
n
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
T0
Z
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

DstT0*

SrcT0
i
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
T0
Q
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_2_grad/ReshapeReshape/gradients/mul_5_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_2_grad/ShapeShapeDynamicPartition_2:1*
T0*
out_type0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*
T0*

Tmultiples0
U
gradients/Mean_2_grad/Shape_1ShapeDynamicPartition_2:1*
T0*
out_type0
F
gradients/Mean_2_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_2_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*
	keep_dims( *
T0*

Tidx0
K
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0
n
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0
Z
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

DstT0*

SrcT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0
>
gradients/zeros_like	ZerosLikeDynamicPartition_4*
T0
O
'gradients/DynamicPartition_4_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_4_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_4_grad/ProdProd'gradients/DynamicPartition_4_grad/Shape'gradients/DynamicPartition_4_grad/Const*
	keep_dims( *
T0*

Tidx0
W
-gradients/DynamicPartition_4_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_4_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients/DynamicPartition_4_grad/rangeRange-gradients/DynamicPartition_4_grad/range/start&gradients/DynamicPartition_4_grad/Prod-gradients/DynamicPartition_4_grad/range/delta*

Tidx0

)gradients/DynamicPartition_4_grad/ReshapeReshape'gradients/DynamicPartition_4_grad/range'gradients/DynamicPartition_4_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_4_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_4_grad/ReshapeCast*
T0*
num_partitions
ñ
/gradients/DynamicPartition_4_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_4_grad/DynamicPartition4gradients/DynamicPartition_4_grad/DynamicPartition:1gradients/zeros_likegradients/Mean_4_grad/truediv*
T0*
N
R
)gradients/DynamicPartition_4_grad/Shape_1ShapeSum_2*
T0*
out_type0
©
+gradients/DynamicPartition_4_grad/Reshape_1Reshape/gradients/DynamicPartition_4_grad/DynamicStitch)gradients/DynamicPartition_4_grad/Shape_1*
T0*
Tshape0
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_1_grad/ReshapeReshape/gradients/mul_7_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_1_grad/ShapeShapeDynamicPartition_1:1*
T0*
out_type0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*

Tmultiples0
U
gradients/Mean_1_grad/Shape_1ShapeDynamicPartition_1:1*
T0*
out_type0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
	keep_dims( *
T0*

Tidx0
K
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0
n
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0
Z
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

DstT0*

SrcT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_grad/ReshapeReshape/gradients/mul_8_grad/tuple/control_dependency_1!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
O
gradients/Mean_grad/ShapeShapeDynamicPartition:1*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0
Q
gradients/Mean_grad/Shape_1ShapeDynamicPartition:1*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0
G
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
V
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
@
gradients/zeros_like_1	ZerosLikeDynamicPartition_3*
T0
O
'gradients/DynamicPartition_3_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_3_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_3_grad/ProdProd'gradients/DynamicPartition_3_grad/Shape'gradients/DynamicPartition_3_grad/Const*
	keep_dims( *
T0*

Tidx0
W
-gradients/DynamicPartition_3_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_3_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients/DynamicPartition_3_grad/rangeRange-gradients/DynamicPartition_3_grad/range/start&gradients/DynamicPartition_3_grad/Prod-gradients/DynamicPartition_3_grad/range/delta*

Tidx0

)gradients/DynamicPartition_3_grad/ReshapeReshape'gradients/DynamicPartition_3_grad/range'gradients/DynamicPartition_3_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_3_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_3_grad/ReshapeCast*
T0*
num_partitions
ó
/gradients/DynamicPartition_3_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_3_grad/DynamicPartition4gradients/DynamicPartition_3_grad/DynamicPartition:1gradients/zeros_like_1gradients/Mean_3_grad/truediv*
T0*
N
T
)gradients/DynamicPartition_3_grad/Shape_1ShapeMinimum*
T0*
out_type0
©
+gradients/DynamicPartition_3_grad/Reshape_1Reshape/gradients/DynamicPartition_3_grad/DynamicStitch)gradients/DynamicPartition_3_grad/Shape_1*
T0*
Tshape0
@
gradients/zeros_like_2	ZerosLikeDynamicPartition_2*
T0
O
'gradients/DynamicPartition_2_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_2_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_2_grad/ProdProd'gradients/DynamicPartition_2_grad/Shape'gradients/DynamicPartition_2_grad/Const*
	keep_dims( *
T0*

Tidx0
W
-gradients/DynamicPartition_2_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_2_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients/DynamicPartition_2_grad/rangeRange-gradients/DynamicPartition_2_grad/range/start&gradients/DynamicPartition_2_grad/Prod-gradients/DynamicPartition_2_grad/range/delta*

Tidx0

)gradients/DynamicPartition_2_grad/ReshapeReshape'gradients/DynamicPartition_2_grad/range'gradients/DynamicPartition_2_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_2_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_2_grad/ReshapeCast*
T0*
num_partitions
ó
/gradients/DynamicPartition_2_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_2_grad/DynamicPartition4gradients/DynamicPartition_2_grad/DynamicPartition:1gradients/zeros_like_2gradients/Mean_2_grad/truediv*
T0*
N
T
)gradients/DynamicPartition_2_grad/Shape_1ShapeMaximum*
T0*
out_type0
©
+gradients/DynamicPartition_2_grad/Reshape_1Reshape/gradients/DynamicPartition_2_grad/DynamicStitch)gradients/DynamicPartition_2_grad/Shape_1*
T0*
Tshape0
C
gradients/Sum_2_grad/ShapeShapestack*
T0*
out_type0
r
gradients/Sum_2_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/addAddSum_2/reduction_indicesgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
t
gradients/Sum_2_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
y
 gradients/Sum_2_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
y
 gradients/Sum_2_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
½
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
x
gradients/Sum_2_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
ª
gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
á
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_2_grad/Shape
w
gradients/Sum_2_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
£
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/ReshapeReshape+gradients/DynamicPartition_4_grad/Reshape_1"gradients/Sum_2_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*
T0*

Tmultiples0
@
gradients/zeros_like_3	ZerosLikeDynamicPartition_1*
T0
O
'gradients/DynamicPartition_1_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_1_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_1_grad/ProdProd'gradients/DynamicPartition_1_grad/Shape'gradients/DynamicPartition_1_grad/Const*
	keep_dims( *
T0*

Tidx0
W
-gradients/DynamicPartition_1_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_1_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients/DynamicPartition_1_grad/rangeRange-gradients/DynamicPartition_1_grad/range/start&gradients/DynamicPartition_1_grad/Prod-gradients/DynamicPartition_1_grad/range/delta*

Tidx0

)gradients/DynamicPartition_1_grad/ReshapeReshape'gradients/DynamicPartition_1_grad/range'gradients/DynamicPartition_1_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_1_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_1_grad/ReshapeCast*
T0*
num_partitions
ó
/gradients/DynamicPartition_1_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_1_grad/DynamicPartition4gradients/DynamicPartition_1_grad/DynamicPartition:1gradients/zeros_like_3gradients/Mean_1_grad/truediv*
T0*
N
R
)gradients/DynamicPartition_1_grad/Shape_1Shapemul_1*
T0*
out_type0
©
+gradients/DynamicPartition_1_grad/Reshape_1Reshape/gradients/DynamicPartition_1_grad/DynamicStitch)gradients/DynamicPartition_1_grad/Shape_1*
T0*
Tshape0
>
gradients/zeros_like_4	ZerosLikeDynamicPartition*
T0
M
%gradients/DynamicPartition_grad/ShapeShapeCast*
T0*
out_type0
S
%gradients/DynamicPartition_grad/ConstConst*
valueB: *
dtype0
 
$gradients/DynamicPartition_grad/ProdProd%gradients/DynamicPartition_grad/Shape%gradients/DynamicPartition_grad/Const*
	keep_dims( *
T0*

Tidx0
U
+gradients/DynamicPartition_grad/range/startConst*
value	B : *
dtype0
U
+gradients/DynamicPartition_grad/range/deltaConst*
value	B :*
dtype0
º
%gradients/DynamicPartition_grad/rangeRange+gradients/DynamicPartition_grad/range/start$gradients/DynamicPartition_grad/Prod+gradients/DynamicPartition_grad/range/delta*

Tidx0

'gradients/DynamicPartition_grad/ReshapeReshape%gradients/DynamicPartition_grad/range%gradients/DynamicPartition_grad/Shape*
T0*
Tshape0

0gradients/DynamicPartition_grad/DynamicPartitionDynamicPartition'gradients/DynamicPartition_grad/ReshapeCast*
T0*
num_partitions
ë
-gradients/DynamicPartition_grad/DynamicStitchDynamicStitch0gradients/DynamicPartition_grad/DynamicPartition2gradients/DynamicPartition_grad/DynamicPartition:1gradients/zeros_like_4gradients/Mean_grad/truediv*
T0*
N
P
'gradients/DynamicPartition_grad/Shape_1ShapeSum_5*
T0*
out_type0
£
)gradients/DynamicPartition_grad/Reshape_1Reshape-gradients/DynamicPartition_grad/DynamicStitch'gradients/DynamicPartition_grad/Shape_1*
T0*
Tshape0
E
gradients/Minimum_grad/ShapeShapemul_3*
T0*
out_type0
G
gradients/Minimum_grad/Shape_1Shapemul_4*
T0*
out_type0
m
gradients/Minimum_grad/Shape_2Shape+gradients/DynamicPartition_3_grad/Reshape_1*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0*

index_type0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_3mul_4*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual+gradients/DynamicPartition_3_grad/Reshape_1gradients/Minimum_grad/zeros*
T0

gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros+gradients/DynamicPartition_3_grad/Reshape_1*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Á
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
Ç
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
S
gradients/Maximum_grad/ShapeShapeSquaredDifference_1*
T0*
out_type0
U
gradients/Maximum_grad/Shape_1ShapeSquaredDifference_2*
T0*
out_type0
m
gradients/Maximum_grad/Shape_2Shape+gradients/DynamicPartition_2_grad/Reshape_1*
T0*
out_type0
O
"gradients/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
T0*

index_type0
f
#gradients/Maximum_grad/GreaterEqualGreaterEqualSquaredDifference_1SquaredDifference_2*
T0

,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
T0
 
gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqual+gradients/DynamicPartition_2_grad/Reshape_1gradients/Maximum_grad/zeros*
T0
¢
gradients/Maximum_grad/Select_1Select#gradients/Maximum_grad/GreaterEqualgradients/Maximum_grad/zeros+gradients/DynamicPartition_2_grad/Reshape_1*
T0

gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
z
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
T0*
Tshape0

gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Maximum_grad/tuple/group_depsNoOp^gradients/Maximum_grad/Reshape!^gradients/Maximum_grad/Reshape_1
Á
/gradients/Maximum_grad/tuple/control_dependencyIdentitygradients/Maximum_grad/Reshape(^gradients/Maximum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Maximum_grad/Reshape
Ç
1gradients/Maximum_grad/tuple/control_dependency_1Identity gradients/Maximum_grad/Reshape_1(^gradients/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Maximum_grad/Reshape_1
a
gradients/stack_grad/unstackUnpackgradients/Sum_2_grad/Tile*

axis*
T0*	
num
C
gradients/mul_1_grad/ShapeConst*
valueB *
dtype0
E
gradients/mul_1_grad/Shape_1ShapeSum_6*
T0*
out_type0

*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
\
gradients/mul_1_grad/MulMul+gradients/DynamicPartition_1_grad/Reshape_1Sum_6*
T0

gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
`
gradients/mul_1_grad/Mul_1Mulmul_1/x+gradients/DynamicPartition_1_grad/Reshape_1*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
¹
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
¿
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1
A
gradients/Sum_5_grad/ShapeShapemul*
T0*
out_type0
r
gradients/Sum_5_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_5_grad/Shape

gradients/Sum_5_grad/addAddSum_5/reduction_indicesgradients/Sum_5_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape

gradients/Sum_5_grad/modFloorModgradients/Sum_5_grad/addgradients/Sum_5_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
t
gradients/Sum_5_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
y
 gradients/Sum_5_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
y
 gradients/Sum_5_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
½
gradients/Sum_5_grad/rangeRange gradients/Sum_5_grad/range/startgradients/Sum_5_grad/Size gradients/Sum_5_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
x
gradients/Sum_5_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
ª
gradients/Sum_5_grad/FillFillgradients/Sum_5_grad/Shape_1gradients/Sum_5_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
á
"gradients/Sum_5_grad/DynamicStitchDynamicStitchgradients/Sum_5_grad/rangegradients/Sum_5_grad/modgradients/Sum_5_grad/Shapegradients/Sum_5_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_5_grad/Shape
w
gradients/Sum_5_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
£
gradients/Sum_5_grad/MaximumMaximum"gradients/Sum_5_grad/DynamicStitchgradients/Sum_5_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape

gradients/Sum_5_grad/floordivFloorDivgradients/Sum_5_grad/Shapegradients/Sum_5_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape

gradients/Sum_5_grad/ReshapeReshape)gradients/DynamicPartition_grad/Reshape_1"gradients/Sum_5_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_5_grad/TileTilegradients/Sum_5_grad/Reshapegradients/Sum_5_grad/floordiv*
T0*

Tmultiples0
A
gradients/mul_3_grad/ShapeShapeExp*
T0*
out_type0
J
gradients/mul_3_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0
e
gradients/mul_3_grad/MulMul/gradients/Minimum_grad/tuple/control_dependency
advantages*
T0

gradients/mul_3_grad/SumSumgradients/mul_3_grad/Mul*gradients/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*
Tshape0
`
gradients/mul_3_grad/Mul_1MulExp/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/Mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Reshape^gradients/mul_3_grad/Reshape_1
¹
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape
¿
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Reshape_1&^gradients/mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_3_grad/Reshape_1
M
gradients/mul_4_grad/ShapeShapeclip_by_value_2*
T0*
out_type0
J
gradients/mul_4_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0
g
gradients/mul_4_grad/MulMul1gradients/Minimum_grad/tuple/control_dependency_1
advantages*
T0

gradients/mul_4_grad/SumSumgradients/mul_4_grad/Mul*gradients/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0
n
gradients/mul_4_grad/Mul_1Mulclip_by_value_21gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/Mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Reshape^gradients/mul_4_grad/Reshape_1
¹
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_4_grad/Reshape
¿
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Reshape_1&^gradients/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_4_grad/Reshape_1
^
(gradients/SquaredDifference_1_grad/ShapeShapediscounted_rewards*
T0*
out_type0
S
*gradients/SquaredDifference_1_grad/Shape_1ShapeSum_8*
T0*
out_type0
°
8gradients/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_1_grad/Shape*gradients/SquaredDifference_1_grad/Shape_1*
T0

)gradients/SquaredDifference_1_grad/scalarConst0^gradients/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0

&gradients/SquaredDifference_1_grad/mulMul)gradients/SquaredDifference_1_grad/scalar/gradients/Maximum_grad/tuple/control_dependency*
T0

&gradients/SquaredDifference_1_grad/subSubdiscounted_rewardsSum_80^gradients/Maximum_grad/tuple/control_dependency*
T0

(gradients/SquaredDifference_1_grad/mul_1Mul&gradients/SquaredDifference_1_grad/mul&gradients/SquaredDifference_1_grad/sub*
T0
·
&gradients/SquaredDifference_1_grad/SumSum(gradients/SquaredDifference_1_grad/mul_18gradients/SquaredDifference_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

*gradients/SquaredDifference_1_grad/ReshapeReshape&gradients/SquaredDifference_1_grad/Sum(gradients/SquaredDifference_1_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_1_grad/Sum_1Sum(gradients/SquaredDifference_1_grad/mul_1:gradients/SquaredDifference_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¤
,gradients/SquaredDifference_1_grad/Reshape_1Reshape(gradients/SquaredDifference_1_grad/Sum_1*gradients/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_1_grad/NegNeg,gradients/SquaredDifference_1_grad/Reshape_1*
T0

3gradients/SquaredDifference_1_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_1_grad/Reshape'^gradients/SquaredDifference_1_grad/Neg
ñ
;gradients/SquaredDifference_1_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_1_grad/Reshape4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_1_grad/Reshape
ë
=gradients/SquaredDifference_1_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_1_grad/Neg4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_1_grad/Neg
^
(gradients/SquaredDifference_2_grad/ShapeShapediscounted_rewards*
T0*
out_type0
S
*gradients/SquaredDifference_2_grad/Shape_1Shapeadd_5*
T0*
out_type0
°
8gradients/SquaredDifference_2_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_2_grad/Shape*gradients/SquaredDifference_2_grad/Shape_1*
T0

)gradients/SquaredDifference_2_grad/scalarConst2^gradients/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0

&gradients/SquaredDifference_2_grad/mulMul)gradients/SquaredDifference_2_grad/scalar1gradients/Maximum_grad/tuple/control_dependency_1*
T0

&gradients/SquaredDifference_2_grad/subSubdiscounted_rewardsadd_52^gradients/Maximum_grad/tuple/control_dependency_1*
T0

(gradients/SquaredDifference_2_grad/mul_1Mul&gradients/SquaredDifference_2_grad/mul&gradients/SquaredDifference_2_grad/sub*
T0
·
&gradients/SquaredDifference_2_grad/SumSum(gradients/SquaredDifference_2_grad/mul_18gradients/SquaredDifference_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

*gradients/SquaredDifference_2_grad/ReshapeReshape&gradients/SquaredDifference_2_grad/Sum(gradients/SquaredDifference_2_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_2_grad/Sum_1Sum(gradients/SquaredDifference_2_grad/mul_1:gradients/SquaredDifference_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¤
,gradients/SquaredDifference_2_grad/Reshape_1Reshape(gradients/SquaredDifference_2_grad/Sum_1*gradients/SquaredDifference_2_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_2_grad/NegNeg,gradients/SquaredDifference_2_grad/Reshape_1*
T0

3gradients/SquaredDifference_2_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_2_grad/Reshape'^gradients/SquaredDifference_2_grad/Neg
ñ
;gradients/SquaredDifference_2_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_2_grad/Reshape4^gradients/SquaredDifference_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_2_grad/Reshape
ë
=gradients/SquaredDifference_2_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_2_grad/Neg4^gradients/SquaredDifference_2_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_2_grad/Neg

@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
out_type0
Ä
Bgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshapegradients/stack_grad/unstack@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0
O
gradients/Sum_6_grad/ShapeShapeSquaredDifference*
T0*
out_type0
r
gradients/Sum_6_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/addAddSum_6/reduction_indicesgradients/Sum_6_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/modFloorModgradients/Sum_6_grad/addgradients/Sum_6_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
t
gradients/Sum_6_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
y
 gradients/Sum_6_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
y
 gradients/Sum_6_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
½
gradients/Sum_6_grad/rangeRange gradients/Sum_6_grad/range/startgradients/Sum_6_grad/Size gradients/Sum_6_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
x
gradients/Sum_6_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
ª
gradients/Sum_6_grad/FillFillgradients/Sum_6_grad/Shape_1gradients/Sum_6_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
á
"gradients/Sum_6_grad/DynamicStitchDynamicStitchgradients/Sum_6_grad/rangegradients/Sum_6_grad/modgradients/Sum_6_grad/Shapegradients/Sum_6_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_6_grad/Shape
w
gradients/Sum_6_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_6_grad/Shape
£
gradients/Sum_6_grad/MaximumMaximum"gradients/Sum_6_grad/DynamicStitchgradients/Sum_6_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/floordivFloorDivgradients/Sum_6_grad/Shapegradients/Sum_6_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_6_grad/Shape

gradients/Sum_6_grad/ReshapeReshape/gradients/mul_1_grad/tuple/control_dependency_1"gradients/Sum_6_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_6_grad/TileTilegradients/Sum_6_grad/Reshapegradients/Sum_6_grad/floordiv*
T0*

Tmultiples0
A
gradients/mul_grad/ShapeShapeNeg_2*
T0*
out_type0
F
gradients/mul_grad/Shape_1Shapeconcat_2*
T0*
out_type0

(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0
K
gradients/mul_grad/MulMulgradients/Sum_5_grad/Tileconcat_2*
T0

gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0
J
gradients/mul_grad/Mul_1MulNeg_2gradients/Sum_5_grad/Tile*
T0

gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
±
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape
·
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
_
$gradients/clip_by_value_2_grad/ShapeShapeclip_by_value_2/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_2_grad/Shape_1Const*
valueB *
dtype0
w
&gradients/clip_by_value_2_grad/Shape_2Shape-gradients/mul_4_grad/tuple/control_dependency*
T0*
out_type0
W
*gradients/clip_by_value_2_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients/clip_by_value_2_grad/zerosFill&gradients/clip_by_value_2_grad/Shape_2*gradients/clip_by_value_2_grad/zeros/Const*
T0*

index_type0
d
+gradients/clip_by_value_2_grad/GreaterEqualGreaterEqualclip_by_value_2/Minimumsub_2*
T0
¤
4gradients/clip_by_value_2_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_2_grad/Shape&gradients/clip_by_value_2_grad/Shape_1*
T0
º
%gradients/clip_by_value_2_grad/SelectSelect+gradients/clip_by_value_2_grad/GreaterEqual-gradients/mul_4_grad/tuple/control_dependency$gradients/clip_by_value_2_grad/zeros*
T0
¼
'gradients/clip_by_value_2_grad/Select_1Select+gradients/clip_by_value_2_grad/GreaterEqual$gradients/clip_by_value_2_grad/zeros-gradients/mul_4_grad/tuple/control_dependency*
T0
¬
"gradients/clip_by_value_2_grad/SumSum%gradients/clip_by_value_2_grad/Select4gradients/clip_by_value_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

&gradients/clip_by_value_2_grad/ReshapeReshape"gradients/clip_by_value_2_grad/Sum$gradients/clip_by_value_2_grad/Shape*
T0*
Tshape0
²
$gradients/clip_by_value_2_grad/Sum_1Sum'gradients/clip_by_value_2_grad/Select_16gradients/clip_by_value_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

(gradients/clip_by_value_2_grad/Reshape_1Reshape$gradients/clip_by_value_2_grad/Sum_1&gradients/clip_by_value_2_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_2_grad/tuple/group_depsNoOp'^gradients/clip_by_value_2_grad/Reshape)^gradients/clip_by_value_2_grad/Reshape_1
á
7gradients/clip_by_value_2_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_2_grad/Reshape0^gradients/clip_by_value_2_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_2_grad/Reshape
ç
9gradients/clip_by_value_2_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_2_grad/Reshape_10^gradients/clip_by_value_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_2_grad/Reshape_1
L
gradients/Sum_8_grad/ShapeShapevalue_estimate*
T0*
out_type0
r
gradients/Sum_8_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_8_grad/Shape

gradients/Sum_8_grad/addAddSum_8/reduction_indicesgradients/Sum_8_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape

gradients/Sum_8_grad/modFloorModgradients/Sum_8_grad/addgradients/Sum_8_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
t
gradients/Sum_8_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
y
 gradients/Sum_8_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
y
 gradients/Sum_8_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
½
gradients/Sum_8_grad/rangeRange gradients/Sum_8_grad/range/startgradients/Sum_8_grad/Size gradients/Sum_8_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
x
gradients/Sum_8_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
ª
gradients/Sum_8_grad/FillFillgradients/Sum_8_grad/Shape_1gradients/Sum_8_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
á
"gradients/Sum_8_grad/DynamicStitchDynamicStitchgradients/Sum_8_grad/rangegradients/Sum_8_grad/modgradients/Sum_8_grad/Shapegradients/Sum_8_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_8_grad/Shape
w
gradients/Sum_8_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
£
gradients/Sum_8_grad/MaximumMaximum"gradients/Sum_8_grad/DynamicStitchgradients/Sum_8_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape

gradients/Sum_8_grad/floordivFloorDivgradients/Sum_8_grad/Shapegradients/Sum_8_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
¡
gradients/Sum_8_grad/ReshapeReshape=gradients/SquaredDifference_1_grad/tuple/control_dependency_1"gradients/Sum_8_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_8_grad/TileTilegradients/Sum_8_grad/Reshapegradients/Sum_8_grad/floordiv*
T0*

Tmultiples0
Q
gradients/add_5_grad/ShapeShapeold_value_estimates*
T0*
out_type0
O
gradients/add_5_grad/Shape_1Shapeclip_by_value_1*
T0*
out_type0

*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0
°
gradients/add_5_grad/SumSum=gradients/SquaredDifference_2_grad/tuple/control_dependency_1*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
Tshape0
´
gradients/add_5_grad/Sum_1Sum=gradients/SquaredDifference_2_grad/tuple/control_dependency_1,gradients/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
¹
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_5_grad/Reshape
¿
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
Q
gradients/zeros_like_5	ZerosLike#softmax_cross_entropy_with_logits:1*
T0
r
?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0
ã
;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*

Tdim0
¦
4gradients/softmax_cross_entropy_with_logits_grad/mulMul;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0
}
;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0

4gradients/softmax_cross_entropy_with_logits_grad/NegNeg;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0
t
Agradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0
ç
=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*

Tdim0
»
6gradients/softmax_cross_entropy_with_logits_grad/mul_1Mul=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_14gradients/softmax_cross_entropy_with_logits_grad/Neg*
T0
¹
Agradients/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp5^gradients/softmax_cross_entropy_with_logits_grad/mul7^gradients/softmax_cross_entropy_with_logits_grad/mul_1
¡
Igradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity4gradients/softmax_cross_entropy_with_logits_grad/mulB^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/softmax_cross_entropy_with_logits_grad/mul
§
Kgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity6gradients/softmax_cross_entropy_with_logits_grad/mul_1B^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_grad/mul_1
Y
&gradients/SquaredDifference_grad/ShapeShapedense_5/BiasAdd*
T0*
out_type0
T
(gradients/SquaredDifference_grad/Shape_1Shapeconcat_6*
T0*
out_type0
ª
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
p
'gradients/SquaredDifference_grad/scalarConst^gradients/Sum_6_grad/Tile*
valueB
 *   @*
dtype0
x
$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/Sum_6_grad/Tile*
T0
k
$gradients/SquaredDifference_grad/subSubdense_5/BiasAddconcat_6^gradients/Sum_6_grad/Tile*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ã
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
U
gradients/Neg_2_grad/NegNeg+gradients/mul_grad/tuple/control_dependency*
T0
S
,gradients/clip_by_value_2/Minimum_grad/ShapeShapeExp*
T0*
out_type0
W
.gradients/clip_by_value_2/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients/clip_by_value_2/Minimum_grad/Shape_2Shape7gradients/clip_by_value_2_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_2/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_2/Minimum_grad/zerosFill.gradients/clip_by_value_2/Minimum_grad/Shape_22gradients/clip_by_value_2/Minimum_grad/zeros/Const*
T0*

index_type0
R
0gradients/clip_by_value_2/Minimum_grad/LessEqual	LessEqualExpadd_6*
T0
¼
<gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_2/Minimum_grad/Shape.gradients/clip_by_value_2/Minimum_grad/Shape_1*
T0
Ù
-gradients/clip_by_value_2/Minimum_grad/SelectSelect0gradients/clip_by_value_2/Minimum_grad/LessEqual7gradients/clip_by_value_2_grad/tuple/control_dependency,gradients/clip_by_value_2/Minimum_grad/zeros*
T0
Û
/gradients/clip_by_value_2/Minimum_grad/Select_1Select0gradients/clip_by_value_2/Minimum_grad/LessEqual,gradients/clip_by_value_2/Minimum_grad/zeros7gradients/clip_by_value_2_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_2/Minimum_grad/SumSum-gradients/clip_by_value_2/Minimum_grad/Select<gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
ª
.gradients/clip_by_value_2/Minimum_grad/ReshapeReshape*gradients/clip_by_value_2/Minimum_grad/Sum,gradients/clip_by_value_2/Minimum_grad/Shape*
T0*
Tshape0
Ê
,gradients/clip_by_value_2/Minimum_grad/Sum_1Sum/gradients/clip_by_value_2/Minimum_grad/Select_1>gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
°
0gradients/clip_by_value_2/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_2/Minimum_grad/Sum_1.gradients/clip_by_value_2/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_2/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_2/Minimum_grad/Reshape1^gradients/clip_by_value_2/Minimum_grad/Reshape_1

?gradients/clip_by_value_2/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_2/Minimum_grad/Reshape8^gradients/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_2/Minimum_grad/Reshape

Agradients/clip_by_value_2/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_2/Minimum_grad/Reshape_18^gradients/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_2/Minimum_grad/Reshape_1
_
$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
y
&gradients/clip_by_value_1_grad/Shape_2Shape/gradients/add_5_grad/tuple/control_dependency_1*
T0*
out_type0
W
*gradients/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*

index_type0
d
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/MinimumNeg_3*
T0
¤
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0
¼
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqual/gradients/add_5_grad/tuple/control_dependency_1$gradients/clip_by_value_1_grad/zeros*
T0
¾
'gradients/clip_by_value_1_grad/Select_1Select+gradients/clip_by_value_1_grad/GreaterEqual$gradients/clip_by_value_1_grad/zeros/gradients/add_5_grad/tuple/control_dependency_1*
T0
¬
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*
Tshape0
²
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_1_grad/tuple/group_depsNoOp'^gradients/clip_by_value_1_grad/Reshape)^gradients/clip_by_value_1_grad/Reshape_1
á
7gradients/clip_by_value_1_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_1_grad/Reshape0^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_1_grad/Reshape
ç
9gradients/clip_by_value_1_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_1_grad/Reshape_10^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_1_grad/Reshape_1
q
>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapestrided_slice_6*
T0*
out_type0
í
@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0
m
@gradients/softmax_cross_entropy_with_logits/Reshape_1_grad/ShapeShape	Softmax_2*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1@gradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Shape*
T0*
Tshape0

*gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad9gradients/SquaredDifference_grad/tuple/control_dependency*
T0*
data_formatNHWC
 
/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp:^gradients/SquaredDifference_grad/tuple/control_dependency+^gradients/dense_5/BiasAdd_grad/BiasAddGrad
ö
7gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentity9gradients/SquaredDifference_grad/tuple/control_dependency0^gradients/dense_5/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ë
9gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_5/BiasAdd_grad/BiasAddGrad0^gradients/dense_5/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_5/BiasAdd_grad/BiasAddGrad
X
gradients/Log_4_grad/Reciprocal
Reciprocaladd_4^gradients/Neg_2_grad/Neg*
T0
c
gradients/Log_4_grad/mulMulgradients/Neg_2_grad/Neggradients/Log_4_grad/Reciprocal*
T0
É
gradients/AddNAddN-gradients/mul_3_grad/tuple/control_dependency?gradients/clip_by_value_2/Minimum_grad/tuple/control_dependency*
T0*
N*/
_class%
#!loc:@gradients/mul_3_grad/Reshape
;
gradients/Exp_grad/mulMulgradients/AddNExp*
T0
S
,gradients/clip_by_value_1/Minimum_grad/ShapeShapesub*
T0*
out_type0
W
.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*
T0*

index_type0
^
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqualsubPolynomialDecay_1*
T0
¼
<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0
Ù
-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual7gradients/clip_by_value_1_grad/tuple/control_dependency,gradients/clip_by_value_1/Minimum_grad/zeros*
T0
Û
/gradients/clip_by_value_1/Minimum_grad/Select_1Select0gradients/clip_by_value_1/Minimum_grad/LessEqual,gradients/clip_by_value_1/Minimum_grad/zeros7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
ª
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
Ê
,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
°
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_1/Minimum_grad/Reshape1^gradients/clip_by_value_1/Minimum_grad/Reshape_1

?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_1/Minimum_grad/Reshape8^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_1/Minimum_grad/Reshape

Agradients/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_1/Minimum_grad/Reshape_18^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_1/Minimum_grad/Reshape_1
«
$gradients/dense_5/MatMul_grad/MatMulMatMul7gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_5/kernel/read*
transpose_b(*
T0*
transpose_a( 
¥
&gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/Mul7gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

.gradients/dense_5/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_5/MatMul_grad/MatMul'^gradients/dense_5/MatMul_grad/MatMul_1
Û
6gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_5/MatMul_grad/MatMul/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_5/MatMul_grad/MatMul
á
8gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_5/MatMul_grad/MatMul_1/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_5/MatMul_grad/MatMul_1
F
gradients/add_4_grad/ShapeShapeconcat_8*
T0*
out_type0
E
gradients/add_4_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0

gradients/add_4_grad/SumSumgradients/Log_4_grad/mul*gradients/add_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0

gradients/add_4_grad/Sum_1Sumgradients/Log_4_grad/mul,gradients/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
¹
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape
¿
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
C
gradients/sub_1_grad/ShapeShapeSum_3*
T0*
out_type0
E
gradients/sub_1_grad/Shape_1ShapeSum_4*
T0*
out_type0

*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0

gradients/sub_1_grad/SumSumgradients/Exp_grad/mul*gradients/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0

gradients/sub_1_grad/Sum_1Sumgradients/Exp_grad/mul,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
D
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0
x
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
¹
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
¿
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
A
gradients/sub_grad/ShapeShapeSum_7*
T0*
out_type0
Q
gradients/sub_grad/Shape_1Shapeold_value_estimates*
T0*
out_type0

(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
®
gradients/sub_grad/SumSum?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0
²
gradients/sub_grad/Sum_1Sum?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
r
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
±
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
·
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
S
 gradients/dense_4/Mul_grad/ShapeShapedense_4/BiasAdd*
T0*
out_type0
U
"gradients/dense_4/Mul_grad/Shape_1Shapedense_4/Sigmoid*
T0*
out_type0

0gradients/dense_4/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dense_4/Mul_grad/Shape"gradients/dense_4/Mul_grad/Shape_1*
T0
w
gradients/dense_4/Mul_grad/MulMul6gradients/dense_5/MatMul_grad/tuple/control_dependencydense_4/Sigmoid*
T0

gradients/dense_4/Mul_grad/SumSumgradients/dense_4/Mul_grad/Mul0gradients/dense_4/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

"gradients/dense_4/Mul_grad/ReshapeReshapegradients/dense_4/Mul_grad/Sum gradients/dense_4/Mul_grad/Shape*
T0*
Tshape0
y
 gradients/dense_4/Mul_grad/Mul_1Muldense_4/BiasAdd6gradients/dense_5/MatMul_grad/tuple/control_dependency*
T0
£
 gradients/dense_4/Mul_grad/Sum_1Sum gradients/dense_4/Mul_grad/Mul_12gradients/dense_4/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

$gradients/dense_4/Mul_grad/Reshape_1Reshape gradients/dense_4/Mul_grad/Sum_1"gradients/dense_4/Mul_grad/Shape_1*
T0*
Tshape0

+gradients/dense_4/Mul_grad/tuple/group_depsNoOp#^gradients/dense_4/Mul_grad/Reshape%^gradients/dense_4/Mul_grad/Reshape_1
Ñ
3gradients/dense_4/Mul_grad/tuple/control_dependencyIdentity"gradients/dense_4/Mul_grad/Reshape,^gradients/dense_4/Mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_4/Mul_grad/Reshape
×
5gradients/dense_4/Mul_grad/tuple/control_dependency_1Identity$gradients/dense_4/Mul_grad/Reshape_1,^gradients/dense_4/Mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/Mul_grad/Reshape_1
E
gradients/Sum_3_grad/ShapeShapestack_1*
T0*
out_type0
r
gradients/Sum_3_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
t
gradients/Sum_3_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
y
 gradients/Sum_3_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
y
 gradients/Sum_3_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
½
gradients/Sum_3_grad/rangeRange gradients/Sum_3_grad/range/startgradients/Sum_3_grad/Size gradients/Sum_3_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
x
gradients/Sum_3_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
ª
gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
á
"gradients/Sum_3_grad/DynamicStitchDynamicStitchgradients/Sum_3_grad/rangegradients/Sum_3_grad/modgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_3_grad/Shape
w
gradients/Sum_3_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
£
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/ReshapeReshape-gradients/sub_1_grad/tuple/control_dependency"gradients/Sum_3_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*
T0*

Tmultiples0
L
gradients/Sum_7_grad/ShapeShapevalue_estimate*
T0*
out_type0
r
gradients/Sum_7_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/addAddSum_7/reduction_indicesgradients/Sum_7_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/modFloorModgradients/Sum_7_grad/addgradients/Sum_7_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
t
gradients/Sum_7_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
y
 gradients/Sum_7_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
y
 gradients/Sum_7_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
½
gradients/Sum_7_grad/rangeRange gradients/Sum_7_grad/range/startgradients/Sum_7_grad/Size gradients/Sum_7_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
x
gradients/Sum_7_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
ª
gradients/Sum_7_grad/FillFillgradients/Sum_7_grad/Shape_1gradients/Sum_7_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
á
"gradients/Sum_7_grad/DynamicStitchDynamicStitchgradients/Sum_7_grad/rangegradients/Sum_7_grad/modgradients/Sum_7_grad/Shapegradients/Sum_7_grad/Fill*
T0*
N*-
_class#
!loc:@gradients/Sum_7_grad/Shape
w
gradients/Sum_7_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
£
gradients/Sum_7_grad/MaximumMaximum"gradients/Sum_7_grad/DynamicStitchgradients/Sum_7_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/floordivFloorDivgradients/Sum_7_grad/Shapegradients/Sum_7_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape

gradients/Sum_7_grad/ReshapeReshape+gradients/sub_grad/tuple/control_dependency"gradients/Sum_7_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_7_grad/TileTilegradients/Sum_7_grad/Reshapegradients/Sum_7_grad/floordiv*
T0*

Tmultiples0

*gradients/dense_4/Sigmoid_grad/SigmoidGradSigmoidGraddense_4/Sigmoid5gradients/dense_4/Mul_grad/tuple/control_dependency_1*
T0
r
"gradients/dense_3/Softmax_grad/mulMul-gradients/add_4_grad/tuple/control_dependencydense_3/Softmax*
T0
b
4gradients/dense_3/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0
©
"gradients/dense_3/Softmax_grad/SumSum"gradients/dense_3/Softmax_grad/mul4gradients/dense_3/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
a
,gradients/dense_3/Softmax_grad/Reshape/shapeConst*
valueB"ÿÿÿÿ   *
dtype0

&gradients/dense_3/Softmax_grad/ReshapeReshape"gradients/dense_3/Softmax_grad/Sum,gradients/dense_3/Softmax_grad/Reshape/shape*
T0*
Tshape0

"gradients/dense_3/Softmax_grad/subSub-gradients/add_4_grad/tuple/control_dependency&gradients/dense_3/Softmax_grad/Reshape*
T0
i
$gradients/dense_3/Softmax_grad/mul_1Mul"gradients/dense_3/Softmax_grad/subdense_3/Softmax*
T0
c
gradients/stack_1_grad/unstackUnpackgradients/Sum_3_grad/Tile*

axis*
T0*	
num

gradients/AddN_1AddNgradients/Sum_8_grad/Tilegradients/Sum_7_grad/Tile*
T0*
N*,
_class"
 loc:@gradients/Sum_8_grad/Tile
T
$gradients/strided_slice_6_grad/ShapeShapeaction_probs*
T0*
out_type0
î
/gradients/strided_slice_6_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_6_grad/Shapestrided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
{
gradients/Softmax_2_grad/mulMulBgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshape	Softmax_2*
T0
\
.gradients/Softmax_2_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_2_grad/SumSumgradients/Softmax_2_grad/mul.gradients/Softmax_2_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
[
&gradients/Softmax_2_grad/Reshape/shapeConst*
valueB"ÿÿÿÿ   *
dtype0

 gradients/Softmax_2_grad/ReshapeReshapegradients/Softmax_2_grad/Sum&gradients/Softmax_2_grad/Reshape/shape*
T0*
Tshape0

gradients/Softmax_2_grad/subSubBgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshape gradients/Softmax_2_grad/Reshape*
T0
W
gradients/Softmax_2_grad/mul_1Mulgradients/Softmax_2_grad/sub	Softmax_2*
T0
Â
gradients/AddN_2AddN3gradients/dense_4/Mul_grad/tuple/control_dependency*gradients/dense_4/Sigmoid_grad/SigmoidGrad*
T0*
N*5
_class+
)'loc:@gradients/dense_4/Mul_grad/Reshape
k
*gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_2*
T0*
data_formatNHWC
w
/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_2+^gradients/dense_4/BiasAdd_grad/BiasAddGrad
Ç
7gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_20^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_4/Mul_grad/Reshape
ë
9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_4/BiasAdd_grad/BiasAddGrad0^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_4/BiasAdd_grad/BiasAddGrad

*gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_3/Softmax_grad/mul_1*
T0*
data_formatNHWC

/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_3/Softmax_grad/mul_1+^gradients/dense_3/BiasAdd_grad/BiasAddGrad
Ý
7gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_3/Softmax_grad/mul_10^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/Softmax_grad/mul_1
ë
9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_3/BiasAdd_grad/BiasAddGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_3/BiasAdd_grad/BiasAddGrad
F
gradients/Neg_grad/NegNeggradients/stack_1_grad/unstack*
T0
k
*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC
w
/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1+^gradients/dense_1/BiasAdd_grad/BiasAddGrad
¾
7gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_10^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/Sum_8_grad/Tile
ë
9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_1/BiasAdd_grad/BiasAddGrad
T
$gradients/strided_slice_5_grad/ShapeShapeaction_probs*
T0*
out_type0
Ì
/gradients/strided_slice_5_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_5_grad/Shapestrided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2gradients/Softmax_2_grad/mul_1*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
«
$gradients/dense_4/MatMul_grad/MatMulMatMul7gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
transpose_b(*
T0*
transpose_a( 
¢
&gradients/dense_4/MatMul_grad/MatMul_1MatMulconcat_97gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

.gradients/dense_4/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_4/MatMul_grad/MatMul'^gradients/dense_4/MatMul_grad/MatMul_1
Û
6gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_4/MatMul_grad/MatMul/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul
á
8gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_4/MatMul_grad/MatMul_1/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_4/MatMul_grad/MatMul_1
«
$gradients/dense_3/MatMul_grad/MatMulMatMul7gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
transpose_b(*
T0*
transpose_a( 
¥
&gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/Mul7gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Û
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul
á
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1

Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_1*
T0*
out_type0
Â
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeReshapegradients/Neg_grad/NegBgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/Shape*
T0*
Tshape0
«
$gradients/dense_1/MatMul_grad/MatMulMatMul7gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
³
&gradients/dense_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul7gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
Û
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul
á
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1
F
gradients/concat_9_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_9_grad/modFloorModconcat_9/axisgradients/concat_9_grad/Rank*
T0
I
gradients/concat_9_grad/ShapeShapeconcat_5*
T0*
out_type0
^
gradients/concat_9_grad/ShapeNShapeNconcat_5concat_2*
T0*
out_type0*
N

$gradients/concat_9_grad/ConcatOffsetConcatOffsetgradients/concat_9_grad/modgradients/concat_9_grad/ShapeN gradients/concat_9_grad/ShapeN:1*
N
º
gradients/concat_9_grad/SliceSlice6gradients/dense_4/MatMul_grad/tuple/control_dependency$gradients/concat_9_grad/ConcatOffsetgradients/concat_9_grad/ShapeN*
Index0*
T0
À
gradients/concat_9_grad/Slice_1Slice6gradients/dense_4/MatMul_grad/tuple/control_dependency&gradients/concat_9_grad/ConcatOffset:1 gradients/concat_9_grad/ShapeN:1*
Index0*
T0
r
(gradients/concat_9_grad/tuple/group_depsNoOp^gradients/concat_9_grad/Slice ^gradients/concat_9_grad/Slice_1
Á
0gradients/concat_9_grad/tuple/control_dependencyIdentitygradients/concat_9_grad/Slice)^gradients/concat_9_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_9_grad/Slice
Ç
2gradients/concat_9_grad/tuple/control_dependency_1Identitygradients/concat_9_grad/Slice_1)^gradients/concat_9_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_9_grad/Slice_1
S
 gradients/dense_2/Mul_grad/ShapeShapedense_2/BiasAdd*
T0*
out_type0
U
"gradients/dense_2/Mul_grad/Shape_1Shapedense_2/Sigmoid*
T0*
out_type0

0gradients/dense_2/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dense_2/Mul_grad/Shape"gradients/dense_2/Mul_grad/Shape_1*
T0
w
gradients/dense_2/Mul_grad/MulMul6gradients/dense_3/MatMul_grad/tuple/control_dependencydense_2/Sigmoid*
T0

gradients/dense_2/Mul_grad/SumSumgradients/dense_2/Mul_grad/Mul0gradients/dense_2/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

"gradients/dense_2/Mul_grad/ReshapeReshapegradients/dense_2/Mul_grad/Sum gradients/dense_2/Mul_grad/Shape*
T0*
Tshape0
y
 gradients/dense_2/Mul_grad/Mul_1Muldense_2/BiasAdd6gradients/dense_3/MatMul_grad/tuple/control_dependency*
T0
£
 gradients/dense_2/Mul_grad/Sum_1Sum gradients/dense_2/Mul_grad/Mul_12gradients/dense_2/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

$gradients/dense_2/Mul_grad/Reshape_1Reshape gradients/dense_2/Mul_grad/Sum_1"gradients/dense_2/Mul_grad/Shape_1*
T0*
Tshape0

+gradients/dense_2/Mul_grad/tuple/group_depsNoOp#^gradients/dense_2/Mul_grad/Reshape%^gradients/dense_2/Mul_grad/Reshape_1
Ñ
3gradients/dense_2/Mul_grad/tuple/control_dependencyIdentity"gradients/dense_2/Mul_grad/Reshape,^gradients/dense_2/Mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_2/Mul_grad/Reshape
×
5gradients/dense_2/Mul_grad/tuple/control_dependency_1Identity$gradients/dense_2/Mul_grad/Reshape_1,^gradients/dense_2/Mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/Mul_grad/Reshape_1
S
gradients/zeros_like_6	ZerosLike%softmax_cross_entropy_with_logits_1:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dim*
T0*

Tdim0
¬
6gradients/softmax_cross_entropy_with_logits_1_grad/mulMul=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims%softmax_cross_entropy_with_logits_1:1*
T0

=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_1/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_1_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0
í
?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dim*
T0*

Tdim0
Á
8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_1_grad/Neg*
T0
¿
Cgradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_1_grad/mul9^gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_1_grad/mulD^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul
¯
Mgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul_1

*gradients/dense_2/Sigmoid_grad/SigmoidGradSigmoidGraddense_2/Sigmoid5gradients/dense_2/Mul_grad/tuple/control_dependency_1*
T0
s
@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ShapeShapestrided_slice_8*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Shape*
T0*
Tshape0
Â
gradients/AddN_3AddN3gradients/dense_2/Mul_grad/tuple/control_dependency*gradients/dense_2/Sigmoid_grad/SigmoidGrad*
T0*
N*5
_class+
)'loc:@gradients/dense_2/Mul_grad/Reshape
k
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
T0*
data_formatNHWC
w
/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_3+^gradients/dense_2/BiasAdd_grad/BiasAddGrad
Ç
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_30^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_2/Mul_grad/Reshape
ë
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad
«
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_b(*
T0*
transpose_a( 
¢
&gradients/dense_2/MatMul_grad/MatMul_1MatMulconcat_77gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Û
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
á
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1
F
gradients/concat_7_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_7_grad/modFloorModconcat_7/axisgradients/concat_7_grad/Rank*
T0
I
gradients/concat_7_grad/ShapeShapeconcat_5*
T0*
out_type0
^
gradients/concat_7_grad/ShapeNShapeNconcat_5concat_6*
T0*
out_type0*
N

$gradients/concat_7_grad/ConcatOffsetConcatOffsetgradients/concat_7_grad/modgradients/concat_7_grad/ShapeN gradients/concat_7_grad/ShapeN:1*
N
º
gradients/concat_7_grad/SliceSlice6gradients/dense_2/MatMul_grad/tuple/control_dependency$gradients/concat_7_grad/ConcatOffsetgradients/concat_7_grad/ShapeN*
Index0*
T0
À
gradients/concat_7_grad/Slice_1Slice6gradients/dense_2/MatMul_grad/tuple/control_dependency&gradients/concat_7_grad/ConcatOffset:1 gradients/concat_7_grad/ShapeN:1*
Index0*
T0
r
(gradients/concat_7_grad/tuple/group_depsNoOp^gradients/concat_7_grad/Slice ^gradients/concat_7_grad/Slice_1
Á
0gradients/concat_7_grad/tuple/control_dependencyIdentitygradients/concat_7_grad/Slice)^gradients/concat_7_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_7_grad/Slice
Ç
2gradients/concat_7_grad/tuple/control_dependency_1Identitygradients/concat_7_grad/Slice_1)^gradients/concat_7_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_7_grad/Slice_1
À
gradients/AddN_4AddN0gradients/concat_9_grad/tuple/control_dependency0gradients/concat_7_grad/tuple/control_dependency*
T0*
N*0
_class&
$"loc:@gradients/concat_9_grad/Slice
Ô
gradients/AddN_5AddN;gradients/SquaredDifference_grad/tuple/control_dependency_12gradients/concat_7_grad/tuple/control_dependency_1*
T0*
N*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
P
$gradients/strided_slice_8_grad/ShapeShapeconcat_1*
T0*
out_type0
ð
/gradients/strided_slice_8_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_8_grad/Shapestrided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 
{
4gradients/vector_obs_encoder/hidden_1/Mul_grad/ShapeShape#vector_obs_encoder/hidden_1/BiasAdd*
T0*
out_type0
}
6gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape_1Shape#vector_obs_encoder/hidden_1/Sigmoid*
T0*
out_type0
Ô
Dgradients/vector_obs_encoder/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape6gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape_1*
T0
y
2gradients/vector_obs_encoder/hidden_1/Mul_grad/MulMulgradients/AddN_4#vector_obs_encoder/hidden_1/Sigmoid*
T0
Ù
2gradients/vector_obs_encoder/hidden_1/Mul_grad/SumSum2gradients/vector_obs_encoder/hidden_1/Mul_grad/MulDgradients/vector_obs_encoder/hidden_1/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
Â
6gradients/vector_obs_encoder/hidden_1/Mul_grad/ReshapeReshape2gradients/vector_obs_encoder/hidden_1/Mul_grad/Sum4gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape*
T0*
Tshape0
{
4gradients/vector_obs_encoder/hidden_1/Mul_grad/Mul_1Mul#vector_obs_encoder/hidden_1/BiasAddgradients/AddN_4*
T0
ß
4gradients/vector_obs_encoder/hidden_1/Mul_grad/Sum_1Sum4gradients/vector_obs_encoder/hidden_1/Mul_grad/Mul_1Fgradients/vector_obs_encoder/hidden_1/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
È
8gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1Reshape4gradients/vector_obs_encoder/hidden_1/Mul_grad/Sum_16gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
»
?gradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/group_depsNoOp7^gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape9^gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1
¡
Ggradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependencyIdentity6gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape@^gradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape
§
Igradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependency_1Identity8gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1@^gradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1

6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/ShapeShape%vector_obs_encoder_1/hidden_1/BiasAdd*
T0*
out_type0

8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape_1Shape%vector_obs_encoder_1/hidden_1/Sigmoid*
T0*
out_type0
Ú
Fgradients/vector_obs_encoder_1/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape_1*
T0
}
4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/MulMulgradients/AddN_5%vector_obs_encoder_1/hidden_1/Sigmoid*
T0
ß
4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/SumSum4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/MulFgradients/vector_obs_encoder_1/hidden_1/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
È
8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/ReshapeReshape4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Sum6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape*
T0*
Tshape0

6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Mul_1Mul%vector_obs_encoder_1/hidden_1/BiasAddgradients/AddN_5*
T0
å
6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Sum_1Sum6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Mul_1Hgradients/vector_obs_encoder_1/hidden_1/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Î
:gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1Reshape6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Sum_18gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
Á
Agradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape;^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1
©
Igradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/ReshapeB^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape
¯
Kgradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1B^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1
Æ
>gradients/vector_obs_encoder/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad#vector_obs_encoder/hidden_1/SigmoidIgradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
Ì
@gradients/vector_obs_encoder_1/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad%vector_obs_encoder_1/hidden_1/SigmoidKgradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
q
gradients/Log_1_grad/Reciprocal
Reciprocaltruediv0^gradients/strided_slice_8_grad/StridedSliceGrad*
T0
z
gradients/Log_1_grad/mulMul/gradients/strided_slice_8_grad/StridedSliceGradgradients/Log_1_grad/Reciprocal*
T0
þ
gradients/AddN_6AddNGgradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependency>gradients/vector_obs_encoder/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*
N*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape

>gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_6*
T0*
data_formatNHWC

Cgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_6?^gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGrad

Kgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_6D^gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape
»
Mgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity>gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGradD^gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGrad

gradients/AddN_7AddNIgradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependency@gradients/vector_obs_encoder_1/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*
N*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape

@gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_7*
T0*
data_formatNHWC
£
Egradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_7A^gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGrad

Mgradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_7F^gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape
Ã
Ogradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity@gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGradF^gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGrad
C
gradients/truediv_grad/ShapeShapeadd*
T0*
out_type0
E
gradients/truediv_grad/Shape_1ShapeSum*
T0*
out_type0

,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0
Q
gradients/truediv_grad/RealDivRealDivgradients/Log_1_grad/mulSum*
T0

gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
/
gradients/truediv_grad/NegNegadd*
T0
U
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/NegSum*
T0
[
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1Sum*
T0
f
gradients/truediv_grad/mulMulgradients/Log_1_grad/mul gradients/truediv_grad/RealDiv_2*
T0

gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
Á
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape
Ç
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
ç
8gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMulMatMulKgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
á
:gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1MatMulvector_obs_encoder/hidden_0/MulKgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
Â
Bgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul;^gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1
«
Jgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMulC^gradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul
±
Lgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1C^gradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1
ë
:gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMulMatMulMgradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
ç
<gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1MatMul!vector_obs_encoder_1/hidden_0/MulMgradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
È
Dgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/group_depsNoOp;^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul=^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1
³
Lgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependencyIdentity:gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMulE^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul
¹
Ngradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency_1Identity<gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1E^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1

gradients/AddN_8AddNMgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1Ogradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
N*Q
_classG
ECloc:@gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGrad
A
gradients/Sum_grad/ShapeShapeadd_1*
T0*
out_type0
n
gradients/Sum_grad/SizeConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
p
gradients/Sum_grad/Shape_1Const*
valueB *
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
u
gradients/Sum_grad/range/startConst*
value	B : *
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
u
gradients/Sum_grad/range/deltaConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
³
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape
t
gradients/Sum_grad/Fill/valueConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
¢
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@gradients/Sum_grad/Shape
Õ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*
N*+
_class!
loc:@gradients/Sum_grad/Shape
s
gradients/Sum_grad/Maximum/yConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/ReshapeReshape1gradients/truediv_grad/tuple/control_dependency_1 gradients/Sum_grad/DynamicStitch*
T0*
Tshape0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
T0*

Tmultiples0
{
4gradients/vector_obs_encoder/hidden_0/Mul_grad/ShapeShape#vector_obs_encoder/hidden_0/BiasAdd*
T0*
out_type0
}
6gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape_1Shape#vector_obs_encoder/hidden_0/Sigmoid*
T0*
out_type0
Ô
Dgradients/vector_obs_encoder/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape6gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape_1*
T0
³
2gradients/vector_obs_encoder/hidden_0/Mul_grad/MulMulJgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency#vector_obs_encoder/hidden_0/Sigmoid*
T0
Ù
2gradients/vector_obs_encoder/hidden_0/Mul_grad/SumSum2gradients/vector_obs_encoder/hidden_0/Mul_grad/MulDgradients/vector_obs_encoder/hidden_0/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
Â
6gradients/vector_obs_encoder/hidden_0/Mul_grad/ReshapeReshape2gradients/vector_obs_encoder/hidden_0/Mul_grad/Sum4gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape*
T0*
Tshape0
µ
4gradients/vector_obs_encoder/hidden_0/Mul_grad/Mul_1Mul#vector_obs_encoder/hidden_0/BiasAddJgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency*
T0
ß
4gradients/vector_obs_encoder/hidden_0/Mul_grad/Sum_1Sum4gradients/vector_obs_encoder/hidden_0/Mul_grad/Mul_1Fgradients/vector_obs_encoder/hidden_0/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
È
8gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1Reshape4gradients/vector_obs_encoder/hidden_0/Mul_grad/Sum_16gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
»
?gradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/group_depsNoOp7^gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape9^gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1
¡
Ggradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependencyIdentity6gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape@^gradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape
§
Igradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependency_1Identity8gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1@^gradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1

6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/ShapeShape%vector_obs_encoder_1/hidden_0/BiasAdd*
T0*
out_type0

8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape_1Shape%vector_obs_encoder_1/hidden_0/Sigmoid*
T0*
out_type0
Ú
Fgradients/vector_obs_encoder_1/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape_1*
T0
¹
4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/MulMulLgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency%vector_obs_encoder_1/hidden_0/Sigmoid*
T0
ß
4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/SumSum4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/MulFgradients/vector_obs_encoder_1/hidden_0/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
È
8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/ReshapeReshape4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Sum6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape*
T0*
Tshape0
»
6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Mul_1Mul%vector_obs_encoder_1/hidden_0/BiasAddLgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency*
T0
å
6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Sum_1Sum6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Mul_1Hgradients/vector_obs_encoder_1/hidden_0/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Î
:gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1Reshape6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Sum_18gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
Á
Agradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape;^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1
©
Igradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/ReshapeB^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape
¯
Kgradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1B^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1

gradients/AddN_9AddNLgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1Ngradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*
N*M
_classC
A?loc:@gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1
A
gradients/add_1_grad/ShapeShapeadd*
T0*
out_type0
E
gradients/add_1_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0

gradients/add_1_grad/SumSumgradients/Sum_grad/Tile*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0

gradients/add_1_grad/Sum_1Sumgradients/Sum_grad/Tile,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
¹
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
¿
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
Æ
>gradients/vector_obs_encoder/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad#vector_obs_encoder/hidden_0/SigmoidIgradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
Ì
@gradients/vector_obs_encoder_1/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad%vector_obs_encoder_1/hidden_0/SigmoidKgradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
¾
gradients/AddN_10AddN/gradients/truediv_grad/tuple/control_dependency-gradients/add_1_grad/tuple/control_dependency*
T0*
N*1
_class'
%#loc:@gradients/truediv_grad/Reshape
?
gradients/add_grad/ShapeShapeMul*
T0*
out_type0
C
gradients/add_grad/Shape_1Const*
valueB *
dtype0

(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0

gradients/add_grad/SumSumgradients/AddN_10(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0

gradients/add_grad/Sum_1Sumgradients/AddN_10*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
±
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
·
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
ÿ
gradients/AddN_11AddNGgradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependency>gradients/vector_obs_encoder/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*
N*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape

>gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_11*
T0*
data_formatNHWC
 
Cgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_11?^gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGrad

Kgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_11D^gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape
»
Mgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity>gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGradD^gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGrad

gradients/AddN_12AddNIgradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependency@gradients/vector_obs_encoder_1/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*
N*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape

@gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_12*
T0*
data_formatNHWC
¤
Egradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_12A^gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGrad

Mgradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_12F^gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape
Ã
Ogradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity@gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGradF^gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGrad
C
gradients/Mul_grad/ShapeShapeSoftmax*
T0*
out_type0
M
gradients/Mul_grad/Shape_1Shapestrided_slice_1*
T0*
out_type0

(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
d
gradients/Mul_grad/MulMul+gradients/add_grad/tuple/control_dependencystrided_slice_1*
T0

gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0
^
gradients/Mul_grad/Mul_1MulSoftmax+gradients/add_grad/tuple/control_dependency*
T0

gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/Mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
t
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
±
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape
·
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1
ç
8gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMulMatMulKgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ô
:gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationKgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
Â
Bgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul;^gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1
«
Jgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMulC^gradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul
±
Lgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1C^gradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1
ë
:gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMulMatMulMgradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ý
<gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1MatMulnext_vector_observationMgradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
È
Dgradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/group_depsNoOp;^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul=^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1
³
Lgradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/control_dependencyIdentity:gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMulE^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul
¹
Ngradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/control_dependency_1Identity<gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1E^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1

gradients/AddN_13AddNMgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1Ogradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
T0*
N*Q
_classG
ECloc:@gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGrad
`
gradients/Softmax_grad/mulMul+gradients/Mul_grad/tuple/control_dependencySoftmax*
T0
Z
,gradients/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0

gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
Y
$gradients/Softmax_grad/Reshape/shapeConst*
valueB"ÿÿÿÿ   *
dtype0

gradients/Softmax_grad/ReshapeReshapegradients/Softmax_grad/Sum$gradients/Softmax_grad/Reshape/shape*
T0*
Tshape0
w
gradients/Softmax_grad/subSub+gradients/Mul_grad/tuple/control_dependencygradients/Softmax_grad/Reshape*
T0
Q
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0

gradients/AddN_14AddNLgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1Ngradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/control_dependency_1*
T0*
N*M
_classC
A?loc:@gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1
R
"gradients/strided_slice_grad/ShapeShapeaction_probs*
T0*
out_type0
À
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad"gradients/strided_slice_grad/Shapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2gradients/Softmax_grad/mul_1*
Index0*
end_mask*
shrink_axis_mask *
T0*

begin_mask*
new_axis_mask *
ellipsis_mask 

gradients/AddN_15AddN/gradients/strided_slice_6_grad/StridedSliceGrad/gradients/strided_slice_5_grad/StridedSliceGrad-gradients/strided_slice_grad/StridedSliceGrad*
T0*
N*B
_class8
64loc:@gradients/strided_slice_6_grad/StridedSliceGrad

"gradients/dense/MatMul_grad/MatMulMatMulgradients/AddN_15dense/kernel/read*
transpose_b(*
T0*
transpose_a( 

$gradients/dense/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mulgradients/AddN_15*
transpose_b( *
T0*
transpose_a(

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ù
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
Ò
gradients/AddN_16AddN6gradients/dense_1/MatMul_grad/tuple/control_dependency4gradients/dense/MatMul_grad/tuple/control_dependency*
T0*
N*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul
o
.gradients/main_graph_0/hidden_1/Mul_grad/ShapeShapemain_graph_0/hidden_1/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1Shapemain_graph_0/hidden_1/Sigmoid*
T0*
out_type0
Â
>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_1/Mul_grad/Shape0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0
n
,gradients/main_graph_0/hidden_1/Mul_grad/MulMulgradients/AddN_16main_graph_0/hidden_1/Sigmoid*
T0
Ç
,gradients/main_graph_0/hidden_1/Mul_grad/SumSum,gradients/main_graph_0/hidden_1/Mul_grad/Mul>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0gradients/main_graph_0/hidden_1/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_1/Mul_grad/Sum.gradients/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0
p
.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1Mulmain_graph_0/hidden_1/BiasAddgradients/AddN_16*
T0
Í
.gradients/main_graph_0/hidden_1/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1@gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_1/Mul_grad/Sum_10gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_1/Mul_grad/Reshape3^gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_1/Mul_grad/Reshape:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1
´
8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_1/SigmoidCgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
í
gradients/AddN_17AddNAgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*
N*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
z
8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_17*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_179^gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
ò
Egradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_17>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ï
4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_0/MulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
°
<gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_1/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1
o
.gradients/main_graph_0/hidden_0/Mul_grad/ShapeShapemain_graph_0/hidden_0/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1Shapemain_graph_0/hidden_0/Sigmoid*
T0*
out_type0
Â
>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_0/Mul_grad/Shape0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
¡
,gradients/main_graph_0/hidden_0/Mul_grad/MulMulDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_0/Sigmoid*
T0
Ç
,gradients/main_graph_0/hidden_0/Mul_grad/SumSum,gradients/main_graph_0/hidden_0/Mul_grad/Mul>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0gradients/main_graph_0/hidden_0/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_0/Mul_grad/Sum.gradients/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
£
.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1Mulmain_graph_0/hidden_0/BiasAddDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Í
.gradients/main_graph_0/hidden_0/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1@gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_0/Mul_grad/Sum_10gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_0/Mul_grad/Reshape3^gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_0/Mul_grad/Reshape:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1
´
8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_0/SigmoidCgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
í
gradients/AddN_18AddNAgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*
N*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape
z
8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_18*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_189^gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
ò
Egradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_18>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
È
4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
°
<gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_0/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1
g
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@dense/kernel
x
beta1_power
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@dense/kernel

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel
S
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/kernel
g
beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0*
_class
loc:@dense/kernel
x
beta2_power
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@dense/kernel

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel
S
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/kernel
©
Cmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"W      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

3main_graph_0/hidden_0/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
§
!main_graph_0/hidden_0/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:	W*
	container */
_class%
#!loc:@main_graph_0/hidden_0/kernel
í
(main_graph_0/hidden_0/kernel/Adam/AssignAssign!main_graph_0/hidden_0/kernel/Adam3main_graph_0/hidden_0/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

&main_graph_0/hidden_0/kernel/Adam/readIdentity!main_graph_0/hidden_0/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
«
Emain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"W      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

5main_graph_0/hidden_0/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
©
#main_graph_0/hidden_0/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	W*
	container */
_class%
#!loc:@main_graph_0/hidden_0/kernel
ó
*main_graph_0/hidden_0/kernel/Adam_1/AssignAssign#main_graph_0/hidden_0/kernel/Adam_15main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

(main_graph_0/hidden_0/kernel/Adam_1/readIdentity#main_graph_0/hidden_0/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

Amain_graph_0/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias

7main_graph_0/hidden_0/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias
ÿ
1main_graph_0/hidden_0/bias/Adam/Initializer/zerosFillAmain_graph_0/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_0/hidden_0/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_0/bias
å
&main_graph_0/hidden_0/bias/Adam/AssignAssignmain_graph_0/hidden_0/bias/Adam1main_graph_0/hidden_0/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias

$main_graph_0/hidden_0/bias/Adam/readIdentitymain_graph_0/hidden_0/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
¡
Cmain_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias

9main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias

3main_graph_0/hidden_0/bias/Adam_1/Initializer/zerosFillCmain_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_0/bias
¡
!main_graph_0/hidden_0/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_0/bias
ë
(main_graph_0/hidden_0/bias/Adam_1/AssignAssign!main_graph_0/hidden_0/bias/Adam_13main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias

&main_graph_0/hidden_0/bias/Adam_1/readIdentity!main_graph_0/hidden_0/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
©
Cmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

3main_graph_0/hidden_1/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
¨
!main_graph_0/hidden_1/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container */
_class%
#!loc:@main_graph_0/hidden_1/kernel
í
(main_graph_0/hidden_1/kernel/Adam/AssignAssign!main_graph_0/hidden_1/kernel/Adam3main_graph_0/hidden_1/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

&main_graph_0/hidden_1/kernel/Adam/readIdentity!main_graph_0/hidden_1/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
«
Emain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

5main_graph_0/hidden_1/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
ª
#main_graph_0/hidden_1/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container */
_class%
#!loc:@main_graph_0/hidden_1/kernel
ó
*main_graph_0/hidden_1/kernel/Adam_1/AssignAssign#main_graph_0/hidden_1/kernel/Adam_15main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

(main_graph_0/hidden_1/kernel/Adam_1/readIdentity#main_graph_0/hidden_1/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

Amain_graph_0/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias

7main_graph_0/hidden_1/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias
ÿ
1main_graph_0/hidden_1/bias/Adam/Initializer/zerosFillAmain_graph_0/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_0/hidden_1/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_1/bias
å
&main_graph_0/hidden_1/bias/Adam/AssignAssignmain_graph_0/hidden_1/bias/Adam1main_graph_0/hidden_1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias

$main_graph_0/hidden_1/bias/Adam/readIdentitymain_graph_0/hidden_1/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
¡
Cmain_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias

9main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias

3main_graph_0/hidden_1/bias/Adam_1/Initializer/zerosFillCmain_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_1/bias
¡
!main_graph_0/hidden_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *-
_class#
!loc:@main_graph_0/hidden_1/bias
ë
(main_graph_0/hidden_1/bias/Adam_1/AssignAssign!main_graph_0/hidden_1/bias/Adam_13main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias

&main_graph_0/hidden_1/bias/Adam_1/readIdentity!main_graph_0/hidden_1/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel
w
)dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel
Ç
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel

dense/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:	*
	container *
_class
loc:@dense/kernel
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel

5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel
y
+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel
Í
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel

dense/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	*
	container *
_class
loc:@dense/kernel
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel

5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel
{
+dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel
Ï
%dense_1/kernel/Adam/Initializer/zerosFill5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_1/kernel
µ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel
}
-dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel
Õ
'dense_1/kernel/Adam_1/Initializer/zerosFill7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_1/kernel
»
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel

3dense_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_1/bias
w
)dense_1/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_1/bias
Ç
#dense_1/bias/Adam/Initializer/zerosFill3dense_1/bias/Adam/Initializer/zeros/shape_as_tensor)dense_1/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias

dense_1/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_1/bias
­
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias
_
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias

5dense_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_1/bias
y
+dense_1/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_1/bias
Í
%dense_1/bias/Adam_1/Initializer/zerosFill5dense_1/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_1/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias

dense_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_1/bias
³
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias
c
dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
T0*
_class
loc:@dense_1/bias
µ
Ivector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"W      *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
£
?vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

9vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zerosFillIvector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
³
'vector_obs_encoder/hidden_0/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:	W*
	container *5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

.vector_obs_encoder/hidden_0/kernel/Adam/AssignAssign'vector_obs_encoder/hidden_0/kernel/Adam9vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
¡
,vector_obs_encoder/hidden_0/kernel/Adam/readIdentity'vector_obs_encoder/hidden_0/kernel/Adam*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
·
Kvector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"W      *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
¥
Avector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
¥
;vector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zerosFillKvector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorAvector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
µ
)vector_obs_encoder/hidden_0/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	W*
	container *5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

0vector_obs_encoder/hidden_0/kernel/Adam_1/AssignAssign)vector_obs_encoder/hidden_0/kernel/Adam_1;vector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
¥
.vector_obs_encoder/hidden_0/kernel/Adam_1/readIdentity)vector_obs_encoder/hidden_0/kernel/Adam_1*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
«
Gvector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

=vector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

7vector_obs_encoder/hidden_0/bias/Adam/Initializer/zerosFillGvector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensor=vector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
«
%vector_obs_encoder/hidden_0/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
ý
,vector_obs_encoder/hidden_0/bias/Adam/AssignAssign%vector_obs_encoder/hidden_0/bias/Adam7vector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

*vector_obs_encoder/hidden_0/bias/Adam/readIdentity%vector_obs_encoder/hidden_0/bias/Adam*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
­
Ivector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
¡
?vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

9vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zerosFillIvector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
­
'vector_obs_encoder/hidden_0/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

.vector_obs_encoder/hidden_0/bias/Adam_1/AssignAssign'vector_obs_encoder/hidden_0/bias/Adam_19vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

,vector_obs_encoder/hidden_0/bias/Adam_1/readIdentity'vector_obs_encoder/hidden_0/bias/Adam_1*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
µ
Ivector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
£
?vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

9vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zerosFillIvector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
´
'vector_obs_encoder/hidden_1/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container *5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

.vector_obs_encoder/hidden_1/kernel/Adam/AssignAssign'vector_obs_encoder/hidden_1/kernel/Adam9vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¡
,vector_obs_encoder/hidden_1/kernel/Adam/readIdentity'vector_obs_encoder/hidden_1/kernel/Adam*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
·
Kvector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¥
Avector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¥
;vector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zerosFillKvector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorAvector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¶
)vector_obs_encoder/hidden_1/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

0vector_obs_encoder/hidden_1/kernel/Adam_1/AssignAssign)vector_obs_encoder/hidden_1/kernel/Adam_1;vector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¥
.vector_obs_encoder/hidden_1/kernel/Adam_1/readIdentity)vector_obs_encoder/hidden_1/kernel/Adam_1*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
«
Gvector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

=vector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

7vector_obs_encoder/hidden_1/bias/Adam/Initializer/zerosFillGvector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensor=vector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
«
%vector_obs_encoder/hidden_1/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
ý
,vector_obs_encoder/hidden_1/bias/Adam/AssignAssign%vector_obs_encoder/hidden_1/bias/Adam7vector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

*vector_obs_encoder/hidden_1/bias/Adam/readIdentity%vector_obs_encoder/hidden_1/bias/Adam*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
­
Ivector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
¡
?vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

9vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zerosFillIvector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
­
'vector_obs_encoder/hidden_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

.vector_obs_encoder/hidden_1/bias/Adam_1/AssignAssign'vector_obs_encoder/hidden_1/bias/Adam_19vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

,vector_obs_encoder/hidden_1/bias/Adam_1/readIdentity'vector_obs_encoder/hidden_1/bias/Adam_1*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_2/kernel
{
+dense_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_2/kernel
Ï
%dense_2/kernel/Adam/Initializer/zerosFill5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel

dense_2/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_2/kernel
µ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_2/kernel
}
-dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_2/kernel
Õ
'dense_2/kernel/Adam_1/Initializer/zerosFill7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel

dense_2/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_2/kernel
»
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel

3dense_2/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_2/bias
w
)dense_2/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_2/bias
Ç
#dense_2/bias/Adam/Initializer/zerosFill3dense_2/bias/Adam/Initializer/zeros/shape_as_tensor)dense_2/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_2/bias

dense_2/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_2/bias
­
dense_2/bias/Adam/AssignAssigndense_2/bias/Adam#dense_2/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias
_
dense_2/bias/Adam/readIdentitydense_2/bias/Adam*
T0*
_class
loc:@dense_2/bias

5dense_2/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_2/bias
y
+dense_2/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_2/bias
Í
%dense_2/bias/Adam_1/Initializer/zerosFill5dense_2/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_2/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_2/bias

dense_2/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_2/bias
³
dense_2/bias/Adam_1/AssignAssigndense_2/bias/Adam_1%dense_2/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias
c
dense_2/bias/Adam_1/readIdentitydense_2/bias/Adam_1*
T0*
_class
loc:@dense_2/bias

5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_3/kernel
{
+dense_3/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_3/kernel
Ï
%dense_3/kernel/Adam/Initializer/zerosFill5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_3/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_3/kernel

dense_3/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_3/kernel
µ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel

7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_3/kernel
}
-dense_3/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_3/kernel
Õ
'dense_3/kernel/Adam_1/Initializer/zerosFill7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_3/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_3/kernel

dense_3/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	*
	container *!
_class
loc:@dense_3/kernel
»
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel
i
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel

3dense_3/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_3/bias
w
)dense_3/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_3/bias
Ç
#dense_3/bias/Adam/Initializer/zerosFill3dense_3/bias/Adam/Initializer/zeros/shape_as_tensor)dense_3/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_3/bias

dense_3/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_3/bias
­
dense_3/bias/Adam/AssignAssigndense_3/bias/Adam#dense_3/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias
_
dense_3/bias/Adam/readIdentitydense_3/bias/Adam*
T0*
_class
loc:@dense_3/bias

5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_3/bias
y
+dense_3/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_3/bias
Í
%dense_3/bias/Adam_1/Initializer/zerosFill5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_3/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_3/bias

dense_3/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_3/bias
³
dense_3/bias/Adam_1/AssignAssigndense_3/bias/Adam_1%dense_3/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias
c
dense_3/bias/Adam_1/readIdentitydense_3/bias/Adam_1*
T0*
_class
loc:@dense_3/bias

5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"     *
dtype0*!
_class
loc:@dense_4/kernel
{
+dense_4/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_4/kernel
Ï
%dense_4/kernel/Adam/Initializer/zerosFill5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_4/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_4/kernel

dense_4/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_4/kernel
µ
dense_4/kernel/Adam/AssignAssigndense_4/kernel/Adam%dense_4/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel
e
dense_4/kernel/Adam/readIdentitydense_4/kernel/Adam*
T0*!
_class
loc:@dense_4/kernel

7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"     *
dtype0*!
_class
loc:@dense_4/kernel
}
-dense_4/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_4/kernel
Õ
'dense_4/kernel/Adam_1/Initializer/zerosFill7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_4/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_4/kernel

dense_4/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_4/kernel
»
dense_4/kernel/Adam_1/AssignAssigndense_4/kernel/Adam_1'dense_4/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel
i
dense_4/kernel/Adam_1/readIdentitydense_4/kernel/Adam_1*
T0*!
_class
loc:@dense_4/kernel

3dense_4/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_4/bias
w
)dense_4/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_4/bias
Ç
#dense_4/bias/Adam/Initializer/zerosFill3dense_4/bias/Adam/Initializer/zeros/shape_as_tensor)dense_4/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_4/bias

dense_4/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_4/bias
­
dense_4/bias/Adam/AssignAssigndense_4/bias/Adam#dense_4/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias
_
dense_4/bias/Adam/readIdentitydense_4/bias/Adam*
T0*
_class
loc:@dense_4/bias

5dense_4/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_4/bias
y
+dense_4/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_4/bias
Í
%dense_4/bias/Adam_1/Initializer/zerosFill5dense_4/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_4/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_4/bias

dense_4/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_4/bias
³
dense_4/bias/Adam_1/AssignAssigndense_4/bias/Adam_1%dense_4/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias
c
dense_4/bias/Adam_1/readIdentitydense_4/bias/Adam_1*
T0*
_class
loc:@dense_4/bias

5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_5/kernel
{
+dense_5/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_5/kernel
Ï
%dense_5/kernel/Adam/Initializer/zerosFill5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_5/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_5/kernel

dense_5/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_5/kernel
µ
dense_5/kernel/Adam/AssignAssigndense_5/kernel/Adam%dense_5/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel
e
dense_5/kernel/Adam/readIdentitydense_5/kernel/Adam*
T0*!
_class
loc:@dense_5/kernel

7dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_5/kernel
}
-dense_5/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_5/kernel
Õ
'dense_5/kernel/Adam_1/Initializer/zerosFill7dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_5/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_5/kernel

dense_5/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_5/kernel
»
dense_5/kernel/Adam_1/AssignAssigndense_5/kernel/Adam_1'dense_5/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel
i
dense_5/kernel/Adam_1/readIdentitydense_5/kernel/Adam_1*
T0*!
_class
loc:@dense_5/kernel

3dense_5/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_5/bias
w
)dense_5/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_5/bias
Ç
#dense_5/bias/Adam/Initializer/zerosFill3dense_5/bias/Adam/Initializer/zeros/shape_as_tensor)dense_5/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_5/bias

dense_5/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_5/bias
­
dense_5/bias/Adam/AssignAssigndense_5/bias/Adam#dense_5/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias
_
dense_5/bias/Adam/readIdentitydense_5/bias/Adam*
T0*
_class
loc:@dense_5/bias

5dense_5/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_5/bias
y
+dense_5/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_5/bias
Í
%dense_5/bias/Adam_1/Initializer/zerosFill5dense_5/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_5/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_5/bias

dense_5/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_5/bias
³
dense_5/bias/Adam_1/AssignAssigndense_5/bias/Adam_1%dense_5/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias
c
dense_5/bias/Adam_1/readIdentitydense_5/bias/Adam_1*
T0*
_class
loc:@dense_5/bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wÌ+2*
dtype0
©
2Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonFgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
use_nesterov( 
 
0Adam/update_main_graph_0/hidden_0/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonGgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *-
_class#
!loc:@main_graph_0/hidden_0/bias*
use_nesterov( 
©
2Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonFgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
use_nesterov( 
 
0Adam/update_main_graph_0/hidden_1/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonGgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *-
_class#
!loc:@main_graph_0/hidden_1/bias*
use_nesterov( 
É
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense/kernel*
use_nesterov( 
Õ
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_1/kernel*
use_nesterov( 
Ì
"Adam/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_1/bias*
use_nesterov( 

8Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam	ApplyAdam"vector_obs_encoder/hidden_0/kernel'vector_obs_encoder/hidden_0/kernel/Adam)vector_obs_encoder/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_14*
T0*
use_locking( *5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
use_nesterov( 

6Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam	ApplyAdam vector_obs_encoder/hidden_0/bias%vector_obs_encoder/hidden_0/bias/Adam'vector_obs_encoder/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_13*
T0*
use_locking( *3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
use_nesterov( 

8Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam	ApplyAdam"vector_obs_encoder/hidden_1/kernel'vector_obs_encoder/hidden_1/kernel/Adam)vector_obs_encoder/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_9*
T0*
use_locking( *5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
use_nesterov( 

6Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam	ApplyAdam vector_obs_encoder/hidden_1/bias%vector_obs_encoder/hidden_1/bias/Adam'vector_obs_encoder/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_8*
T0*
use_locking( *3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
use_nesterov( 
Õ
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_2/kernel*
use_nesterov( 
Ì
"Adam/update_dense_2/bias/ApplyAdam	ApplyAdamdense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_2/bias*
use_nesterov( 
Õ
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_3/kernel*
use_nesterov( 
Ì
"Adam/update_dense_3/bias/ApplyAdam	ApplyAdamdense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_3/bias*
use_nesterov( 
Õ
$Adam/update_dense_4/kernel/ApplyAdam	ApplyAdamdense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_4/kernel*
use_nesterov( 
Ì
"Adam/update_dense_4/bias/ApplyAdam	ApplyAdamdense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_4/bias*
use_nesterov( 
Õ
$Adam/update_dense_5/kernel/ApplyAdam	ApplyAdamdense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_5/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_5/kernel*
use_nesterov( 
Ì
"Adam/update_dense_5/bias/ApplyAdam	ApplyAdamdense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_5/bias*
use_nesterov( 
°
Adam/mulMulbeta1_power/read
Adam/beta13^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
use_locking( *
validate_shape(*
_class
loc:@dense/kernel
²

Adam/mul_1Mulbeta2_power/read
Adam/beta23^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
use_locking( *
validate_shape(*
_class
loc:@dense/kernel

AdamNoOp3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
ø
initNoOp^global_step/Assign^last_reward/Assign$^main_graph_0/hidden_0/kernel/Assign"^main_graph_0/hidden_0/bias/Assign$^main_graph_0/hidden_1/kernel/Assign"^main_graph_0/hidden_1/bias/Assign^dense/kernel/Assign^dense_1/kernel/Assign^dense_1/bias/Assign*^vector_obs_encoder/hidden_0/kernel/Assign(^vector_obs_encoder/hidden_0/bias/Assign*^vector_obs_encoder/hidden_1/kernel/Assign(^vector_obs_encoder/hidden_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^dense_4/kernel/Assign^dense_4/bias/Assign^dense_5/kernel/Assign^dense_5/bias/Assign^beta1_power/Assign^beta2_power/Assign)^main_graph_0/hidden_0/kernel/Adam/Assign+^main_graph_0/hidden_0/kernel/Adam_1/Assign'^main_graph_0/hidden_0/bias/Adam/Assign)^main_graph_0/hidden_0/bias/Adam_1/Assign)^main_graph_0/hidden_1/kernel/Adam/Assign+^main_graph_0/hidden_1/kernel/Adam_1/Assign'^main_graph_0/hidden_1/bias/Adam/Assign)^main_graph_0/hidden_1/bias/Adam_1/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign/^vector_obs_encoder/hidden_0/kernel/Adam/Assign1^vector_obs_encoder/hidden_0/kernel/Adam_1/Assign-^vector_obs_encoder/hidden_0/bias/Adam/Assign/^vector_obs_encoder/hidden_0/bias/Adam_1/Assign/^vector_obs_encoder/hidden_1/kernel/Adam/Assign1^vector_obs_encoder/hidden_1/kernel/Adam_1/Assign-^vector_obs_encoder/hidden_1/bias/Adam/Assign/^vector_obs_encoder/hidden_1/bias/Adam_1/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_2/bias/Adam/Assign^dense_2/bias/Adam_1/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_3/bias/Adam/Assign^dense_3/bias/Adam_1/Assign^dense_4/kernel/Adam/Assign^dense_4/kernel/Adam_1/Assign^dense_4/bias/Adam/Assign^dense_4/bias/Adam_1/Assign^dense_5/kernel/Adam/Assign^dense_5/kernel/Adam_1/Assign^dense_5/bias/Adam/Assign^dense_5/bias/Adam_1/Assign
8

save/ConstConst*
valueB Bmodel*
dtype0
Ê
save/SaveV2/tensor_namesConst*
valueB=Bbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bglobal_stepBlast_rewardBmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1B vector_obs_encoder/hidden_0/biasB%vector_obs_encoder/hidden_0/bias/AdamB'vector_obs_encoder/hidden_0/bias/Adam_1B"vector_obs_encoder/hidden_0/kernelB'vector_obs_encoder/hidden_0/kernel/AdamB)vector_obs_encoder/hidden_0/kernel/Adam_1B vector_obs_encoder/hidden_1/biasB%vector_obs_encoder/hidden_1/bias/AdamB'vector_obs_encoder/hidden_1/bias/Adam_1B"vector_obs_encoder/hidden_1/kernelB'vector_obs_encoder/hidden_1/kernel/AdamB)vector_obs_encoder/hidden_1/kernel/Adam_1*
dtype0
Ä
save/SaveV2/shape_and_slicesConst*
valueB=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ª
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerdense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1dense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1dense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1dense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1dense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1global_steplast_rewardmain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1main_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1main_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1main_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1 vector_obs_encoder/hidden_0/bias%vector_obs_encoder/hidden_0/bias/Adam'vector_obs_encoder/hidden_0/bias/Adam_1"vector_obs_encoder/hidden_0/kernel'vector_obs_encoder/hidden_0/kernel/Adam)vector_obs_encoder/hidden_0/kernel/Adam_1 vector_obs_encoder/hidden_1/bias%vector_obs_encoder/hidden_1/bias/Adam'vector_obs_encoder/hidden_1/bias/Adam_1"vector_obs_encoder/hidden_1/kernel'vector_obs_encoder/hidden_1/kernel/Adam)vector_obs_encoder/hidden_1/kernel/Adam_1*K
dtypesA
?2=
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
Ü
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB=Bbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bglobal_stepBlast_rewardBmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1B vector_obs_encoder/hidden_0/biasB%vector_obs_encoder/hidden_0/bias/AdamB'vector_obs_encoder/hidden_0/bias/Adam_1B"vector_obs_encoder/hidden_0/kernelB'vector_obs_encoder/hidden_0/kernel/AdamB)vector_obs_encoder/hidden_0/kernel/Adam_1B vector_obs_encoder/hidden_1/biasB%vector_obs_encoder/hidden_1/bias/AdamB'vector_obs_encoder/hidden_1/bias/Adam_1B"vector_obs_encoder/hidden_1/kernelB'vector_obs_encoder/hidden_1/kernel/AdamB)vector_obs_encoder/hidden_1/kernel/Adam_1*
dtype0
Ö
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Á
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*K
dtypesA
?2=

save/AssignAssignbeta1_powersave/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel

save/Assign_1Assignbeta2_powersave/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel

save/Assign_2Assigndense/kernelsave/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel

save/Assign_3Assigndense/kernel/Adamsave/RestoreV2:3*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel

save/Assign_4Assigndense/kernel/Adam_1save/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel

save/Assign_5Assigndense_1/biassave/RestoreV2:5*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias

save/Assign_6Assigndense_1/bias/Adamsave/RestoreV2:6*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias

save/Assign_7Assigndense_1/bias/Adam_1save/RestoreV2:7*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias

save/Assign_8Assigndense_1/kernelsave/RestoreV2:8*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel

save/Assign_9Assigndense_1/kernel/Adamsave/RestoreV2:9*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel

save/Assign_10Assigndense_1/kernel/Adam_1save/RestoreV2:10*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel

save/Assign_11Assigndense_2/biassave/RestoreV2:11*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias

save/Assign_12Assigndense_2/bias/Adamsave/RestoreV2:12*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias

save/Assign_13Assigndense_2/bias/Adam_1save/RestoreV2:13*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias

save/Assign_14Assigndense_2/kernelsave/RestoreV2:14*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel

save/Assign_15Assigndense_2/kernel/Adamsave/RestoreV2:15*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel

save/Assign_16Assigndense_2/kernel/Adam_1save/RestoreV2:16*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel

save/Assign_17Assigndense_3/biassave/RestoreV2:17*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias

save/Assign_18Assigndense_3/bias/Adamsave/RestoreV2:18*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias

save/Assign_19Assigndense_3/bias/Adam_1save/RestoreV2:19*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias

save/Assign_20Assigndense_3/kernelsave/RestoreV2:20*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel

save/Assign_21Assigndense_3/kernel/Adamsave/RestoreV2:21*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel

save/Assign_22Assigndense_3/kernel/Adam_1save/RestoreV2:22*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel

save/Assign_23Assigndense_4/biassave/RestoreV2:23*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias

save/Assign_24Assigndense_4/bias/Adamsave/RestoreV2:24*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias

save/Assign_25Assigndense_4/bias/Adam_1save/RestoreV2:25*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias

save/Assign_26Assigndense_4/kernelsave/RestoreV2:26*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel

save/Assign_27Assigndense_4/kernel/Adamsave/RestoreV2:27*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel

save/Assign_28Assigndense_4/kernel/Adam_1save/RestoreV2:28*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel

save/Assign_29Assigndense_5/biassave/RestoreV2:29*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias

save/Assign_30Assigndense_5/bias/Adamsave/RestoreV2:30*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias

save/Assign_31Assigndense_5/bias/Adam_1save/RestoreV2:31*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias

save/Assign_32Assigndense_5/kernelsave/RestoreV2:32*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel

save/Assign_33Assigndense_5/kernel/Adamsave/RestoreV2:33*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel

save/Assign_34Assigndense_5/kernel/Adam_1save/RestoreV2:34*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel

save/Assign_35Assignglobal_stepsave/RestoreV2:35*
T0*
use_locking(*
validate_shape(*
_class
loc:@global_step

save/Assign_36Assignlast_rewardsave/RestoreV2:36*
T0*
use_locking(*
validate_shape(*
_class
loc:@last_reward
¨
save/Assign_37Assignmain_graph_0/hidden_0/biassave/RestoreV2:37*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias
­
save/Assign_38Assignmain_graph_0/hidden_0/bias/Adamsave/RestoreV2:38*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias
¯
save/Assign_39Assign!main_graph_0/hidden_0/bias/Adam_1save/RestoreV2:39*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_0/bias
¬
save/Assign_40Assignmain_graph_0/hidden_0/kernelsave/RestoreV2:40*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
±
save/Assign_41Assign!main_graph_0/hidden_0/kernel/Adamsave/RestoreV2:41*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
³
save/Assign_42Assign#main_graph_0/hidden_0/kernel/Adam_1save/RestoreV2:42*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
¨
save/Assign_43Assignmain_graph_0/hidden_1/biassave/RestoreV2:43*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias
­
save/Assign_44Assignmain_graph_0/hidden_1/bias/Adamsave/RestoreV2:44*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias
¯
save/Assign_45Assign!main_graph_0/hidden_1/bias/Adam_1save/RestoreV2:45*
T0*
use_locking(*
validate_shape(*-
_class#
!loc:@main_graph_0/hidden_1/bias
¬
save/Assign_46Assignmain_graph_0/hidden_1/kernelsave/RestoreV2:46*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
±
save/Assign_47Assign!main_graph_0/hidden_1/kernel/Adamsave/RestoreV2:47*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
³
save/Assign_48Assign#main_graph_0/hidden_1/kernel/Adam_1save/RestoreV2:48*
T0*
use_locking(*
validate_shape(*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
´
save/Assign_49Assign vector_obs_encoder/hidden_0/biassave/RestoreV2:49*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
¹
save/Assign_50Assign%vector_obs_encoder/hidden_0/bias/Adamsave/RestoreV2:50*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
»
save/Assign_51Assign'vector_obs_encoder/hidden_0/bias/Adam_1save/RestoreV2:51*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
¸
save/Assign_52Assign"vector_obs_encoder/hidden_0/kernelsave/RestoreV2:52*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
½
save/Assign_53Assign'vector_obs_encoder/hidden_0/kernel/Adamsave/RestoreV2:53*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
¿
save/Assign_54Assign)vector_obs_encoder/hidden_0/kernel/Adam_1save/RestoreV2:54*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
´
save/Assign_55Assign vector_obs_encoder/hidden_1/biassave/RestoreV2:55*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
¹
save/Assign_56Assign%vector_obs_encoder/hidden_1/bias/Adamsave/RestoreV2:56*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
»
save/Assign_57Assign'vector_obs_encoder/hidden_1/bias/Adam_1save/RestoreV2:57*
T0*
use_locking(*
validate_shape(*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
¸
save/Assign_58Assign"vector_obs_encoder/hidden_1/kernelsave/RestoreV2:58*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
½
save/Assign_59Assign'vector_obs_encoder/hidden_1/kernel/Adamsave/RestoreV2:59*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¿
save/Assign_60Assign)vector_obs_encoder/hidden_1/kernel/Adam_1save/RestoreV2:60*
T0*
use_locking(*
validate_shape(*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_60
ë
Const_5Const*Ë
valueÁB¾BtrainerBppoB
batch_sizeB128BbetaB0.01Bbuffer_sizeB2048BepsilonB0.2BgammaB0.99Bhidden_unitsB512BlambdB0.95Blearning_rateB0.0003B	max_stepsB1.0e6Bmemory_sizeB256B	normalizeBFalseB	num_epochB3B
num_layersB2Btime_horizonB128Bsequence_lengthB64Bsummary_freqB2000Buse_recurrentBFalseBuse_curiosityBTrueBcuriosity_strengthB0.01Bcuriosity_enc_sizeB256Bgraph_scopeB Bsummary_pathB./summaries/firstRun-0*
dtype0
K
Hyperparameters/tagConst* 
valueB BHyperparameters*
dtype0
\
+Hyperparameters/serialized_summary_metadataConst*
valueB B

text*
dtype0
v
HyperparametersTensorSummaryV2Hyperparameters/tagConst_5+Hyperparameters/serialized_summary_metadata*
T0"