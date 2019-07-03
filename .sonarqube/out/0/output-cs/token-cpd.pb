Ÿ
XC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Attributes\LogAttribute.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
{ 
[

 
global

 
::

 
System

 
.

 
AttributeUsage

 "
(

" #
AttributeTargets

# 3
.

3 4
Class

4 9
,

9 :
	Inherited

; D
=

E F
false

G L
,

L M
AllowMultiple

N [
=

\ ]
false

^ c
)

c d
]

d e
public 

sealed 
class 
LogAttribute $
:% &
	Attribute' 0
{ 
public 
LogAttribute 
( 
) 
{ 	

MappedName 
= 
string 
.  
Empty  %
;% &
Description 
= 
string  
.  !
Empty! &
;& '

AppendType 
= 
AppendTypes $
.$ %
Differential% 1
;1 2
} 	
public 
LogAttribute 
( 
AppendTypes '

appendType( 2
)2 3
:4 5
this6 :
(: ;
); <
{ 	

AppendType 
= 

appendType #
;# $
} 	
public 
LogAttribute 
( 
string "

mappedName# -
,- .
string/ 5
description6 A
)A B
{ 	

MappedName 
= 

mappedName #
;# $
Description 
= 
description %
;% &
} 	
public   
LogAttribute   
(   
string   "

mappedName  # -
,  - .
string  / 5
description  6 A
,  A B
AppendTypes  C N

appendType  O Y
)  Y Z
:  [ \
this  ] a
(  a b

mappedName  b l
,  l m
description  n y
)  y z
{!! 	

AppendType"" 
="" 

appendType"" #
;""# $
}## 	
public&& 
string&& 

MappedName&&  
{&&! "
get&&# &
;&&& '
private&&( /
set&&0 3
;&&3 4
}&&5 6
public)) 
string)) 
Description)) !
{))" #
get))$ '
;))' (
private))) 0
set))1 4
;))4 5
}))6 7
public,, 
AppendTypes,, 

AppendType,, %
{,,& '
get,,( +
;,,+ ,
set,,- 0
;,,0 1
},,2 3
}.. 
}// ¶
[C:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Attributes\LogKeyAttribute.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
{ 
[ 
global 
:: 

System
 
. 
AttributeUsage 
(  
AttributeTargets  0
.0 1
Property1 9
,9 :
	Inherited; D
=E F
falseG L
,L M
AllowMultipleN [
=\ ]
false^ c
)c d
]d e
public 
sealed 
class 
LogKeyAttribute $
:% &
	Attribute' 0
{ 
} 
} ™
2C:\Users\YEK\Desktop\d\App.Logger\NLogUtilities.cs
	namespace		 	
App		
 
.		 
Logger		 
{

 
public 
static 
class 
NLogUtilities "
{ 
public 
static	 
List 
< 
OHTarget 
> 
GetOHTargets +
(+ ,
), -
{ 
List 
< 
OHTarget 
> 
targets 
= 
new 
List  $
<$ %
OHTarget% -
>- .
(. /
)/ 0
;0 1
NLog 
. 
Logger 
logger 
= 

LogManager "
." #!
GetCurrentClassLogger# 8
(8 9
)9 :
;: ;
foreach 

( 
var 
rule 
in 
logger 
. 
Factory &
.& '
Configuration' 4
.4 5
LoggingRules5 A
)A B
{ 
foreach 
( 
var 
target 
in 
rule 
.  
Targets  '
)' (
{ 
if 
( 	
target	 
is 
OHTarget 
) 
{ 
targets 
. 
Add 
( 
( 
OHTarget 
) 
target "
)" #
;# $
} 
} 
} 
return 	
targets
 
; 
}   
public## 
static##	 
string## (
GetNLogConfigurationFilePath## 3
(##3 4
)##4 5
{$$ 
var%% 
cfgPath%% 
=%% 
	AppDomain%% 
.%% 
CurrentDomain%% (
.%%( )
SetupInformation%%) 9
.%%9 :
ConfigurationFile%%: K
;%%K L
return&& 	
new&&
 
FileInfo&& 
(&& 
cfgPath&& 
)&& 
.&&  
	Directory&&  )
.&&) *
FullName&&* 2
+&&3 4
$str&&5 D
;&&D E
}'' 
})) 
}** Á
<C:\Users\YEK\Desktop\d\App.Logger\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str %
)% &
]& '
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str  
)  !
]! "
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str '
)' (
]( )
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 3
)3 4
]4 5
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *⁄
`C:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Attributes\LogPropertyAttribute.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
{ 
[ 
global 
:: 
System 
. 
AttributeUsage "
(" #
AttributeTargets# 3
.3 4
Property4 <
,< =
	Inherited> G
=H I
falseJ O
,O P
AllowMultipleQ ^
=_ `
falsea f
)f g
]g h
public		 

sealed		 
class		  
LogPropertyAttribute		 ,
:		- .
	Attribute		/ 8
{

 
public  
LogPropertyAttribute #
(# $
)$ %
{ 	

MappedName 
= 
string 
.  
Empty  %
;% &
Description 
= 
string  
.  !
Empty! &
;& '
} 	
public  
LogPropertyAttribute #
(# $
string$ *

mappedName+ 5
,5 6
string7 =
description> I
)I J
{ 	

MappedName 
= 

mappedName #
;# $
Description 
= 
description %
;% &
} 	
public 
string 

MappedName  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
string 
Description !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
}   
}!! Ü
LC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\AppendTypes.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
{ 
public 
enum 
AppendTypes 
: 
int 
{ 
Differential 
= 
$num 
, 
Incremental 
= 
$num 
} 
} ∞2
_C:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Configuration\XMLConfiguration.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
.0 1
Configuration1 >
{		 
public

 

class

 
XMLConfiguration

 !
:

" #
List

$ (
<

( ) 
XMLTypeConfiguration

) =
>

= >
{ 
OHTarget 
target 
= 
null 
; 
public 
XMLConfiguration 
(  
OHTarget  (
target) /
)/ 0
{ 	
this 
. 
target 
= 
target  
;  !
ReadXml 
( 
) 
; 
} 	
public  
XMLTypeConfiguration # 
GetTypeConfiguration$ 8
(8 9
Type9 =
type> B
)B C
{ 	
var 
q 
= 
( 
from 
cfg 
in  
this! %
where 
( 
string "
." #
IsNullOrEmpty# 0
(0 1
cfg1 4
.4 5
TypeName5 =
)= >
?? @
stringA G
.G H
EmptyH M
:N O
cfgP S
.S T
TypeNameT \
)\ ]
==^ `
typea e
.e f
FullNamef n
.n o
ToStringo w
(w x
)x y
select 
cfg 
)  
.  !
ToList! '
(' (
)( )
;) *
if 
( 
q 
. 
Count 
( 
) 
== 
$num 
) 
{ 
return 
q 
[ 
$num 
] 
; 
} 
else 
if 
( 
q 
. 
Count 
( 
) 
>= !
$num" #
)# $
{ 
throw 
new <
0MultipleXmlConfigurationsForTheSameTypeException J
(J K
)K L
;L M
}   
return"" 
null"" 
;"" 
}## 	
private'' 
void'' 
ReadXml'' 
('' 
)'' 
{(( 	
string)) 
LogTypes)) 
=)) 
target)) $
.))$ %
LogTypes))% -
;))- .
if++ 
(++ 
!++ 
string++ 
.++ 
IsNullOrEmpty++ %
(++% &
LogTypes++& .
)++. /
)++/ 0
{,, 
LogTypes-- 
=-- 
LogTypes-- #
.--# $
Trim--$ (
(--( )
)--) *
;--* +
string.. 
[.. 
].. 
types.. 
=..  
LogTypes..! )
...) *
Split..* /
(../ 0
$char..0 3
)..3 4
;..4 5
foreach00 
(00 
string00 
type00  $
in00% '
types00( -
)00- .
{11 
string22 
typeName22 #
=22$ %
string22& ,
.22, -
Empty22- 2
;222 3
string33 
keyProperty33 &
=33' (
string33) /
.33/ 0
Empty330 5
;335 6
List44 
<44 
string44 
>44  

properties44! +
=44, -
new44. 1
List442 6
<446 7
string447 =
>44= >
(44> ?
)44? @
;44@ A
string66 
[66 
]66 
items66 "
=66# $
type66% )
.66) *
Split66* /
(66/ 0
$char660 3
)663 4
;664 5
foreach88 
(88 
string88 #
item88$ (
in88) +
items88, 1
)881 2
{99 
string:: 
[:: 
]::  
cfgP::! %
=::& '
item::( ,
.::, -
Split::- 2
(::2 3
$char::3 6
)::6 7
;::7 8
if;; 
(;; 
cfgP;;  
!=;;! #
null;;$ (
&&;;) +
cfgP;;, 0
.;;0 1
Length;;1 7
==;;8 :
$num;;; <
);;< =
{<< 
switch== "
(==# $
cfgP==$ (
[==( )
$num==) *
]==* +
.==+ ,
ToLower==, 3
(==3 4
)==4 5
)==5 6
{>> 
case??  $
$str??% +
:??+ ,
typeName@@$ ,
=@@- .
cfgP@@/ 3
[@@3 4
$num@@4 5
]@@5 6
;@@6 7
breakAA$ )
;AA) *
caseBB  $
$strBB% *
:BB* +
keyPropertyCC$ /
=CC0 1
cfgPCC2 6
[CC6 7
$numCC7 8
]CC8 9
;CC9 :
breakDD$ )
;DD) *
caseEE  $
$strEE% 1
:EE1 2
stringFF$ *
[FF* +
]FF+ ,
propsFF- 2
=FF3 4
cfgPFF5 9
[FF9 :
$numFF: ;
]FF; <
.FF< =
SplitFF= B
(FFB C
$charFFC F
)FFF G
;FFG H
foreachGG$ +
(GG, -
stringGG- 3
propGG4 8
inGG9 ;
propsGG< A
)GGA B
{HH$ %

propertiesII( 2
.II2 3
AddII3 6
(II6 7
propII7 ;
)II; <
;II< =
}JJ$ %
breakKK$ )
;KK) *
defaultLL  '
:LL' (
breakMM$ )
;MM) *
}NN 
}OO 
}PP  
XMLTypeConfigurationRR (

typeConfigRR) 3
=RR4 5
newRR6 9 
XMLTypeConfigurationRR: N
(RRN O
typeNameRRO W
,RRW X
keyPropertyRRY d
,RRd e

propertiesRRf p
)RRp q
;RRq r
thisSS 
.SS 
AddSS 
(SS 

typeConfigSS '
)SS' (
;SS( )
}TT 
}UU 
}VV 	
}WW 
}XX É
cC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Configuration\XMLTypeConfiguration.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
.0 1
Configuration1 >
{ 
public 

class  
XMLTypeConfiguration %
{		 
public

  
XMLTypeConfiguration

 #
(

# $
string

$ *
typeName

+ 3
,

3 4
string

5 ;
keyProperty

< G
,

G H
List

I M
<

M N
string

N T
>

T U

properties

V `
)

` a
{ 	
this 
. 
TypeName 
= 
typeName $
;$ %
this 
. 
KeyProperty 
= 
keyProperty *
;* +
this 
. 

Properties 
= 

properties (
;( )
} 	
public 
string 
TypeName 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
string 
KeyProperty !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
List 
< 
string 
> 

Properties &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
} 
} Ç=
_C:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Data\DBScripts\OHScriptManager.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
.0 1
Data1 5
.5 6
	DBScripts6 ?
{ 
public		 

static		 
class		 
OHScriptManager		 '
{

 
public 
static 
List 
< 
string !
>! "
GetTablesScripts# 3
(3 4
OHDbBaseClient4 B
dbClientC K
)K L
{ 	
return 

GetScripts 
( 
ScriptTypes )
.) *
Tables* 0
,0 1
dbClient2 :
): ;
;; <
} 	
public 
static 
List 
< 
string !
>! " 
GetProceduresScripts# 7
(7 8
OHDbBaseClient8 F
dbClientG O
)O P
{ 	
return 

GetScripts 
( 
ScriptTypes )
.) *

Procedures* 4
,4 5
dbClient6 >
)> ?
;? @
} 	
public 
static 
List 
< 
string !
>! "
GetViewsScripts# 2
(2 3
OHDbBaseClient3 A
dbClientB J
)J K
{ 	
return 

GetScripts 
( 
ScriptTypes )
.) *
Views* /
,/ 0
dbClient1 9
)9 :
;: ;
} 	
public 
static 
List 
< 
string !
>! "
GetDataScripts# 1
(1 2
OHDbBaseClient2 @
dbClientA I
)I J
{   	
return!! 

GetScripts!! 
(!! 
ScriptTypes!! )
.!!) *
Data!!* .
,!!. /
dbClient!!0 8
)!!8 9
;!!9 :
}"" 	
public%% 
enum%% 
ScriptTypes%% 
{&& 	
Tables(( 
=(( 
$num(( 
,(( 

Procedures** 
=** 
$num** 
,** 
Views,, 
=,, 
$num,, 
,,, 
Data.. 
=.. 
$num.. 
}// 	
private22 
static22 
List22 
<22 
string22 "
>22" #

GetScripts22$ .
(22. /
ScriptTypes22/ :
type22; ?
,22? @
OHDbBaseClient22A O
dbClient22P X
)22X Y
{33 	
string44 
ObjectsPrefix44  
=44! "
dbClient44# +
.44+ ,
target44, 2
.442 3
DBTablesPrefix443 A
;44A B
string55 #
_dbScriptsContainerPath55 *
=55+ ,
string55- 3
.553 4
IsNullOrEmpty554 A
(55A B
dbClient55B J
.55J K"
DbScriptsContainerPath55K a
)55a b
?55c d
string55e k
.55k l
Empty55l q
:55r s
dbClient55t |
.55| }#
DbScriptsContainerPath	55} ì
;
55ì î
string77 
filter77 
=77 
string77 "
.77" #
Empty77# (
;77( )
switch88 
(88 
type88 
)88 
{99 
case:: 
ScriptTypes::  
.::  !
Tables::! '
:::' (
filter;; 
=;; 
$str;; '
;;;' (
break<< 
;<< 
case== 
ScriptTypes==  
.==  !

Procedures==! +
:==+ ,
filter>> 
=>> 
$str>> +
;>>+ ,
break?? 
;?? 
case@@ 
ScriptTypes@@  
.@@  !
Views@@! &
:@@& '
filterAA 
=AA 
$strAA &
;AA& '
breakBB 
;BB 
caseCC 
ScriptTypesCC  
.CC  !
DataCC! %
:CC% &
filterDD 
=DD 
$strDD %
;DD% &
breakEE 
;EE 
defaultFF 
:FF 
breakGG 
;GG 
}HH 
AssemblyJJ 
asmJJ 
=JJ 
AssemblyJJ #
.JJ# $ 
GetExecutingAssemblyJJ$ 8
(JJ8 9
)JJ9 :
;JJ: ;
stringKK 
[KK 
]KK 
resNamesKK 
=KK 
asmKK  #
.KK# $$
GetManifestResourceNamesKK$ <
(KK< =
)KK= >
;KK> ?
StreamLL 
	sqlStreamLL 
=LL 
nullLL #
;LL# $
ListOO 
<OO 
stringOO 
>OO 
listOO 
=OO 
newOO  #
ListOO$ (
<OO( )
stringOO) /
>OO/ 0
(OO0 1
)OO1 2
;OO2 3
ifPP 
(PP 
resNamesPP 
==PP 
nullPP  
||PP! #
resNamesPP$ ,
.PP, -
LengthPP- 3
==PP4 6
$numPP7 8
)PP8 9
returnPP: @
listPPA E
;PPE F
forQQ 
(QQ 
intQQ 
iQQ 
=QQ 
$numQQ 
;QQ 
iQQ 
<QQ 
resNamesQQ  (
.QQ( )
LengthQQ) /
;QQ/ 0
iQQ1 2
++QQ2 4
)QQ4 5
{RR 
ifSS 
(SS 
resNamesSS 
[SS 
iSS 
]SS 
.SS  

StartsWithSS  *
(SS* +#
_dbScriptsContainerPathSS+ B
)SSB C
&&SSD F
resNamesSSG O
[SSO P
iSSP Q
]SSQ R
.SSR S
ToLowerSSS Z
(SSZ [
)SS[ \
.SS\ ]
ContainsSS] e
(SSe f
filterSSf l
.SSl m
ToLowerSSm t
(SSt u
)SSu v
)SSv w
)SSw x
listTT 
.TT 
AddTT 
(TT 
resNamesTT %
[TT% &
iTT& '
]TT' (
)TT( )
;TT) *
}UU 
listXX 
.XX 
SortXX 
(XX 
newXX "
ScriptFileNameComparerXX 0
(XX0 1
)XX1 2
)XX2 3
;XX3 4
forZZ 
(ZZ 
intZZ 
iZZ 
=ZZ 
$numZZ 
;ZZ 
iZZ 
<ZZ 
listZZ  $
.ZZ$ %
CountZZ% *
;ZZ* +
iZZ, -
++ZZ- /
)ZZ/ 0
{[[ 
	sqlStream\\ 
=\\ 
asm\\ 
.\\  %
GetManifestResourceStream\\  9
(\\9 :
list\\: >
[\\> ?
i\\? @
]\\@ A
)\\A B
;\\B C
using]] 
(]] 
StreamReader]] #
sr]]$ &
=]]' (
new]]) ,
StreamReader]]- 9
(]]9 :
	sqlStream]]: C
)]]C D
)]]D E
{^^ 
string__ 
script__ !
=__" #
sr__$ &
.__& '
	ReadToEnd__' 0
(__0 1
)__1 2
;__2 3
list`` 
[`` 
i`` 
]`` 
=`` 
string`` $
.``$ %
Format``% +
(``+ ,
script``, 2
,``2 3
ObjectsPrefix``4 A
)``A B
;``B C
}aa 
}bb 
returndd 
listdd 
;dd 
}ee 	
}gg 
}ii ˚
fC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Data\DBScripts\ScriptFileNameComparer.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
.0 1
Data1 5
.5 6
	DBScripts6 ?
{ 
internal 
class "
ScriptFileNameComparer )
:* +
	IComparer, 5
<5 6
string6 <
>< =
{		 
public 
int 
Compare 
( 
string !
x" #
,# $
string% +
y, -
)- .
{ 	
string 
type1 
= 
x 
. 
Split "
(" #
$char# &
)& '
[' (
$num( )
]) *
.* +
ToLower+ 2
(2 3
)3 4
;4 5
Version 
version1 
= 
new "
Version# *
(* +
x+ ,
., -
Split- 2
(2 3
$char3 6
)6 7
[7 8
$num8 9
]9 :
.: ;
Trim; ?
(? @
)@ A
.A B
ToLowerB I
(I J
)J K
.K L
ReplaceL S
(S T
$strT W
,W X
$strY [
)[ \
)\ ]
;] ^
string 
type2 
= 
y 
. 
Split "
(" #
$char# &
)& '
[' (
$num( )
]) *
.* +
ToLower+ 2
(2 3
)3 4
;4 5
Version 
version2 
= 
new "
Version# *
(* +
y+ ,
., -
Split- 2
(2 3
$char3 6
)6 7
[7 8
$num8 9
]9 :
.: ;
Trim; ?
(? @
)@ A
.A B
ToLowerB I
(I J
)J K
.K L
ReplaceL S
(S T
$strT W
,W X
$strY [
)[ \
)\ ]
;] ^
if 
( 
type1 
. 
Equals 
( 
type2 "
)" #
)# $
{ 
return 
version1 
.  
	CompareTo  )
() *
version2* 2
)2 3
;3 4
} 
else 
{ 
return 
$num 
; 
} 
} 	
} 
} Û¡
TC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Data\OHDbBaseClient.cs
	namespace

 	
App


 
.

 
Logger

 
.

 
Targets

 
.

 
ObjectHistoryLogger

 0
.

0 1
Data

1 5
{ 
public 
abstract 
class 
OHDbBaseClient %
{ 
public 
readonly	 
OHTarget 
target !
=" #
null$ (
;( )
	protected 
string 
tbl_ObjectLogs !
{ 
get 
{ 
string 

objectsPrefix 
= 
string !
.! "
IsNullOrEmpty" /
(/ 0
target0 6
.6 7
DBTablesPrefix7 E
)E F
?G H
$strI K
:L M
targetN T
.T U
DBTablesPrefixU c
;c d
return 

objectsPrefix 
+ 
$str '
;' (
} 
} 
	protected 
string  
tbl_ObjectLogDetails '
{ 
get 
{ 
string 

objectsPrefix 
= 
string !
.! "
IsNullOrEmpty" /
(/ 0
target0 6
.6 7
DBTablesPrefix7 E
)E F
?G H
$strI K
:L M
targetN T
.T U
DBTablesPrefixU c
;c d
return 

objectsPrefix 
+ 
$str -
;- .
} 
} 
	protected   
string   
tbl_EventLogs    
{!! 
get"" 
{## 
string$$ 

objectsPrefix$$ 
=$$ 
string$$ !
.$$! "
IsNullOrEmpty$$" /
($$/ 0
target$$0 6
.$$6 7
DBTablesPrefix$$7 E
)$$E F
?$$G H
$str$$I K
:$$L M
target$$N T
.$$T U
DBTablesPrefix$$U c
;$$c d
return%% 

objectsPrefix%% 
+%% 
$str%% &
;%%& '
}&& 
}'' 
	protected(( 
string(( 
tbl_Operations(( !
{)) 
get** 
{++ 
string,, 

objectsPrefix,, 
=,, 
string,, !
.,,! "
IsNullOrEmpty,," /
(,,/ 0
target,,0 6
.,,6 7
DBTablesPrefix,,7 E
),,E F
?,,G H
$str,,I K
:,,L M
target,,N T
.,,T U
DBTablesPrefix,,U c
;,,c d
return-- 

objectsPrefix-- 
+-- 
$str-- '
;--' (
}.. 
}// 
	protected00 
string00 

tbl_Levels00 
{11 
get22 
{33 
string44 

objectsPrefix44 
=44 
string44 !
.44! "
IsNullOrEmpty44" /
(44/ 0
target440 6
.446 7
DBTablesPrefix447 E
)44E F
?44G H
$str44I K
:44L M
target44N T
.44T U
DBTablesPrefix44U c
;44c d
return55 

objectsPrefix55 
+55 
$str55 #
;55# $
}66 
}77 
public99 
OHDbBaseClient99	 
(99 
OHTarget99  
target99! '
)99' (
{:: 
this;; 
.;; 
target;; 
=;; 
target;; 
;;; 
}<< 
public>> 
abstract>>	 
string>> "
DbScriptsContainerPath>> /
{>>0 1
get>>2 5
;>>5 6
}>>7 8
public?? 
abstract??	 
bool?? 
DbSchemaUpdated?? &
{??' (
get??) ,
;??, -
}??. /
public@@ 
abstract@@	 
void@@ 

SaveObject@@ !
(@@! "
OHInfo@@" (
objInfo@@) 0
,@@0 1
OHTarget@@2 :
target@@; A
)@@A B
;@@B C
publicAA 
abstractAA	 
OHResultListAA 
GetLastVersionAA -
(AA- .
TypeAA. 2
objTypeAA3 :
,AA: ;
stringAA< B
keyValueAAC K
)AAK L
;AAL M
publicBB 
abstractBB	 
OHResultListBB 

GetVersionBB )
(BB) *
TypeBB* .
objTypeBB/ 6
,BB6 7
stringBB8 >
keyValueBB? G
,BBG H
DateTimeBBI Q
dateBBR V
)BBV W
;BBW X
publicCC 
abstractCC	 
OHResultListCC 

GetHistoryCC )
(CC) *
TypeCC* .
objTypeCC/ 6
,CC6 7
stringCC8 >
keyValueCC? G
)CCG H
;CCH I
publicEE 
virtualEE	 
voidEE 
CreateDBSchemaEE $
(EE$ %
)EE% &
{FF 
ifGG 
(GG 
DbSchemaUpdatedGG 
)GG 
returnGG 
;GG 
stringII 	
objectsPrefixII
 
=II 
stringII  
.II  !
IsNullOrEmptyII! .
(II. /
targetII/ 5
.II5 6
DBTablesPrefixII6 D
)IID E
?IIF G
$strIIH J
:IIK L
targetIIM S
.IIS T
DBTablesPrefixIIT b
;IIb c
DbProviderFactoryJJ 
dbFactJJ $
=JJ% &
DbProviderFactoriesJJ' :
.JJ: ;

GetFactoryJJ; E
(JJE F
targetJJF L
.JJL M#
DbProviderInvariantNameJJM d
)JJd e
;JJe f
NpgsqlConnectionLL 
connLL !
=LL" #
newLL$ '
NpgsqlConnectionLL( 8
(LL8 9
)LL9 :
;LL: ;
connMM 
.MM 
ConnectionStringMM !
=MM" #
targetMM$ *
.MM* +
ConnectionStringMM+ ;
;MM; <
NpgsqlCommandOO 
commOO 
=OO  
newOO! $
NpgsqlCommandOO% 2
(OO2 3
)OO3 4
;OO4 5
commPP 
=PP 
connPP 
.PP 
CreateCommandPP %
(PP% &
)PP& '
;PP' (
commQQ 
.QQ 
CommandTypeQQ 
=QQ 
SystemQQ %
.QQ% &
DataQQ& *
.QQ* +
CommandTypeQQ+ 6
.QQ6 7
TextQQ7 ;
;QQ; <
connSS 
.SS 
OpenSS 
(SS 
)SS 
;SS 
ListUU 
<UU 
stringUU 
>UU 
scriptsUU  
=UU! "
	DBScriptsUU# ,
.UU, -
OHScriptManagerUU- <
.UU< =
GetTablesScriptsUU= M
(UUM N
thisUUN R
)UUR S
;UUS T
foreachVV 
(VV 
varVV 
scriptVV 
inVV  "
scriptsVV# *
)VV* +
{WW 
ifXX 
(XX 
!XX 
stringXX 
.XX 
IsNullOrEmptyXX )
(XX) *
scriptXX* 0
.XX0 1
TrimXX1 5
(XX5 6
)XX6 7
)XX7 8
)XX8 9
{YY 
commZZ 
.ZZ 
CommandTextZZ $
=ZZ% &
scriptZZ' -
;ZZ- .
comm[[ 
.[[ 
ExecuteNonQuery[[ (
([[( )
)[[) *
;[[* +
}\\ 
}]] 
scripts__ 
=__ 
	DBScripts__ 
.__  
OHScriptManager__  /
.__/ 0 
GetProceduresScripts__0 D
(__D E
this__E I
)__I J
;__J K
foreach`` 
(`` 
var`` 
script`` 
in``  "
scripts``# *
)``* +
{aa 
ifbb 
(bb 
!bb 
stringbb 
.bb 
IsNullOrEmptybb )
(bb) *
scriptbb* 0
.bb0 1
Trimbb1 5
(bb5 6
)bb6 7
)bb7 8
)bb8 9
{cc 
commdd 
.dd 
CommandTextdd $
=dd% &
scriptdd' -
;dd- .
commee 
.ee 
ExecuteNonQueryee (
(ee( )
)ee) *
;ee* +
}ff 
}gg 
scriptsii 
=ii 
	DBScriptsii 
.ii  
OHScriptManagerii  /
.ii/ 0
GetViewsScriptsii0 ?
(ii? @
thisii@ D
)iiD E
;iiE F
foreachjj 
(jj 
varjj 
scriptjj 
injj  "
scriptsjj# *
)jj* +
{kk 
ifll 
(ll 
!ll 
stringll 
.ll 
IsNullOrEmptyll )
(ll) *
scriptll* 0
.ll0 1
Trimll1 5
(ll5 6
)ll6 7
)ll7 8
)ll8 9
{mm 
commnn 
.nn 
CommandTextnn $
=nn% &
scriptnn' -
;nn- .
commoo 
.oo 
ExecuteNonQueryoo (
(oo( )
)oo) *
;oo* +
}pp 
}qq 
scriptsrr 
=rr 
	DBScriptsrr 
.rr  
OHScriptManagerrr  /
.rr/ 0
GetDataScriptsrr0 >
(rr> ?
thisrr? C
)rrC D
;rrD E
foreachss 
(ss 
varss 
scriptss 
inss  "
scriptsss# *
)ss* +
{tt 
ifuu 
(uu 
!uu 
stringuu 
.uu 
IsNullOrEmptyuu )
(uu) *
scriptuu* 0
.uu0 1
Trimuu1 5
(uu5 6
)uu6 7
)uu7 8
)uu8 9
{vv 
commww 
.ww 
CommandTextww $
=ww% &
scriptww' -
;ww- .
commxx 
.xx 
ExecuteNonQueryxx (
(xx( )
)xx) *
;xx* +
}yy 
}zz 
conn|| 
.|| 
Close|| 
(|| 
)|| 
;|| 
}}} 	
public
ÄÄ 
class
ÄÄ 
OHResultList
ÄÄ !
{
ÅÅ 
List
ÇÇ 
<
ÇÇ 
OHResultItem
ÇÇ 
>
ÇÇ 
Items
ÇÇ 
=
ÇÇ 
null
ÇÇ "
;
ÇÇ" #
OHInfo
ÉÉ 	
objInfo
ÉÉ
 
=
ÉÉ 
null
ÉÉ 
;
ÉÉ 
bool
ÑÑ 
Merge
ÑÑ 
=
ÑÑ 
false
ÑÑ 
;
ÑÑ 
	protected
áá 
internal
áá 
OHResultList
áá "
(
áá" #
OHInfo
áá# )
objInfo
áá* 1
,
áá1 2
NpgsqlDataReader
áá3 C
reader
ááD J
,
ááJ K
bool
ááL P
mergeResults
ááQ ]
)
áá] ^
{
àà 
LoadData
ââ 
(
ââ 
reader
ââ 
)
ââ 
;
ââ 
this
ää 
.
ää 	
objInfo
ää	 
=
ää 
objInfo
ää 
;
ää 
Merge
ãã 	
=
ãã
 
mergeResults
ãã 
;
ãã 
}
åå 
private
êê 

void
êê 
LoadData
êê 
(
êê 
NpgsqlDataReader
êê )
reader
êê* 0
)
êê0 1
{
ëë 
Items
íí 	
=
íí
 
new
íí 
List
íí 
<
íí 
OHResultItem
íí !
>
íí! "
(
íí" #
)
íí# $
;
íí$ %
while
îî 	
(
îî
 
reader
îî 
.
îî 
Read
îî 
(
îî 
)
îî 
)
îî 
{
ïï 
OHResultItem
ññ 
item
ññ 
=
ññ 
new
ññ 
OHResultItem
ññ )
(
ññ) *
)
ññ* +
;
ññ+ ,
item
òò 	
.
òò	 

OperationID
òò
 
=
òò 
int
òò 
.
òò 
Parse
òò !
(
òò! "
reader
òò" (
[
òò( )
$str
òò) 6
]
òò6 7
.
òò7 8
ToString
òò8 @
(
òò@ A
)
òòA B
)
òòB C
;
òòC D
item
öö 	
.
öö	 

PropertyName
öö
 
=
öö 
reader
öö 
[
öö  
$str
öö  .
]
öö. /
.
öö/ 0
ToString
öö0 8
(
öö8 9
)
öö9 :
;
öö: ;
item
õõ 	
.
õõ	 

PropertyValue
õõ
 
=
õõ 
reader
õõ  
[
õõ  !
$str
õõ! 0
]
õõ0 1
.
õõ1 2
ToString
õõ2 :
(
õõ: ;
)
õõ; <
;
õõ< =
item
úú 	
.
úú	 

PropertyType
úú
 
=
úú 
reader
úú 
[
úú  
$str
úú  .
]
úú. /
.
úú/ 0
ToString
úú0 8
(
úú8 9
)
úú9 :
;
úú: ;
item
ûû 	
.
ûû	 


ObjectName
ûû
 
=
ûû 
reader
ûû 
[
ûû 
$str
ûû *
]
ûû* +
.
ûû+ ,
ToString
ûû, 4
(
ûû4 5
)
ûû5 6
;
ûû6 7
item
üü 	
.
üü	 


ObjectType
üü
 
=
üü 
reader
üü 
[
üü 
$str
üü *
]
üü* +
.
üü+ ,
ToString
üü, 4
(
üü4 5
)
üü5 6
;
üü6 7
item
°° 	
.
°°	 

	TimeStamp
°°
 
=
°° 
DateTime
°° 
.
°° 
Parse
°° $
(
°°$ %
reader
°°% +
[
°°+ ,
$str
°°, :
]
°°: ;
.
°°; <
ToString
°°< D
(
°°D E
)
°°E F
)
°°F G
;
°°G H
item
¢¢ 	
.
¢¢	 

User
¢¢
 
=
¢¢ 
reader
¢¢ 
[
¢¢ 
$str
¢¢ 
]
¢¢ 
.
¢¢  
ToString
¢¢  (
(
¢¢( )
)
¢¢) *
;
¢¢* +
item
§§ 
.
§§ 
Level
§§ 
=
§§  
reader
§§! '
[
§§' (
$str
§§( /
]
§§/ 0
.
§§0 1
ToString
§§1 9
(
§§9 :
)
§§: ;
;
§§; <
Items
¶¶ 

.
¶¶
 
Add
¶¶ 
(
¶¶ 
item
¶¶ 
)
¶¶ 
;
¶¶ 
}
ßß 
}
®® 
public
´´ 	
List
´´
 
<
´´ 
OHResultItem
´´ 
>
´´ 
AsList
´´ #
(
´´# $
)
´´$ %
{
¨¨ 
return
≠≠ 

Items
≠≠ 
;
≠≠ 
}
ÆÆ 
public
∞∞ 	
	DataTable
∞∞
 
AsDataTable
∞∞ 
(
∞∞  
)
∞∞  !
{
±± 
var
≤≤ 
table
≤≤ 
=
≤≤ 
new
≤≤ 
	DataTable
≤≤ 
(
≤≤ 
)
≤≤ 
;
≤≤  
var
¥¥ 
list
¥¥ 
=
¥¥ 
AsList
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 
var
µµ 
columns
µµ 
=
µµ 
list
µµ 
.
µµ 
Select
µµ 
(
µµ 
p
µµ 
=>
µµ  "
p
µµ# $
.
µµ$ %
PropertyName
µµ% 1
)
µµ1 2
.
µµ2 3
Distinct
µµ3 ;
(
µµ; <
)
µµ< =
;
µµ= >
var
∂∂ 

operations
∂∂ 
=
∂∂ 
list
∂∂ 
.
∂∂ 
Select
∂∂  
(
∂∂  !
p
∂∂! "
=>
∂∂# %
p
∂∂& '
.
∂∂' (
OperationID
∂∂( 3
)
∂∂3 4
.
∂∂4 5
Distinct
∂∂5 =
(
∂∂= >
)
∂∂> ?
;
∂∂? @
foreach
∏∏ 
(
∏∏ 
var
∏∏ 
col
∏∏ 
in
∏∏ 
columns
∏∏ 
)
∏∏  
{
ππ 
table
∫∫ 

.
∫∫
 
Columns
∫∫ 
.
∫∫ 
Add
∫∫ 
(
∫∫ 
col
∫∫ 
,
∫∫ 
typeof
∫∫ "
(
∫∫" #
string
∫∫# )
)
∫∫) *
)
∫∫* +
;
∫∫+ ,
}
ªª 
table
ºº 	
.
ºº	 

Columns
ºº
 
.
ºº 
Add
ºº 
(
ºº 
$str
ºº 
,
ºº 
typeof
ºº $
(
ºº$ %
string
ºº% +
)
ºº+ ,
)
ºº, -
;
ºº- .
table
ΩΩ 	
.
ΩΩ	 

Columns
ΩΩ
 
.
ΩΩ 
Add
ΩΩ 
(
ΩΩ 
$str
ΩΩ !
,
ΩΩ! "
typeof
ΩΩ# )
(
ΩΩ) *
string
ΩΩ* 0
)
ΩΩ0 1
)
ΩΩ1 2
;
ΩΩ2 3
if
¿¿ 
(
¿¿ 
Merge
¿¿ 
)
¿¿ 
{
¡¡ 
DataRow
¬¬ 
nrow
¬¬ 
=
¬¬ 
table
¬¬ 
.
¬¬ 
NewRow
¬¬  
(
¬¬  !
)
¬¬! "
;
¬¬" #
foreach
√√ 
(
√√ 
var
√√ 
property
√√ 
in
√√ 
columns
√√ %
)
√√% &
{
ƒƒ 
nrow
≈≈ 

[
≈≈
 
property
≈≈ 
]
≈≈ 
=
≈≈ 
list
≈≈ 
.
≈≈ 
Find
≈≈  
(
≈≈  !
p
≈≈! "
=>
≈≈# %
p
≈≈& '
.
≈≈' (
PropertyName
≈≈( 4
==
≈≈5 7
property
≈≈8 @
)
≈≈@ A
.
≈≈A B
PropertyValue
≈≈B O
;
≈≈O P
}
∆∆ 
OHResultItem
»» 
tItem
»» 
=
»» 
list
»» 
.
»» 
Find
»» #
(
»»# $
p
»»$ %
=>
»»& (
p
»») *
.
»»* +
	TimeStamp
»»+ 4
==
»»5 7
list
»»8 <
.
»»< =
Max
»»= @
(
»»@ A
ml
»»A C
=>
»»D F
ml
»»G I
.
»»I J
	TimeStamp
»»J S
)
»»S T
)
»»T U
;
»»U V
nrow
…… 	
[
……
 
$str
…… 
]
…… 
=
…… 
tItem
…… 
.
…… 
User
…… 
;
……  
nrow
   	
[
  	 

$str
  
 
]
   
=
   
tItem
   
.
   
	TimeStamp
   (
;
  ( )
table
ÃÃ 

.
ÃÃ
 
Rows
ÃÃ 
.
ÃÃ 
Add
ÃÃ 
(
ÃÃ 
nrow
ÃÃ 
)
ÃÃ 
;
ÃÃ 
}
ÕÕ 
else
ŒŒ 
{
œœ 
foreach
–– 
(
–– 
var
–– 
	operation
–– 
in
–– 

operations
–– )
)
––) *
{
—— 
DataRow
““ 
nrow
““ 
=
““ 
table
““ 
.
““ 
NewRow
““ !
(
““! "
)
““" #
;
““# $
var
‘‘ 	
changes
‘‘
 
=
‘‘ 
list
‘‘ 
.
‘‘ 
FindAll
‘‘  
(
‘‘  !
p
‘‘! "
=>
‘‘# %
p
‘‘& '
.
‘‘' (
OperationID
‘‘( 3
==
‘‘4 6
	operation
‘‘7 @
)
‘‘@ A
.
‘‘A B
ToList
‘‘B H
(
‘‘H I
)
‘‘I J
;
‘‘J K
foreach
’’ 
(
’’ 
var
’’ 
change
’’ 
in
’’ 
changes
’’ $
)
’’$ %
{
÷÷ 
nrow
◊◊ 
[
◊◊ 
change
◊◊ 
.
◊◊ 
PropertyName
◊◊ 
]
◊◊  
=
◊◊! "
change
◊◊# )
.
◊◊) *
PropertyValue
◊◊* 7
;
◊◊7 8
}
ÿÿ 
OHResultItem
⁄⁄ 
tItem
⁄⁄ 
=
⁄⁄ 
list
⁄⁄ 
.
⁄⁄  
Find
⁄⁄  $
(
⁄⁄$ %
p
⁄⁄% &
=>
⁄⁄' )
p
⁄⁄* +
.
⁄⁄+ ,
OperationID
⁄⁄, 7
==
⁄⁄8 :
	operation
⁄⁄; D
)
⁄⁄D E
;
⁄⁄E F
nrow
€€ 

[
€€
 
$str
€€ 
]
€€ 
=
€€ 
tItem
€€ 
.
€€ 
User
€€ 
;
€€  
nrow
‹‹ 

[
‹‹
 
$str
‹‹ 
]
‹‹ 
=
‹‹ 
tItem
‹‹ 
.
‹‹  
	TimeStamp
‹‹  )
;
‹‹) *
table
ﬁﬁ 
.
ﬁﬁ 
Rows
ﬁﬁ 
.
ﬁﬁ 
Add
ﬁﬁ 
(
ﬁﬁ 
nrow
ﬁﬁ 
)
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 
}
‡‡ 
return
„„ 

table
„„ 
;
„„ 
}
‰‰ 
public
ÊÊ 	
Object
ÊÊ
 
AsObject
ÊÊ 
(
ÊÊ 
Type
ÊÊ 
type
ÊÊ #
)
ÊÊ# $
{
ÁÁ 
throw
ËË 	
new
ËË
 %
NotImplementedException
ËË %
(
ËË% &
)
ËË& '
;
ËË' (
object
ÎÎ 

obj
ÎÎ 
=
ÎÎ 
	Activator
ÎÎ 
.
ÎÎ 
CreateInstance
ÎÎ )
(
ÎÎ) *
type
ÎÎ* .
)
ÎÎ. /
;
ÎÎ/ 0
foreach
ÌÌ 
(
ÌÌ 
var
ÌÌ 
item
ÌÌ 
in
ÌÌ 
AsList
ÌÌ 
(
ÌÌ  
)
ÌÌ  !
)
ÌÌ! "
{
ÓÓ 
PropertyInfo
ÔÔ 
pInfo
ÔÔ 
=
ÔÔ 
obj
ÔÔ 
.
ÔÔ 
GetType
ÔÔ %
(
ÔÔ% &
)
ÔÔ& '
.
ÔÔ' (
GetProperty
ÔÔ( 3
(
ÔÔ3 4
item
ÔÔ4 8
.
ÔÔ8 9
PropertyName
ÔÔ9 E
)
ÔÔE F
;
ÔÔF G
if
 
(
 	
pInfo
	 
!=
 
null
 
&&
 
pInfo
 
.
  
PropertyType
  ,
.
, -
ToString
- 5
(
5 6
)
6 7
==
8 :
item
; ?
.
? @
PropertyType
@ L
)
L M
{
ÒÒ 
pInfo
ÚÚ 
.
ÚÚ 
SetValue
ÚÚ 
(
ÚÚ 
obj
ÚÚ 
,
ÚÚ 
item
ÚÚ 
.
ÚÚ 
PropertyValue
ÚÚ ,
,
ÚÚ, -
null
ÚÚ. 2
)
ÚÚ2 3
;
ÚÚ3 4
}
ÛÛ 
}
ÙÙ 
return
ˆˆ 

obj
ˆˆ 
;
ˆˆ 
}
˜˜ 
}
¯¯ 
public
˙˙ 
class
˙˙	 
OHResultItem
˙˙ 
{
˚˚ 
public
¸¸ 	
int
¸¸
 
OperationID
¸¸ 
{
¸¸ 
get
¸¸ 
;
¸¸  
set
¸¸! $
;
¸¸$ %
}
¸¸& '
public
˝˝ 
int
˝˝ 
ObjectLogID
˝˝ "
{
˝˝# $
get
˝˝% (
;
˝˝( )
set
˝˝* -
;
˝˝- .
}
˝˝/ 0
public
ˇˇ 
string
ˇˇ 
PropertyName
ˇˇ &
{
ˇˇ' (
get
ˇˇ) ,
;
ˇˇ, -
set
ˇˇ. 1
;
ˇˇ1 2
}
ˇˇ3 4
public
ÄÄ 	
string
ÄÄ
 
PropertyValue
ÄÄ 
{
ÄÄ  
get
ÄÄ! $
;
ÄÄ$ %
set
ÄÄ& )
;
ÄÄ) *
}
ÄÄ+ ,
public
ÅÅ 	
string
ÅÅ
 
PropertyType
ÅÅ 
{
ÅÅ 
get
ÅÅ  #
;
ÅÅ# $
set
ÅÅ% (
;
ÅÅ( )
}
ÅÅ* +
public
ÉÉ 	
string
ÉÉ
 

ObjectName
ÉÉ 
{
ÉÉ 
get
ÉÉ !
;
ÉÉ! "
set
ÉÉ# &
;
ÉÉ& '
}
ÉÉ( )
public
ÑÑ 	
string
ÑÑ
 

ObjectType
ÑÑ 
{
ÑÑ 
get
ÑÑ !
;
ÑÑ! "
set
ÑÑ# &
;
ÑÑ& '
}
ÑÑ( )
public
ÜÜ 	
DateTime
ÜÜ
 
	TimeStamp
ÜÜ 
{
ÜÜ 
get
ÜÜ "
;
ÜÜ" #
set
ÜÜ$ '
;
ÜÜ' (
}
ÜÜ) *
public
áá 	
string
áá
 
User
áá 
{
áá 
get
áá 
;
áá 
set
áá  
;
áá  !
}
áá" #
public
àà 
Guid
àà 
Guid
àà 
{
àà 
get
àà "
;
àà" #
set
àà$ '
;
àà' (
}
àà) *
public
ââ 
string
ââ 
PcName
ââ  
{
ââ! "
get
ââ# &
;
ââ& '
set
ââ( +
;
ââ+ ,
}
ââ- .
public
ää 
string
ää 
Level
ää 
{
ää  !
get
ää" %
;
ää% &
set
ää' *
;
ää* +
}
ää, -
}
ãã 
}
çç 
}éé ü	
QC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Data\OHDbFactory.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
.0 1
Data1 5
{ 
public 
static 
class 
OHDbFactory  
{		 
public 
static	 
OHDbBaseClient 
GetDbClient *
(* +
OHTarget+ 3
target4 :
): ;
{ 
switch 	
(
 
target 
. #
DbProviderInvariantName )
)) *
{ 
case 
$str	 
: 
return 
new 
OHSqlClient 
( 
target "
)" #
;# $
default 
: 
throw 

new 
	Exception 
( 
$str J
+K L
targetM S
.S T#
DbProviderInvariantNameT k
)k l
;l m
} 
} 
} 
} ‘
kC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Exceptions\MissingLogKeyAttributeException.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
{ 
public 
class +
MissingLogKeyAttributeException -
:. /
	Exception0 9
{		 
public +
MissingLogKeyAttributeException	 (
(( )
Type) -
objType. 5
)5 6
: 
base 	
(	 

string
 
. 
Format 
( 
$str l
,l m
objType 
== 
null 
? 
$str 
: 
objType &
.& '
ToString' /
(/ 0
)0 1
)1 2
)2 3
{ 
} 
} 
} ‡
|C:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Exceptions\MultipleXmlConfigurationsForTheSameTypeException.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
{ 
public 
class <
0MultipleXmlConfigurationsForTheSameTypeException >
:? @
SystemA G
.G H
	ExceptionH Q
{		 
public <
0MultipleXmlConfigurationsForTheSameTypeException	 9
(9 :
): ;
: 
base 	
(	 

$str
 H
)H I
{ 
} 
} 
} Ø
LC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\OHAuditInfo.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
{ 
public 
class 
OHAuditInfo 
{ 
public 
string	 
UserName 
{ 
get 
; 
set  #
;# $
}% &
public 
Guid 
Guid 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
PcName 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ∫
OC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\OHPropertyInfo.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
{ 
public 
class 
OHPropertyInfo 
{ 
public 
OHPropertyInfo	 
( 
string 
name #
,# $
string% +
value, 1
,1 2
PropertyInfo3 ?
propInfo@ H
,H I
OHInfoJ P
objInfoQ X
)X Y
{ 
Name 
= 	
name
 
; 
ObjInfo 

= 
ObjInfo 
; 
PropInfo 
= 
propInfo 
; 
Value 
=	 

value 
; 
} 
public 
string	 
Name 
{ 
get 
; 
private #
set$ '
;' (
}) *
public 
string	 
Value 
{ 
get 
; 
private $
set% (
;( )
}* +
public 
string	 
Type 
{ 
get 
{ 
return #
PropInfo$ ,
., -
PropertyType- 9
.9 :
ToString: B
(B C
)C D
;D E
}F G
}H I
public 
OHInfo	 
ObjInfo 
{ 
get 
; 
private &
set' *
;* +
}, -
public 
PropertyInfo	 
PropInfo 
{  
get! $
;$ %
private& -
set. 1
;1 2
}3 4
public 
bool	 
IsKey 
{ 
get 
{ 
return   

ObjInfo   
.   
KeyPropertyName   "
==  # %
Name  & *
;  * +
}!! 
}"" 
}$$ 
}%% ¬¬
QC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\Data\OHSqlClient.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
.0 1
Data1 5
{ 
public 

class 
OHSqlClient 
: 
OHDbBaseClient -
{ 
public 
OHSqlClient 
( 
OHTarget #
target$ *
)* +
: 
base 
( 
target 
) 
{ 	
} 	
public 
override 
bool 
DbSchemaUpdated ,
{ 	
get 
{ 
bool 
result 
= 
false #
;# $
string 
objectsPrefix $
=% &
string' -
.- .
IsNullOrEmpty. ;
(; <
target< B
.B C
DBTablesPrefixC Q
)Q R
?S T
$strU W
:X Y
targetZ `
.` a
DBTablesPrefixa o
;o p
DbProviderFactory !
dbFact" (
=) *
DbProviderFactories+ >
.> ?

GetFactory? I
(I J
targetJ P
.P Q#
DbProviderInvariantNameQ h
)h i
;i j
NpgsqlConnection  
conn! %
=& '
new( +
NpgsqlConnection, <
(< =
)= >
;> ?
conn 
. 
ConnectionString %
=& '
target( .
.. /
ConnectionString/ ?
;? @
NpgsqlCommand   
comm   "
=  # $
new  % (
NpgsqlCommand  ) 6
(  6 7
)  7 8
;  8 9
comm"" 
="" 
conn"" 
."" 
CreateCommand"" )
("") *
)""* +
;""+ ,
comm## 
.## 
CommandType## $
=##% &
System##' -
.##- .
Data##. 2
.##2 3
CommandType##3 >
.##> ?
Text##? C
;##C D
string$$ 
query$$  
=$$! "
$str	$$# å
;
$$å ç
query%% 
=%% 
string%% "
.%%" #
Format%%# )
(%%) *
query%%* /
,%%/ 0
tbl_EventLogs%%1 >
,%%> ?

tbl_Levels%%@ J
,%%J K 
tbl_ObjectLogDetails%%L `
,%%` a
tbl_ObjectLogs%%b p
,%%p q
tbl_Operations	%%r Ä
)
%%Ä Å
;
%%Å Ç
comm'' 
.'' 
CommandText'' $
=''% &
query''' ,
;'', -
conn(( 
.(( 
Open(( 
((( 
)(( 
;(( 
object)) 
qResult)) 
=))  
comm))! %
.))% &
ExecuteScalar))& 3
())3 4
)))4 5
;))5 6
conn** 
.** 
Close** 
(** 
)**  
;**  !
int,, 
count,, 
=,, 
$num,,  !
;,,! "
int-- 
.-- 
TryParse--  
(--  !
qResult--! (
.--( )
ToString--) 1
(--1 2
)--2 3
,--3 4
out--5 8
count--9 >
)--> ?
;--? @
result// 
=// 
(// 
count// #
==//$ &
$num//' (
)//( )
;//) *
return11 
result11 !
;11! "
}33 
}44 	
public66 
override66 
void66 

SaveObject66 '
(66' (
OHInfo66( .
objInfo66/ 6
,666 7
OHTarget668 @
target66A G
)66G H
{77 	
OHSqlClient99 
	sqlClient99 !
=99" #
new99$ '
OHSqlClient99( 3
(993 4
target994 :
)99: ;
;99; <
var:: 
keyPropertyValue::  
=::! "
objInfo::# *
.::* +
LoggableProperties::+ =
.::= >
Find::> B
(::B C
p::C D
=>::E G
p::H I
.::I J
Name::J N
.::N O
Equals::O U
(::U V
objInfo::V ]
.::] ^
KeyPropertyName::^ m
)::m n
)::n o
.::o p
Value::p u
;::u v
List;; 
<;; 
OHResultItem;; 
>;; 
lastVersion;; *
=;;+ ,
	sqlClient;;- 6
.;;6 7
GetLastVersion;;7 E
(;;E F
objInfo;;F M
.;;M N

ObjectType;;N X
,;;X Y
keyPropertyValue;;Z j
);;j k
.;;k l
AsList;;l r
(;;r s
);;s t
;;;t u
DbProviderFactory>> 
dbFact>> $
=>>% &
DbProviderFactories>>' :
.>>: ;

GetFactory>>; E
(>>E F
target>>F L
.>>L M#
DbProviderInvariantName>>M d
)>>d e
;>>e f
NpgsqlConnection?? 
conn?? !
=??" #
new??$ '
NpgsqlConnection??( 8
(??8 9
target??9 ?
.??? @
ConnectionString??@ P
)??P Q
;??Q R
NpgsqlCommandBB 
commBB 
=BB  
newBB! $
NpgsqlCommandBB% 2
(BB2 3
)BB3 4
;BB4 5
commDD 
=DD 
connDD 
.DD 
CreateCommandDD %
(DD% &
)DD& '
;DD' (
commEE 
.EE 
CommandTypeEE 
=EE 
SystemEE %
.EE% &
DataEE& *
.EE* +
CommandTypeEE+ 6
.EE6 7
TextEE7 ;
;EE; <
stringGG 
scriptGG 
=GG 
stringGG "
.GG" #
EmptyGG# (
;GG( )
scriptII 
+=II 
$strII  
;II  !
scriptJJ 
+=JJ 
$strJJ 7
;JJ7 8
scriptKK 
+=KK 
$strKK 6
;KK6 7
scriptLL 
+=LL 
$strLL  
;LL  !
scriptMM 
+=MM 
$str	MM Ä
+
MMÅ Ç
Guid
MMÉ á
.
MMá à
NewGuid
MMà è
(
MMè ê
)
MMê ë
+
MMí ì
$str
MMî ö
+
MMõ ú
Dns
MMù †
.
MM† °
GetHostName
MM° ¨
(
MM¨ ≠
)
MM≠ Æ
+
MMØ ∞
$str
MM± æ
+
MMø ¿
keyPropertyValue
MM¡ —
+
MM“ ”
$str
MM‘ Ü
;
MMÜ á
scriptNN 
+=NN 
$strNN i
+NNj k
objInfoNNl s
.NNs t

ObjectNameNNt ~
+	NN Ä
$str
NNÅ û
+
NNü †
objInfo
NN° ®
.
NN® ©

ObjectType
NN© ≥
.
NN≥ ¥
ToString
NN¥ º
(
NNº Ω
)
NNΩ æ
+
NNø ¿
$str
NN¡ —
;
NN— “
scriptOO 
+=OO 
$strOO 4
;OO4 5
scriptRR 
+=RR 
$strRR V
+RRW X
objInfoRRY `
.RR` a

ObjectNameRRa k
+RRl m
$strRRn t
+RRu v
objInfoRRw ~
.RR~ 
SourceObject	RR ã
+
RRå ç
$str
RRé ¡
;
RR¡ ¬
scriptSS 
+=SS 
$strSS "
;SS" #
scriptTT 
+=TT 
$strTT "
;TT" #
boolWW 

hasChangesWW 
=WW 
falseWW #
;WW# $
foreachXX 
(XX 
varXX 
propXX 
inXX  
objInfoXX! (
.XX( )
LoggablePropertiesXX) ;
)XX; <
{YY 
OHResultItemZZ 
LastVersionPropInfoZZ 0
=ZZ1 2
lastVersionZZ3 >
.ZZ> ?
FindZZ? C
(ZZC D
pZZD E
=>ZZF H
pZZI J
.ZZJ K
PropertyNameZZK W
.ZZW X
EqualsZZX ^
(ZZ^ _
propZZ_ c
.ZZc d
NameZZd h
)ZZh i
)ZZi j
;ZZj k
string[[ 
oldValue[[ 
=[[  !
LastVersionPropInfo[[" 5
==[[6 8
null[[9 =
?[[> ?
null[[@ D
:[[E F
LastVersionPropInfo[[G Z
.[[Z [
PropertyValue[[[ h
;[[h i
string\\ 
newValue\\ 
=\\  !
prop\\" &
.\\& '
Value\\' ,
;\\, -
if^^ 
(^^ 
objInfo^^ 
.^^ 

AppendType^^ &
==^^' )
AppendTypes^^* 5
.^^5 6
Incremental^^6 A
||^^B D
newValue^^E M
!=^^N P
oldValue^^Q Y
)^^Y Z
{__ 

hasChanges`` 
=``  
true``! %
;``% &
stringaa 
dbValueaa "
=aa# $
propaa% )
.aa) *
Valueaa* /
==aa0 2
nullaa3 7
?aa8 9
$straa: @
:aaA B
stringaaC I
.aaI J
FormataaJ P
(aaP Q
$straaQ X
,aaX Y
propaaZ ^
.aa^ _
Valueaa_ d
)aad e
;aae f
scriptbb 
+=bb 
$str	bb Ù
+
bbı ˆ
objInfo
bb˜ ˛
.
bb˛ ˇ
SourceObject
bbˇ ã
+
bbå ç
$str
bbé Ø
+
bb∞ ±
prop
bb≤ ∂
.
bb∂ ∑
Name
bb∑ ª
+
bbº Ω
$str
bbæ √
+
bbƒ ≈
dbValue
bb∆ Õ
+
bbŒ œ
$str
bb– ’
+
bb÷ ◊
prop
bbÿ ‹
.
bb‹ ›
Type
bb› ·
+
bb‚ „
$str
bb‰ È
;
bbÈ Í
}dd 
}ee 
ifgg 
(gg 
!gg 

hasChangesgg 
)gg 
returngg #
;gg# $
commjj 
.jj 
CommandTextjj 
=jj 
stringjj %
.jj% &
Formatjj& ,
(jj, -
scriptjj- 3
,jj3 4
targetjj6 <
.jj< =
DBTablesPrefixjj= K
)jjK L
;jjL M
commmm 
.mm 

Parametersmm 
.mm 
Addmm 
(mm  
newmm  #
NpgsqlParametermm$ 3
(mm3 4
$strmm4 ?
,mm? @
objInfommA H
.mmH I
LoggablePropertiesmmI [
.mm[ \
Findmm\ `
(mm` a
pmma b
=>mmc e
pmmf g
.mmg h
Namemmh l
.mml m
Equalsmmm s
(mms t
objInfommt {
.mm{ |
KeyPropertyName	mm| ã
)
mmã å
)
mmå ç
.
mmç é
Value
mmé ì
)
mmì î
)
mmî ï
;
mmï ñ
commnn 
.nn 

Parametersnn 
.nn 
Addnn 
(nn  
newnn  #
NpgsqlParameternn$ 3
(nn3 4
$strnn4 ;
,nn; <
stringnn= C
.nnC D
IsNullOrEmptynnD Q
(nnQ R
objInfonnR Y
.nnY Z
UsernnZ ^
)nn^ _
?nn` a
stringnnb h
.nnh i
Emptynni n
:nno p
objInfonnq x
.nnx y
Usernny }
)nn} ~
)nn~ 
;	nn Ä
commoo 
.oo 

Parametersoo 
.oo 
Addoo 
(oo  
newoo  #
NpgsqlParameteroo$ 3
(oo3 4
$stroo4 ;
,oo; <
objInfooo= D
.ooD E
GuidooE I
)ooI J
)ooJ K
;ooK L
commpp 
.pp 

Parameterspp 
.pp 
Addpp 
(pp  
newpp  #
NpgsqlParameterpp$ 3
(pp3 4
$strpp4 =
,pp= >
stringpp? E
.ppE F
IsNullOrEmptyppF S
(ppS T
objInfoppT [
.pp[ \
PcNamepp\ b
)ppb c
?ppd e
stringppf l
.ppl m
Emptyppm r
:pps t
objInfoppu |
.pp| }
PcName	pp} É
)
ppÉ Ñ
)
ppÑ Ö
;
ppÖ Ü
commqq 
.qq 

Parametersqq 
.qq 
Addqq 
(qq  
newqq  #
NpgsqlParameterqq$ 3
(qq3 4
$strqq4 @
,qq@ A
objInfoqqB I
.qqI J
	TimeStampqqJ S
)qqS T
)qqT U
;qqU V
commrr 
.rr 

Parametersrr 
.rr 
Addrr 
(rr  
newrr  #
NpgsqlParameterrr$ 3
(rr3 4
$strrr4 A
,rrA B
objInforrC J
.rrJ K

ObjectNamerrK U
)rrU V
)rrV W
;rrW X
commss 
.ss 

Parametersss 
.ss 
Addss 
(ss  
newss  #
NpgsqlParameterss$ 3
(ss3 4
$strss4 A
,ssA B
objInfossC J
.ssJ K

ObjectTypessK U
.ssU V
ToStringssV ^
(ss^ _
)ss_ `
)ss` a
)ssa b
;ssb c
connuu 
.uu 
Openuu 
(uu 
)uu 
;uu 
commvv 
.vv 
ExecuteNonQueryvv  
(vv  !
)vv! "
;vv" #
connxx 
.xx 
Closexx 
(xx 
)xx 
;xx 
}zz 	
public~~ 
override~~ 
OHDbBaseClient~~ &
.~~& '
OHResultList~~' 3
GetLastVersion~~4 B
(~~B C
Type~~C G
objType~~H O
,~~O P
string~~Q W
KeyValue~~X `
)~~` a
{ 	
OHInfo
ÄÄ 
objInfo
ÄÄ 
=
ÄÄ 
new
ÄÄ  
OHInfo
ÄÄ! '
(
ÄÄ' (
objType
ÄÄ( /
,
ÄÄ/ 0
target
ÄÄ1 7
)
ÄÄ7 8
;
ÄÄ8 9
DbProviderFactory
ÅÅ 
dbFact
ÅÅ $
=
ÅÅ% &!
DbProviderFactories
ÅÅ' :
.
ÅÅ: ;

GetFactory
ÅÅ; E
(
ÅÅE F
target
ÅÅF L
.
ÅÅL M%
DbProviderInvariantName
ÅÅM d
)
ÅÅd e
;
ÅÅe f
NpgsqlConnection
ÇÇ 
conn
ÇÇ !
=
ÇÇ" #
new
ÇÇ$ '
NpgsqlConnection
ÇÇ( 8
(
ÇÇ8 9
)
ÇÇ9 :
;
ÇÇ: ;
conn
ÉÉ 
.
ÉÉ 
ConnectionString
ÉÉ !
=
ÉÉ" #
target
ÉÉ$ *
.
ÉÉ* +
ConnectionString
ÉÉ+ ;
;
ÉÉ; <
NpgsqlCommand
ÖÖ 
comm
ÖÖ 
=
ÖÖ  
new
ÖÖ! $
NpgsqlCommand
ÖÖ% 2
(
ÖÖ2 3
)
ÖÖ3 4
;
ÖÖ4 5
comm
ââ 
=
ââ 
conn
ââ 
.
ââ 
CreateCommand
ââ %
(
ââ% &
)
ââ& '
;
ââ' (
comm
ää 
.
ää 
CommandType
ää 
=
ää 
System
ää %
.
ää% &
Data
ää& *
.
ää* +
CommandType
ää+ 6
.
ää6 7
Text
ää7 ;
;
ää; <
comm
ãã 
.
ãã 
CommandText
ãã 
=
ãã 
$str
ãã 4
+
ãã5 6
string
åå 
.
åå 
Format
åå 
(
åå &
SqlClientQueriesResource
åå 5
.
åå5 6#
GetObjectsLastVersion
åå6 K
,
ååK L
this
ååM Q
.
ååQ R
target
ååR X
.
ååX Y
DBTablesPrefix
ååY g
)
ååg h
+
ååi j
$str
çç s
;
ççs t
comm
éé 
.
éé 
CommandText
éé 
=
éé 
string
éé %
.
éé% &
Format
éé& ,
(
éé, -
comm
èè$ (
.
èè( )
CommandText
èè) 4
,
èè4 5
objInfo
êê$ +
.
êê+ ,

ObjectName
êê, 6
,
êê6 7
objInfo
ëë$ +
.
ëë+ ,

ObjectType
ëë, 6
.
ëë6 7
ToString
ëë7 ?
(
ëë? @
)
ëë@ A
,
ëëA B
KeyValue
íí$ ,
.
íí, -
ToString
íí- 5
(
íí5 6
)
íí6 7
)
íí7 8
;
íí8 9
conn
îî 
.
îî 
Open
îî 
(
îî 
)
îî 
;
îî 
OHDbBaseClient
ïï 
.
ïï 
OHResultList
ïï '
list
ïï( ,
=
ïï- .
new
ïï/ 2
OHResultList
ïï3 ?
(
ïï? @
objInfo
ïï@ G
,
ïïG H
comm
ïïI M
.
ïïM N
ExecuteReader
ïïN [
(
ïï[ \
)
ïï\ ]
,
ïï] ^
true
ïï_ c
)
ïïc d
;
ïïd e
conn
ññ 
.
ññ 
Close
ññ 
(
ññ 
)
ññ 
;
ññ 
return
òò 
list
òò 
;
òò 
}
ôô 	
public
õõ 
override
õõ 
OHResultList
õõ $

GetVersion
õõ% /
(
õõ/ 0
Type
õõ0 4
objType
õõ5 <
,
õõ< =
string
õõ> D
keyValue
õõE M
,
õõM N
DateTime
õõO W
date
õõX \
)
õõ\ ]
{
úú 	
OHInfo
ùù 
objInfo
ùù 
=
ùù 
new
ùù  
OHInfo
ùù! '
(
ùù' (
objType
ùù( /
,
ùù/ 0
target
ùù1 7
)
ùù7 8
;
ùù8 9
DbProviderFactory
üü 
dbFact
üü $
=
üü% &!
DbProviderFactories
üü' :
.
üü: ;

GetFactory
üü; E
(
üüE F
target
üüF L
.
üüL M%
DbProviderInvariantName
üüM d
)
üüd e
;
üüe f
NpgsqlConnection
†† 
conn
†† !
=
††" #
new
††$ '
NpgsqlConnection
††( 8
(
††8 9
)
††9 :
;
††: ;
conn
°° 
.
°° 
ConnectionString
°° !
=
°°" #
target
°°$ *
.
°°* +
ConnectionString
°°+ ;
;
°°; <
NpgsqlCommand
££ 
comm
££ 
=
££  
new
££! $
NpgsqlCommand
££% 2
(
££2 3
)
££3 4
;
££4 5
comm
ßß 
=
ßß 
conn
ßß 
.
ßß 
CreateCommand
ßß %
(
ßß% &
)
ßß& '
;
ßß' (
comm
®® 
.
®® 
CommandType
®® 
=
®® 
System
®® %
.
®®% &
Data
®®& *
.
®®* +
CommandType
®®+ 6
.
®®6 7
Text
®®7 ;
;
®®; <
comm
©© 
.
©© 
CommandText
©© 
=
©© 
$str
©© 4
+
©©5 6
string
™™ 
.
™™ 
Format
™™ 
(
™™ &
SqlClientQueriesResource
™™ 5
.
™™5 6#
GetObjectsLastVersion
™™6 K
,
™™K L
this
™™M Q
.
™™Q R
target
™™R X
.
™™X Y
DBTablesPrefix
™™Y g
)
™™g h
+
™™i j
$str
´´ s
;
´´s t
comm
¨¨ 
.
¨¨ 
CommandText
¨¨ 
=
¨¨ 
string
¨¨ %
.
¨¨% &
Format
¨¨& ,
(
¨¨, -
comm
≠≠$ (
.
≠≠( )
CommandText
≠≠) 4
,
≠≠4 5
objInfo
ÆÆ$ +
.
ÆÆ+ ,

ObjectName
ÆÆ, 6
,
ÆÆ6 7
objInfo
ØØ$ +
.
ØØ+ ,

ObjectType
ØØ, 6
.
ØØ6 7
ToString
ØØ7 ?
(
ØØ? @
)
ØØ@ A
,
ØØA B
keyValue
∞∞$ ,
.
∞∞, -
ToString
∞∞- 5
(
∞∞5 6
)
∞∞6 7
)
∞∞7 8
;
∞∞8 9
NpgsqlParameter
≤≤ 
paramMaxDate
≤≤ (
=
≤≤) *
new
≤≤+ .
NpgsqlParameter
≤≤/ >
(
≤≤> ?
)
≤≤? @
;
≤≤@ A
paramMaxDate
≥≥ 
.
≥≥ 
ParameterName
≥≥ &
=
≥≥' (
$str
≥≥) 2
;
≥≥2 3
paramMaxDate
¥¥ 
.
¥¥ 
Value
¥¥ 
=
¥¥  
date
¥¥! %
;
¥¥% &
comm
µµ 
.
µµ 

Parameters
µµ 
.
µµ 
Add
µµ 
(
µµ  
paramMaxDate
µµ  ,
)
µµ, -
;
µµ- .
conn
∑∑ 
.
∑∑ 
Open
∑∑ 
(
∑∑ 
)
∑∑ 
;
∑∑ 
OHDbBaseClient
∏∏ 
.
∏∏ 
OHResultList
∏∏ '
list
∏∏( ,
=
∏∏- .
new
∏∏/ 2
OHResultList
∏∏3 ?
(
∏∏? @
objInfo
∏∏@ G
,
∏∏G H
comm
∏∏I M
.
∏∏M N
ExecuteReader
∏∏N [
(
∏∏[ \
)
∏∏\ ]
,
∏∏] ^
true
∏∏_ c
)
∏∏c d
;
∏∏d e
conn
ππ 
.
ππ 
Close
ππ 
(
ππ 
)
ππ 
;
ππ 
return
ªª 
list
ªª 
;
ªª 
}
ºº 	
public
ææ 
override
ææ 
OHDbBaseClient
ææ &
.
ææ& '
OHResultList
ææ' 3

GetHistory
ææ4 >
(
ææ> ?
Type
ææ? C
objType
ææD K
,
ææK L
string
ææM S
keyValue
ææT \
)
ææ\ ]
{
øø 	
OHInfo
¿¿ 
objInfo
¿¿ 
=
¿¿ 
new
¿¿  
OHInfo
¿¿! '
(
¿¿' (
objType
¿¿( /
,
¿¿/ 0
target
¿¿1 7
)
¿¿7 8
;
¿¿8 9
DbProviderFactory
¡¡ 
dbFact
¡¡ $
=
¡¡% &!
DbProviderFactories
¡¡' :
.
¡¡: ;

GetFactory
¡¡; E
(
¡¡E F
target
¡¡F L
.
¡¡L M%
DbProviderInvariantName
¡¡M d
)
¡¡d e
;
¡¡e f
NpgsqlConnection
¬¬ 
conn
¬¬ !
=
¬¬" #
new
¬¬$ '
NpgsqlConnection
¬¬( 8
(
¬¬8 9
)
¬¬9 :
;
¬¬: ;
conn
√√ 
.
√√ 
ConnectionString
√√ !
=
√√" #
target
√√$ *
.
√√* +
ConnectionString
√√+ ;
;
√√; <
NpgsqlCommand
ƒƒ 
comm
ƒƒ 
=
ƒƒ  
new
ƒƒ! $
NpgsqlCommand
ƒƒ% 2
(
ƒƒ2 3
)
ƒƒ3 4
;
ƒƒ4 5
comm
»» 
=
»» 
conn
»» 
.
»» 
CreateCommand
»» %
(
»»% &
)
»»& '
;
»»' (
comm
…… 
.
…… 
CommandType
…… 
=
…… 
System
…… %
.
……% &
Data
……& *
.
……* +
CommandType
……+ 6
.
……6 7
Text
……7 ;
;
……; <
comm
   
.
   
CommandText
   
=
   
$str
   4
+
  5 6
string
ÀÀ 
.
ÀÀ 
Format
ÀÀ 
(
ÀÀ &
SqlClientQueriesResource
ÀÀ 5
.
ÀÀ5 6#
GetObjectsLastVersion
ÀÀ6 K
,
ÀÀK L
this
ÀÀM Q
.
ÀÀQ R
target
ÀÀR X
.
ÀÀX Y
DBTablesPrefix
ÀÀY g
)
ÀÀg h
+
ÀÀi j
$str
ÃÃ s
;
ÃÃs t
comm
ÕÕ 
.
ÕÕ 
CommandText
ÕÕ 
=
ÕÕ 
string
ÕÕ %
.
ÕÕ% &
Format
ÕÕ& ,
(
ÕÕ, -
comm
ŒŒ  $
.
ŒŒ$ %
CommandText
ŒŒ% 0
,
ŒŒ0 1
objInfo
œœ  '
.
œœ' (

ObjectName
œœ( 2
,
œœ2 3
objInfo
––  '
.
––' (

ObjectType
––( 2
.
––2 3
ToString
––3 ;
(
––; <
)
––< =
,
––= >
keyValue
——  (
)
——( )
;
——) *
conn
”” 
.
”” 
Open
”” 
(
”” 
)
”” 
;
”” 
OHDbBaseClient
‘‘ 
.
‘‘ 
OHResultList
‘‘ '
list
‘‘( ,
=
‘‘- .
new
‘‘/ 2
OHResultList
‘‘3 ?
(
‘‘? @
objInfo
‘‘@ G
,
‘‘G H
comm
‘‘I M
.
‘‘M N
ExecuteReader
‘‘N [
(
‘‘[ \
)
‘‘\ ]
,
‘‘] ^
false
‘‘_ d
)
‘‘d e
;
‘‘e f
conn
’’ 
.
’’ 
Close
’’ 
(
’’ 
)
’’ 
;
’’ 
return
◊◊ 
list
◊◊ 
;
◊◊ 
}
ÿÿ 	
public
⁄⁄ 
override
⁄⁄ 
string
⁄⁄ $
DbScriptsContainerPath
⁄⁄ 5
{
€€ 	
get
‹‹ 
{
‹‹ 
return
‹‹ 
$str
‹‹ R
;
‹‹R S
}
‹‹T U
}
›› 	
}
ﬁﬁ 
}ﬂﬂ ﬁ5
IC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\OHTarget.cs
	namespace

 	
App


 
.

 
Logger

 
.

 
Targets

 
.

 
ObjectHistoryLogger

 0
{ 
[ 
Target 
( 	
$str	 
) 
] 
public 
sealed 
class 
OHTarget 
: 
NLog  $
.$ %
Targets% ,
., -
TargetWithLayout- =
{ 
public 
string #
DbProviderInvariantName -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string 
ConnectionString &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
DBTablesPrefix $
{% &
get' *
;* +
set, /
;/ 0
}1 2
bool 
_autoCreateDatabase  
=! "
false# (
;( )
public 
bool 
AutoCreateDatabase &
{ 	
get 
{ 
return 
_autoCreateDatabase ,
;, -
}. /
set 
{ 
_autoCreateDatabase %
=& '
value( -
;- .
}/ 0
} 	
public   
string   
LogTypes   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
	protected## 
override## 
void## 
Write##  %
(##% &
NLog##& *
.##* +
LogEventInfo##+ 7
logEvent##8 @
)##@ A
{$$ 	$
ValidateMandatoryOptions%% $
(%%$ %
)%%% &
;%%& '
if'' 
('' 
AutoCreateDatabase'' "
)''" #
CreateDatabase(( 
((( 
)((  
;((  !
List** 
<** 
OHInfo** 
>** 
objectsToLog** %
=**& '
new**( +
List**, 0
<**0 1
OHInfo**1 7
>**7 8
(**8 9
)**9 :
;**: ;
OHAuditInfo++ 
	auditInfo++ !
=++" #
null++$ (
;++( )
if,, 
(,, 
logEvent,, 
.,, 

Parameters,, #
!=,,$ &
null,,' +
&&,,, .
logEvent,,/ 7
.,,7 8

Parameters,,8 B
.,,B C
Length,,C I
>,,J K
$num,,L M
),,M N
{-- 
for.. 
(.. 
int.. 
p.. 
=.. 
$num.. 
;.. 
p..  !
<.." #
logEvent..$ ,
..., -

Parameters..- 7
...7 8
Length..8 >
;..> ?
p..@ A
++..A C
)..C D
{// 
if00 
(00 
logEvent00  
.00  !

Parameters00! +
[00+ ,
p00, -
]00- .
is00/ 1
OHAuditInfo002 =
)00= >
{11 
	auditInfo22 !
=22" #
(22$ %
OHAuditInfo22% 0
)220 1
logEvent221 9
.229 :

Parameters22: D
[22D E
p22E F
]22F G
;22G H
}33 
else44 
{55 
OHInfo66 
info66 #
=66$ %
new66& )
OHInfo66* 0
(660 1
logEvent661 9
.669 :

Parameters66: D
[66D E
p66E F
]66F G
,66G H
this66I M
)66M N
;66N O
if77 
(77 
info77  
.77  !

IsLoggable77! +
)77+ ,
{88 
objectsToLog99 (
.99( )
Add99) ,
(99, -
info99- 1
)991 2
;992 3
}:: 
};; 
}<< 
Data>> 
.>> 
OHDbBaseClient>> #
dbClient>>$ ,
=>>- .
OHDbFactory>>/ :
.>>: ;
GetDbClient>>; F
(>>F G
this>>G K
)>>K L
;>>L M
for@@ 
(@@ 
int@@ 
i@@ 
=@@ 
$num@@ 
;@@ 
i@@  !
<@@" #
objectsToLog@@$ 0
.@@0 1
Count@@1 6
;@@6 7
i@@8 9
++@@9 ;
)@@; <
{AA 
ifBB 
(BB 
	auditInfoBB !
!=BB" $
nullBB% )
)BB) *
{CC 
objectsToLogDD $
[DD$ %
iDD% &
]DD& '
.DD' (
UserDD( ,
=DD- .
	auditInfoDD/ 8
.DD8 9
UserNameDD9 A
;DDA B
}EE 
dbClientFF 
.FF 

SaveObjectFF '
(FF' (
objectsToLogFF( 4
[FF4 5
iFF5 6
]FF6 7
,FF7 8
thisFF9 =
)FF= >
;FF> ?
}GG 
}II 
stringKK 
csKK 
=KK 
ConnectionStringKK (
;KK( )
}MM 	
publicNN 
voidNN $
ValidateMandatoryOptionsNN ,
(NN, -
)NN- .
{OO 	
ifPP 
(PP 
stringPP 
.PP 
IsNullOrEmptyPP $
(PP$ %
ConnectionStringPP% 5
)PP5 6
)PP6 7
{QQ 
throwRR 
newRR 
	ExceptionRR #
(RR# $
$strRR$ Y
)RRY Z
;RRZ [
}SS 
ifUU 
(UU 
stringUU 
.UU 
IsNullOrEmptyUU $
(UU$ %#
DbProviderInvariantNameUU% <
)UU< =
)UU= >
{VV 
throwWW 
newWW 
	ExceptionWW #
(WW# $
$strWW$ `
)WW` a
;WWa b
}XX 
}ZZ 	
public\\ 
void\\ 
CreateDatabase\\ "
(\\" #
)\\# $
{]] 	$
ValidateMandatoryOptions__ $
(__$ %
)__% &
;__& '
Data`` 
.`` 
OHDbBaseClient`` 
dbClient``  (
=``) *
OHDbFactory``+ 6
.``6 7
GetDbClient``7 B
(``B C
this``C G
)``G H
;``H I
dbClientaa 
.aa 
CreateDBSchemaaa #
(aa# $
)aa$ %
;aa% &
}bb 	
publicdd 
XMLConfigurationdd 
XmlConfigurationdd  0
(dd0 1
)dd1 2
{ee 	
returnff 
newff 
XMLConfigurationff '
(ff' (
thisff( ,
)ff, -
;ff- .
}gg 	
}jj 
}kk åç
GC:\Users\YEK\Desktop\d\App.Logger\Targets\ObjectHistoryLogger\OHInfo.cs
	namespace 	
App
 
. 
Logger 
. 
Targets 
. 
ObjectHistoryLogger 0
{		 
public

 

class

 
OHInfo

 
{ 
Object 
_obj 
= 
null 
; 
public 
OHInfo 
( 
object 
obj  
,  !
OHTarget" *
target+ 1
)1 2
{ 	
_obj 
= 
obj 
; 
Target 
= 
target 
; 
if 
( 
obj 
!= 
null 
) 
{ 

ObjectType 
= 
obj  
.  !
GetType! (
(( )
)) *
;* +
} 
	TimeStamp 
= 
DateTime  
.  !
Now! $
;$ %
InspectObject 
( 
_obj 
. 
GetType &
(& '
)' (
)( )
;) *
} 	
public 
OHInfo 
( 
object 
obj  
,  !
string" (
user) -
,- .
OHTarget/ 7
target8 >
)> ?
: 
this 
( 
obj 
, 
target 
) 
{   	
User!! 
=!! 
user!! 
;!! 
}"" 	
public$$ 
OHInfo$$ 
($$ 
Type$$ 
objType$$ "
,$$" #
OHTarget$$$ ,
target$$- 3
)$$3 4
{%% 	

ObjectType&& 
=&& 
objType&&  
;&&  !
Target'' 
='' 
target'' 
;'' 
InspectObject(( 
((( 
objType(( !
)((! "
;((" #
})) 	
public,, 
OHTarget,, 
Target,, 
{,,  
get,,! $
;,,$ %
private,,& -
set,,. 1
;,,1 2
},,3 4
public// 
Object// 
SourceObject// "
{//# $
get//% (
{//) *
return//+ 1
_obj//2 6
;//6 7
}//8 9
}//: ;
Type11 
_objectType11 
=11 
null11 
;11  
public33 
Type33 

ObjectType33 
{44 	
get55 
{66 
return77 
_objectType77 "
;77" #
}88 
private99 
set99 
{:: 
_objectType;; 
=;; 
value;; #
;;;# $
}<< 
}== 	
public?? 
DateTime?? 
	TimeStamp?? !
{??" #
get??$ '
;??' (
private??) 0
set??1 4
;??4 5
}??6 7
publicAA 
stringAA 

ObjectNameAA  
{AA! "
getAA# &
;AA& '
privateAA( /
setAA0 3
;AA3 4
}AA5 6
publicDD 
boolDD 

IsLoggableDD 
{DD  
getDD! $
;DD$ %
privateDD& -
setDD. 1
;DD1 2
}DD3 4
publicFF 
stringFF 
KeyPropertyNameFF %
{FF& '
getFF( +
;FF+ ,
privateFF- 4
setFF5 8
;FF8 9
}FF: ;
publicII 
AppendTypesII 

AppendTypeII %
{II& '
getII( +
;II+ ,
setII- 0
;II0 1
}II2 3
ListKK 
<KK 
OHPropertyInfoKK 
>KK 
_loggablePropertiesKK 0
=KK1 2
nullKK3 7
;KK7 8
publicMM 
ListMM 
<MM 
OHPropertyInfoMM "
>MM" #
LoggablePropertiesMM$ 6
{NN 	
getOO 
{PP 
ifQQ 
(QQ 
_loggablePropertiesQQ '
==QQ( *
nullQQ+ /
)QQ/ 0
_loggablePropertiesRR '
=RR( )
newRR* -
ListRR. 2
<RR2 3
OHPropertyInfoRR3 A
>RRA B
(RRB C
)RRC D
;RRD E
returnTT 
_loggablePropertiesTT *
;TT* +
}UU 
privateVV 
setVV 
{WW 
_loggablePropertiesXX #
=XX$ %
valueXX& +
;XX+ ,
}YY 
}ZZ 	
public]] 
string]] 
User]] 
{]] 
get]]  
;]]  !
set]]" %
;]]% &
}]]' (
public^^ 
Guid^^ 
Guid^^ 
{^^ 
get^^ 
;^^ 
set^^  #
;^^# $
}^^% &
public__ 
string__ 
PcName__ 
{__ 
get__ "
;__" #
set__$ '
;__' (
}__) *
publiccc 
stringcc 
GetXMLcc 
(cc 
)cc 
{dd 	
Systemee 
.ee 
IOee 
.ee 
StringWriteree "
strWee# '
=ee( )
newee* -
Systemee. 4
.ee4 5
IOee5 7
.ee7 8
StringWriteree8 D
(eeD E
)eeE F
;eeF G
usingff 
(ff 
Systemff 
.ff 
Xmlff 
.ff 
XmlTextWriterff +
xmlff, /
=ff0 1
newff2 5
Systemff6 <
.ff< =
Xmlff= @
.ff@ A
XmlTextWriterffA N
(ffN O
strWffO S
)ffS T
)ffT U
{gg 
xmlhh 
.hh 
WriteStartDocumenthh &
(hh& '
)hh' (
;hh( )
xmlii 
.ii 
WriteStartElementii %
(ii% &

ObjectNameii& 0
)ii0 1
;ii1 2
xmlnn 
.nn 
WriteStartElementnn %
(nn% &
$strnn& 3
)nn3 4
;nn4 5
xmloo 
.oo  
WriteAttributeStringoo (
(oo( )
$stroo) /
,oo/ 0
typeofoo1 7
(oo7 8
DateTimeoo8 @
)oo@ A
.ooA B
ToStringooB J
(ooJ K
)ooK L
)ooL M
;ooM N
xmlpp 
.pp  
WriteAttributeStringpp (
(pp( )
$strpp) 0
,pp0 1
	TimeStamppp2 ;
.pp; <
ToStringpp< D
(ppD E
)ppE F
)ppF G
;ppG H
xmlrr 
.rr 
WriteEndElementrr #
(rr# $
)rr$ %
;rr% &
LoggablePropertiesxx "
.xx" #
ForEachxx# *
(xx* +
propxx+ /
=>xx0 2
{yy 
xmlzz 
.zz 
WriteStartElementzz )
(zz) *
propzz* .
.zz. /
Namezz/ 3
)zz3 4
;zz4 5
xml{{ 
.{{  
WriteAttributeString{{ ,
({{, -
$str{{- 3
,{{3 4
prop{{5 9
.{{9 :
PropInfo{{: B
.{{B C
PropertyType{{C O
.{{O P
ToString{{P X
({{X Y
){{Y Z
){{Z [
;{{[ \
xml|| 
.||  
WriteAttributeString|| ,
(||, -
$str||- 4
,||4 5
prop||6 :
.||: ;
Value||; @
)||@ A
;||A B
xml~~ 
.~~ 
WriteEndElement~~ '
(~~' (
)~~( )
;~~) *
} 
) 
; 
xml
ÉÉ 
.
ÉÉ 
WriteEndElement
ÉÉ #
(
ÉÉ# $
)
ÉÉ$ %
;
ÉÉ% &
xml
ÑÑ 
.
ÑÑ 
WriteEndDocument
ÑÑ $
(
ÑÑ$ %
)
ÑÑ% &
;
ÑÑ& '
xml
ÜÜ 
.
ÜÜ 
Flush
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ 
xml
áá 
.
áá 
Close
áá 
(
áá 
)
áá 
;
áá 
}
àà 
strW
ää 
.
ää 
Dispose
ää 
(
ää 
)
ää 
;
ää 
return
ìì 
strW
ìì 
.
ìì 
ToString
ìì  
(
ìì  !
)
ìì! "
;
ìì" #
}
îî 	
private
ññ 
void
ññ 
InspectObject
ññ "
(
ññ" #
Type
ññ# '
objType
ññ( /
)
ññ/ 0
{
óó 	
if
ôô 
(
ôô 
!
ôô *
InspectObject_UsingXmlConfig
ôô -
(
ôô- .
objType
ôô. 5
)
ôô5 6
)
ôô6 71
#InspectObject_UsingAttributesConfig
öö 3
(
öö3 4
objType
öö4 ;
)
öö; <
;
öö< =
}
õõ 	
private
ùù 
bool
ùù *
InspectObject_UsingXmlConfig
ùù 1
(
ùù1 2
Type
ùù2 6
objType
ùù7 >
)
ùù> ?
{
ûû 	
bool
üü 
retval
üü 
=
üü 
false
üü 
;
üü  "
XMLTypeConfiguration
°°  
cfg
°°! $
=
°°% &
Target
°°' -
.
°°- .
XmlConfiguration
°°. >
(
°°> ?
)
°°? @
.
°°@ A"
GetTypeConfiguration
°°A U
(
°°U V
objType
°°V ]
)
°°] ^
;
°°^ _
if
¢¢ 
(
¢¢ 
cfg
¢¢ 
==
¢¢ 
null
¢¢ 
)
¢¢ 
{
££ 

IsLoggable
§§ 
=
§§ 
false
§§ "
;
§§" #
}
•• 
else
¶¶ 
{
ßß 

IsLoggable
®® 
=
®® 
true
®® !
;
®®! "
retval
©© 
=
©© 
true
©© 
;
©© 

ObjectName
´´ 
=
´´ 
objType
´´ $
.
´´$ %
FullName
´´% -
;
´´- .

AppendType
¨¨ 
=
¨¨ 
AppendTypes
¨¨ (
.
¨¨( )
Differential
¨¨) 5
;
¨¨5 6
if
ØØ 
(
ØØ 
!
ØØ 
string
ØØ 
.
ØØ 
IsNullOrEmpty
ØØ )
(
ØØ) *
cfg
ØØ* -
.
ØØ- .
KeyProperty
ØØ. 9
)
ØØ9 :
)
ØØ: ;
{
∞∞ 
KeyPropertyName
±± #
=
±±$ %
cfg
±±& )
.
±±) *
KeyProperty
±±* 5
;
±±5 6
if
≤≤ 
(
≤≤ 
!
≤≤ 
cfg
≤≤ 
.
≤≤ 

Properties
≤≤ '
.
≤≤' (
Contains
≤≤( 0
(
≤≤0 1
KeyPropertyName
≤≤1 @
)
≤≤@ A
)
≤≤A B
{
≥≥ 
cfg
¥¥ 
.
¥¥ 

Properties
¥¥ &
.
¥¥& '
Add
¥¥' *
(
¥¥* +
KeyPropertyName
¥¥+ :
)
¥¥: ;
;
¥¥; <
}
µµ 
}
∂∂ 
for
∏∏ 
(
∏∏ 
int
∏∏ 
i
∏∏ 
=
∏∏ 
$num
∏∏ 
;
∏∏ 
i
∏∏  !
<
∏∏" #
cfg
∏∏$ '
.
∏∏' (

Properties
∏∏( 2
.
∏∏2 3
Count
∏∏3 8
;
∏∏8 9
i
∏∏: ;
++
∏∏; =
)
∏∏= >
{
ππ 
PropertyInfo
∫∫  
prop
∫∫! %
=
∫∫& '
objType
∫∫( /
.
∫∫/ 0
GetProperty
∫∫0 ;
(
∫∫; <
cfg
∫∫< ?
.
∫∫? @

Properties
∫∫@ J
[
∫∫J K
i
∫∫K L
]
∫∫L M
)
∫∫M N
;
∫∫N O
if
ªª 
(
ªª 
prop
ªª 
!=
ªª 
null
ªª  $
)
ªª$ %
{
ºº 
string
ΩΩ 
	propValue
ΩΩ (
=
ΩΩ) *
string
ΩΩ+ 1
.
ΩΩ1 2
Empty
ΩΩ2 7
;
ΩΩ7 8
if
ææ 
(
ææ 
_obj
ææ  
!=
ææ! #
null
ææ$ (
)
ææ( )
{
øø 
object
¿¿ "
_v
¿¿# %
=
¿¿& '
prop
¿¿( ,
.
¿¿, -
GetValue
¿¿- 5
(
¿¿5 6
_obj
¿¿6 :
,
¿¿: ;
null
¿¿< @
)
¿¿@ A
;
¿¿A B
	propValue
¡¡ %
=
¡¡& '
_v
¡¡( *
==
¡¡+ -
null
¡¡. 2
?
¡¡3 4
null
¡¡5 9
:
¡¡: ;
_v
¡¡< >
.
¡¡> ?
ToString
¡¡? G
(
¡¡G H
)
¡¡H I
;
¡¡I J
}
¬¬  
LoggableProperties
ƒƒ *
.
ƒƒ* +
Add
ƒƒ+ .
(
ƒƒ. /
new
ƒƒ/ 2
OHPropertyInfo
ƒƒ3 A
(
ƒƒA B
prop
ƒƒB F
.
ƒƒF G
Name
ƒƒG K
,
ƒƒK L
	propValue
ƒƒM V
,
ƒƒV W
prop
ƒƒX \
,
ƒƒ\ ]
this
ƒƒ^ b
)
ƒƒb c
)
ƒƒc d
;
ƒƒd e
}
≈≈ 
}
∆∆ 
}
«« 
return
…… 
retval
…… 
;
…… 
}
   	
private
ÃÃ 
bool
ÃÃ 1
#InspectObject_UsingAttributesConfig
ÃÃ 8
(
ÃÃ8 9
Type
ÃÃ9 =
objType
ÃÃ> E
)
ÃÃE F
{
ÕÕ 	
bool
ŒŒ 
retval
ŒŒ 
=
ŒŒ 
false
ŒŒ 
;
ŒŒ  
foreach
–– 
(
–– 
var
–– 
attr
–– 
in
––  
objType
––! (
.
––( )!
GetCustomAttributes
––) <
(
––< =
true
––= A
)
––A B
)
––B C
{
—— 
if
““ 
(
““ 
attr
““ 
is
““ 
LogAttribute
““ (
)
““( )
{
”” 
retval
‘‘ 
=
‘‘ 
true
‘‘ !
;
‘‘! "

IsLoggable
÷÷ 
=
÷÷  
true
÷÷! %
;
÷÷% &

ObjectName
◊◊ 
=
◊◊  
(
◊◊! "
(
◊◊" #
LogAttribute
◊◊# /
)
◊◊/ 0
attr
◊◊0 4
)
◊◊4 5
.
◊◊5 6

MappedName
◊◊6 @
;
◊◊@ A
if
ÿÿ 
(
ÿÿ 
string
ÿÿ 
.
ÿÿ 
IsNullOrEmpty
ÿÿ ,
(
ÿÿ, -

ObjectName
ÿÿ- 7
)
ÿÿ7 8
)
ÿÿ8 9
{
ŸŸ 

ObjectName
⁄⁄ "
=
⁄⁄# $
objType
⁄⁄% ,
.
⁄⁄, -
FullName
⁄⁄- 5
;
⁄⁄5 6
}
€€ 

AppendType
›› 
=
››  
(
››! "
(
››" #
LogAttribute
››# /
)
››/ 0
attr
››0 4
)
››4 5
.
››5 6

AppendType
››6 @
;
››@ A
var
‡‡ 
props
‡‡ 
=
‡‡ 
objType
‡‡  '
.
‡‡' (
GetProperties
‡‡( 5
(
‡‡5 6
)
‡‡6 7
;
‡‡7 8
foreach
·· 
(
·· 
var
··  
prop
··! %
in
··& (
props
··) .
)
··. /
{
‚‚ 
foreach
„„ 
(
„„  !
var
„„! $
pAttr
„„% *
in
„„+ -
prop
„„. 2
.
„„2 3!
GetCustomAttributes
„„3 F
(
„„F G
true
„„G K
)
„„K L
)
„„L M
{
‰‰ 
if
ÂÂ 
(
ÂÂ  
pAttr
ÂÂ  %
is
ÂÂ& (
LogKeyAttribute
ÂÂ) 8
)
ÂÂ8 9
{
ÊÊ 
KeyPropertyName
ÁÁ  /
=
ÁÁ0 1
prop
ÁÁ2 6
.
ÁÁ6 7
Name
ÁÁ7 ;
;
ÁÁ; <
}
ËË 
if
ÍÍ 
(
ÍÍ  
pAttr
ÍÍ  %
is
ÍÍ& ("
LogPropertyAttribute
ÍÍ) =
)
ÍÍ= >
{
ÎÎ 
string
ÌÌ  &
propName
ÌÌ' /
=
ÌÌ0 1
(
ÌÌ2 3
(
ÌÌ3 4"
LogPropertyAttribute
ÌÌ4 H
)
ÌÌH I
pAttr
ÌÌI N
)
ÌÌN O
.
ÌÌO P

MappedName
ÌÌP Z
;
ÌÌZ [
if
ÓÓ  "
(
ÓÓ# $
string
ÓÓ$ *
.
ÓÓ* +
IsNullOrEmpty
ÓÓ+ 8
(
ÓÓ8 9
propName
ÓÓ9 A
)
ÓÓA B
)
ÓÓB C
{
ÔÔ  !
propName
$ ,
=
- .
prop
/ 3
.
3 4
Name
4 8
;
8 9
}
ÒÒ  !
string
ÙÙ  &
	propValue
ÙÙ' 0
=
ÙÙ1 2
string
ÙÙ3 9
.
ÙÙ9 :
Empty
ÙÙ: ?
;
ÙÙ? @
if
ıı  "
(
ıı# $
_obj
ıı$ (
!=
ıı) +
null
ıı, 0
)
ıı0 1
{
ˆˆ  !
object
˜˜$ *
_v
˜˜+ -
=
˜˜. /
prop
˜˜0 4
.
˜˜4 5
GetValue
˜˜5 =
(
˜˜= >
_obj
˜˜> B
,
˜˜B C
null
˜˜D H
)
˜˜H I
;
˜˜I J
	propValue
¯¯$ -
=
¯¯. /
_v
¯¯0 2
==
¯¯3 5
null
¯¯6 :
?
¯¯; <
null
¯¯= A
:
¯¯B C
_v
¯¯D F
.
¯¯F G
ToString
¯¯G O
(
¯¯O P
)
¯¯P Q
;
¯¯Q R
}
˘˘  ! 
LoggableProperties
¸¸  2
.
¸¸2 3
Add
¸¸3 6
(
¸¸6 7
new
¸¸7 :
OHPropertyInfo
¸¸; I
(
¸¸I J
propName
¸¸J R
,
¸¸R S
	propValue
¸¸T ]
,
¸¸] ^
prop
¸¸_ c
,
¸¸c d
this
¸¸e i
)
¸¸i j
)
¸¸j k
;
¸¸k l
}
˝˝ 
}
˛˛ 
}
ˇˇ 
if
ÇÇ 
(
ÇÇ 
string
ÇÇ 
.
ÇÇ 
IsNullOrEmpty
ÇÇ ,
(
ÇÇ, -
KeyPropertyName
ÇÇ- <
)
ÇÇ< =
)
ÇÇ= >
{
ÉÉ 
throw
ÑÑ 
new
ÑÑ !-
MissingLogKeyAttributeException
ÑÑ" A
(
ÑÑA B
objType
ÑÑB I
)
ÑÑI J
;
ÑÑJ K
}
ÖÖ 
}
áá 
}
àà 
return
ää 
retval
ää 
;
ää 
}
ãã 	
}
çç 
}éé 