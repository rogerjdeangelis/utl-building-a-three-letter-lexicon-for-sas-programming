Building a three letter acronym lexicon for sas programming


github
https://tinyurl.com/yc2gcxyx
https://github.com/rogerjdeangelis/utl-building-a-three-letter-lexicon-for-sas-programming


Triple Letter Acronyms(TLAs) provide better readability, meta data and function
===============================================================================

Here are various variable names for an adverse action end date.

ADVERSE ACTION END DATE

 AESPDT
 AESTPDT
 AEEND
 AEENDT
 AEENDATE
 AEFINALDT

I suggest programmers consider using just one TLA hierachy
for adverse action end date. Does not have to be this one.

               Use this
 Common        or your hierachy

 AESPDT        aevDteEnd
 AESTPDT       aevDteEnd
 AEEND         aevDteEnd
 AEENDT        aevDteEnd
 AEENDATE      aevDteEnd
 AEFINALDT     aevDteEnd


Note the use of TLAs in arrays, ':' and varlist macro.

array aevs    aev:;
array aevDtes aevDte::;

* list of aev variables;
%let aevs = %varlist(work.aev,prx=/aev/i)

%array(aevs,values=%varlist(work.aev,prx=/aev/i))


TLAs FOR EMAILS, DIRECTORY STRUCTURE, TABLE NAMES
===================================================

I do not use my lexicon when I feel it hinders understanding 80/20 use/not use */
All my filenames, intermediate sas datasets and even EMAILs take advantage of
my dictionary.

Build your own dictionary and stick with it, give a copy to your validation
programmer. Using consistent naming conventions can make your programs easier
for you and others to understand. It also seems to improve productivity.
run;


EMAIL  (JCN is critical)
=========================

 Subject: JCN Journal of Nephrology Paper : Abstract


TABLE NAMES
===========

proc transpose data=DemNrm out=DemXpo; /* I always use Xpo for transposed datasets */
by patient;
var answer;
id question;
run;

data DemFat1st; /* could be DemNrm1st */
set DemXpo;
/* do something */
run;

Proc sort data=DemFat1st out=DemFatSrt;
by Pat;
run;


DIRECTORY
=========

    D:\JCN
     |
     +---pdf
     |   |
     |   +-- jcn_expBas.pdf
     |
     +---png
     |
     +---sav    ** SPSS data
     |
     +---shp    ** Census shapfiles
     |
     +---txt
     |
     +---vdo    ** Data Vaidation and Verification
     |
     +---xls    ** excel
     |
     \---zip

     jcn_dem.sas7bdat   ** in the root
     jcn_exp.sas7bdat


DICTIONARY
==========

GLOBAL TLAs
-----------

There are letters in english that sound the same. These are useful for
building unique TLAs

y and i
d and e, t, z, v and p

There are many combinations of letters that can be replaced with one letter zro and zero

Three letter variable names

Pid Study + Patient
Pat Patient
Sty Study
Cnr Center

Itt Intend to Treat
Saf Safety Set

Xpo Transpose
Srt Sort
Nrm Normalize (make long and skinny)
Fat Denormalize

Hgt Height
Wgt Weight

Syt Site
Tym Time
Nyn Nine

Die Died or Death

Zro Zero

Beg Begin or Start
End Stop or End

Bas Base AgeBas for baseline age

Min Minimum
Max Maximum
Ave
Sum
Std
Sde Standard Error
Q02 Q3
Q03 Q4
P95
P05

1st First (almost allways a suffix )
2nd
3rd
4th
5th

one
two
tre
for
fiv
six
sev
egt
nyn

Dte Date (Not DT)
Bf4 Before
Aft After

Exp - Exposure
Lab - Laboratory
Eos - End of Studt
Eot - End of Treatment
Dem - Demographics


Current Use          Sugested             Definition

FIFTH                5th                  Fifth
ABSOLUTE             Abs                  Absolute Value
AGE                  Age                  Age
AMOUNT               Amt                  Amount
ANC                  Anc                  Anc Neutrophil Count Lab
ANNOTATE             Ano                  Annotate
ANS                  Ans                  Answer
AUC                  Auc                  Area Under Curve
MEAN                 Ave                  Mean
START                Beg                  Start or Begin
BMI                  Bmi                  Body Mass Index
CPR                  Cpr                  CPR  Cardio Pulmonary Resusitation
CRE                  Cre                  Creatinine Lab Test
CRT                  Crt                  Case Report Tabulation - Analysis Dataset
CSR                  Csr                  Clinical Study Report
CYCLE                Cyc                  Study Cycle
DEGREE               Deg                  Death Date
DELETE               Del                  Delete
DEM                  Dem                  Demographics
STOP                 End                  End
EPT                  Ept                  Ept Lab Test
ERR                  Err                  Error
EXAM                 Exm                  Exam
FEV                  Fev                  Forced Expiratory Volume
FSH                  Fsh                  Follicle Stimulating Hormone
GFR                  Gfr                  Glomerular Filtratn Rate
ITT                  Itt                  Intend to Treat
KET                  KET                  Keytone Lab Test
KTV                  Ktv                  Kt/V
LAB                  Lab                  Laboratory
LAG                  Lag                  Lab
MCS                  Mcs                  SF36 Mental Score
MEDIAN               Med                  Median
MIF                  Mif                  Myocardial Infarction
MSG                  Msg                  Message
NDA                  Nda                  New Drug Application
NIH                  Nih                  National Institute of Health
OLD                  Old                  Old
OMO                  Omo                  Serum Osmolality
PCS                  Pcs                  SF36 Physical Score
PAGE                 Pge                  Page
PHASEI               Ph1                  Phase I
PHASEII              Ph2                  Phase II
PHASEIII             Ph3                  Phase III
PHASEIV              Ph4                  Phase IV
PHASE                Pha                  Phase
PLA                  Pla                  Platelets
POP                  Pop                  Population
PVD                  Pvd                  Peripheral Vascular Disease
QTR                  Qtr                  Quarter
QUESTION             Que                  Question
RBC                  Rbc                  Red Blood Cell Count
SAF                  Saf                  Safety
SAP                  Sap                  Statistical Analysis Plan
GENDER               Sex                  Sex
STDEV                Std                  Standard Deviation
SUM                  Sum                  Sum
PILL                 Pil                  Tablet
TABLET               Tab                  Tablet or Pill
THM                  Thm                  Prothrombin
TEMP                 Tmp                  Temporary
TOP                  Top                  Top
TOX                  Tox                  Toxin or Toxicity
TSH                  Tsh                  Serum Thyroid Stimulating Hormone
TTF                  Ttf                  Free Testosterone
TTT                  Ttt                  Total Testosterone
USED                 Use                  Zero or One Flag to indicate use of drug
WBC                  Wbc                  White Blood Count
WIDTH                Wdt                  Width
CROSSOVR             Xvr                  Cross Over


COMPOUND TLAs
==============


ADULTFEMALE    FemAdu  === Should put Sex first, especially if you suspect Seniors and Children
CHILDFEMALE    FemChi
SENIORFEMALE   FemSen

RANGEINAGE     AgeRngYrs  /* Reverse this one and add units  */
AGESRCE        AgeSrc     /* Source */

DRGSTDT        DrgBegDte
DRGSTOP        DrgEndDte

HGBWEEK        HgbWekAve  /* I think it is very important to add Ave or Tot or Cum on the end */

CTRFEM         CnrFemCnt  /* Cnr is Center --  add Cnt if that is what it is */
CTRMALE        CnrMalCnt

DIAGNOSIS      Dgn
DIAGDT         DgnDte
DIAGDUR        DgnDur
DIAGHIST       DgnHst
DIAGTIME       DgnTme

ANEMIA         Ane
ANEMICMED      AneMed
ANESTRDT       AneBegDte

ADVERSE        Aev        /* Adverse Event */
ADVERSEAE      AevSae     /* ADV and AE    */
ADVETITLE      AevTtl
ADVGROUP       AevGrp
AEACT          AevAct
AEACTRAW       AevRaw
AEACTRULE      AevRul
AEAECD         AevCde
AEAEKEEP       AevSav
AEAEPT         AevPat
AEAESOC        AevAsc
AEBODYD        AevBdy
AECAUS         AevCau
AECD           AevCde
AECNT          AevCnt
AECOMNT        AevCmt
AECOURSE       AevCrs
AEDEATH        AevDie
AEDESC         AevDes
AEDOSE         AevDos
AEDRUG         AevDrg
AEDT           AevDte
AEDUR          AevDur

AESTR          AevDteBeg  /* many ways for the same thing */

AESPDT         AevDteEnd  /* why say the same thing six ways */
AESTPDT        AevDteEnd
AEEND          AevDteEnd
AEENDT         AevDteEnd
AEENDATE       AevDteEnd
AEFINALDT      AevDteEnd

AEENDD         AevEndDay
AEENDHH        AevEndHur
AEENDM         AevEndMth
AEENDTM        AevEndTme
AEENDY         AevEndYer

AEFLAG         AevFlg
AEFREQ         AevFrq
AENAME         AevNam
AENAMEC        AevNamCde
AENMRULE       AevRulNrm  /* Nrm is Normal  could have Abn for Abnormal */
AENFIRST       Aev1st
AEOCCNO        AevOcuNum
AEONDDT        AevOnsDte  /* Ons is onset */
AEONDT         AevOnsTme
AEONDY         AevOnsDay
AEONMM         AevOnsMth
AEPATID        AevPat
AEPREFTERM     AevPrfTrm
AEPTFIRST      AevPat1st
AERAW          AevRaw
AEREL          AevRel
AERELC         AevRelCde
AESER          AevSer
AESERDF        AevSerFlg
AESEV          AevSev
AESEVRAW       AevRawSev  /* Order change  */
AESIG          AevSig     /* Sig is Signature */
AESITESIT      AevSyt     /* Syt is Site */
AESTCMNT       AevBegCmt
AESTDTE        AevBegDte
AETEXT         AevTxt
AETOT          AevTot
AETX           AevRxx     /* Rxx is Perscription */
AETYP          AevTyp
AEVISNO        AevVisNum

EOSREAS        EosReaTxt     /* End of Study Reason not the addition of Txt */
EOSREASC       EosReaCde

EPO            Epo
EPOGEN         Epo
EPOAVE         EpoAve
EPOBACONE      EpoBacOne
EPOBACTWO      EpoBacTwo
EPOCAT         EpoCat
EPOCNT         EpoCnt
EPOMON         EpoMthAve     /* Add Average */
EPOSAV         EpoSavAve     /  Add Ave */
EPOROLLIN3     EpoRol3moAve  /* Three month rolling average */
EPOWEKLVF      EpoWekLvf     /* Lvf Last Value Forward */

EVENT          Evt
EVENTCNT       EvtCnt
EVENTNO        EvtNum
EVENTTYPE      EvtTyp
EVNDT          EvtDte
EVNTBEG        EvtBegDte     /* use beg everywhere insted of STR,  START or BEGIN add Dte*/



FINALAECD      AevFinCde      /* move Ae to the front */
FINALAECHG     AevFinDif
FINALAEDIA     AevFinDia
FINALAEDROP    AevFinDrp

ESTIMATED      Est
ESTMONTH       EstMth
ESTVIS         EstVisNum   /* Add Num if it is a number */
ESTVISDT       EstVisDte

DOSE           Dos
DOSEDROP       DosLwr
DOSEDTTM       DosTme
DOSEINC        DosInc
DOSEPM         DosPM
DOSERTE        DosRte
DOSESCHD       DosSch
DOSESEQ        DosSeq
DOSESEQOU      DosEqu
DOSETIME       DosTme
DOSETREAT      DosTrt
DOSEWEEK       DosWek
DOSFORM        DosFrm
DOSFREQ        DosFrq
DOSLVL         DosLvl
DOSPATH        DosRte  /* Probably means Route of Administration */
DOSTART        DosBeg
DOSTAYS        DosCum
DOSTXT         DosTxt
DOSUNIT        DosUnt
DOSURAW        DosRaw


LAB            Lab
LABBASE        LabBas
LABCAT         LabCat
LABCHEM        LabChm
LABCHG         LabDif
LABCN          LabCde
LABCOUNT       LabCnt
LABCVRPCT      LabCvtPct
LABDATE        LabDte
LABDOSDR       LabDos
LABDROP        LabDrp
LABDTM         LabTme
LABDUR         LabDur
LABFE          LabFer
LABWBCDATE     LabWbcDte
LABFIN         LabFin
LABFINALI      LabFlg
LABFORM        LabFrm
LABID          LabCde
LABIPOS        LabPos
LABLABEL       LabLbl
LABLABNM       LabAbn
LABNAME        LabNam
LABNRFLG       LabNrmFlg
LABORAE        LabAev
LABPPOS        LabPos
LABPROTID      LabPro     /* Pro is Protocol */
LABSER         LabSer
LABSKIP        LabSkp
LABSUFF        LabSfx
LABTESTKE      LabTst
LABTMMAX       LabMax
LABTMMIN       LabMin
LABUNITWBC     LabUntWbc
LABVAL         LabVal
LABVALNO       LabValNum
LABVALVHI      LabValUlm   /* Upper limit of Normal */
LABVALVLO      LabValLlm   /* lower limit of normal */
LABVISNO       LabVisNum

PHYSICAL       Phy
PHYSMAX        PhyDteMax
PHYSMIN        PhyDteMin
PHYSPRE        PhyDtePre
PHYSTYPE       PhyTyp


EXTENDED DISCTIONARY
====================

Current Use          Sugested             Definition

ADVTEXTFIRST         AevTxt1st            First
FIFTH                5th                  Fifth
ABNCOUNT             AbnCnt               Abnormal
ABSOLUTE             Abs                  Absolute Value
ACHE                 Ach                  Ache
CTEVENT              ActEvt               Actual
DATEADDED            AddDte               Add
ADJUSTEDWEIGTH       Adj                  Adjusted
ADMIT                Adm                  Admit
ADULTMALE            MalAdu               Adult
AEFLAG               AevFlg               Adverse Event
ALFACALCIDOL         Afc                  Alfacalcidol Dose
BLACKFEMA            FemAfr               African American Female
AFTDAY               DayAft               After
AGE                  Age                  Age
ANTIGEN              Agn                  Antigen
ARTHRITIS            Aht                  Arthritis
ALBUMIN              Alb                  Albumin
ALCOHOL              Alh                  Alcohol
ALKPHOS              Alk                  Alkaline Phosphatase
ALLHOSP              HspAll               All
ALUMINUM             Alm                  Aluminum
LABALP               BasAlp               Alp Lab Test
AMOUNT               Amt                  Amount
ANC                  Anc                  Anc Neutrophil Count Lab
ANEMIA               Ane                  Anemia
ANNOTATE             Ano                  Annotate
ANS                  Ans                  Answer
ANYANEMIC            AneAny               Any
AORTA                Aor                  Aorta
ASPIRIN              Asa                  Aspirin
AEAESOC              AevAsc               Association
ASSESMENTPHASE       Ase                  Assesment Phase
AST                  Ast                  Ast Lab Test
AUC                  Auc                  Area Under Curve
MEAN                 Ave                  Mean
BIOAVAIB             BioAvl               Available
EPOBACONE            EpoBacOne            Backwards
AGEBASEVA            AgeBasLyn            Basline
BACILLUS             Bcl                  Bacillus
ABODYTEXT            BdyTxt               Body
BEFOREF              Be4                  Before
START                Beg                  Start or Begin
BEENHERE             Bin                  been through this section of code
AVGBIPTH             PthBioAve            Biological as in BiPth
BTBILI               Bli                  Total billirubin
BMI                  Bmi                  Body Mass Index
BONE                 Bne                  Bone
BIOPDT               BopDte               Biopsy
BOTTOM               Bot                  Bottom
ASUPDIA              BpdLay               Diastolic Blood Pressure Laying DoWn
BPDATE               BpsDte               Systoli Blood Pressure
ASUPSYS              BpsLay               Systolic Blood Presure
BRONCHIAL            Brh                  Bronchial
BBUN                 BasBun               Bun Urea Nitrogen
CAD                  Cad                  Coronary Artery Disease
AVGCALCIUM           CalAve               Calcium
LBCAP                LabCap               Calcium x Phosphorous
AGECAT               AgeCat               Category
AECAUS               AevCas               Cause
CCT                  Cct                  Serum Calcitonin
AATRCD               TrtCde               Code
CARDIO               Cdo                  Cardiac
OUTCGM               OutCgm               MS-Word Graphics format
CHF                  Chf                  Congestive Heart Failure
CHGDATE              DteChg               Change
CHISQUARE            Chi                  Chi Square Statistic
SAECHK               SaeChk               Check
CHOLES               Chl                  Cholesterol
CHLORIDE             Chl                  Cloride
CHEMISTY             Chm                  Chemistry
CATHETER             Cht                  Catheter
CINACALCET           Cin                  Cinacalcet
CALCIJEX             Cjx                  Calcijex
CKDSTAGE             CkdStg               Chronic Kidney Disease
CLOSE                Clo                  Close
CTRCOMP              CnrCmp               Compare
AECOMNT              AevCmt               Comment
CENTPAT              CnrPat               Center
ABNCOUNT             AbnCnt               Count
BICARB               Co2                  BiCarbonate
COUGH                Cof                  Cough
COHORT               Coh                  Cohort
CMD                  Con                  Concomittant Medications
COVARIATE            Cov                  Covariate
ACPEVENT             Cpe                  Clinically Planned Event
CPR                  Cpr                  CPR  Cardio Pulmonary Resusitation
CRE                  Cre                  Creatinine Lab Test
CRFEXP               CrfExp               Case Report Form
CRIDT                CriDte               Critical
AECOURSE             AevCrs               Course
CRT                  Crt                  Case Report Tabulation - Analysis Dataset
CSR                  Csr                  Clinical Study Report
CONTROL              Ctl                  Control
CONTINUE             Ctu                  Continue
CUMULATIVE           Cum                  Cumulative
CURANEMIA            AneCur               Cure
CUTDATE              CutDte               Cut
CVA                  Cva                  Cerebrovascular Accident
CONVDATE             CvtDte               Convert
CYCLE                Cyl                  Study Cycle
CRTDAT               CrtDat               Data
AEENDD               AevEndDay            Day
DECODE               Dcd                  Decode
DCMDATE              DcmDte               Data Collection Module
DEATHDT              DieDte               Death Date
DEGREE               Deg                  Death Date
DELETE               Del                  Delete
DEM                  Dem                  Demographics
ABNDESC              AbnDes               Description
DEVICE               Dev                  Device
DATEDIAG             DgnDte               Diagnosis
DIABETES             Dib                  Diabetes
AEDEATH              AevDie               Death
ABSDIF               DifAbs               Difference
DISCCON              Dis                  Discontinue
DELIM                Dlm                  Delimiter
DELAYDATE            DlyDte               Delay
BDATE                Dob                  Date of Birth
DOPS                 Dop                  DOPPS
CHDIA                DpbDif               Diastolic
ADRUG                Drg                  Drug
CTRTDROP             CnrDrp               Drop
DRYWGT               Dry                  Dry
DISEASE              Dse                  Disease
DSGCNT               DsgCnt               Discharge
TABLENAME            Dsn                  Table or Dataset name
DISP                 Dsp                  Disposition
ADMITDT              AdmDte               Date
DUEDATE              DueDte               Due
HEMDONE              HemDun               Done
DUPID                PatDup               Duplicate
AEDUR                AevDur               Duration
DECREASE             CntDwn               Decrement
DIALYBPSDT           DylDte               Dialysis
EDEMA                Edm                  Edema
ELIGIBILITY          Elg                  Eligibility
ELAPSD               Elp                  Elapsed
STOP                 End                  End
EOSDT                EosDte               End of Study
BASEEPO              BasEpo               Epoetin
EPT                  Ept                  Ept Lab Test
DOSESEQOU            DosEqu               Equal
ERR                  Err                  Error
ESTDIF               EstDif               Estimated
EVALUATION           Evl                  Evaluation
CTEVENT              ActEvt               Event
EXAM                 Exm                  Exam
ADVEXP               ExpAev               Exposure
FAIL                 Fal                  Fail
FAMHISTDR            FamHst               Family
FDAGL                Fda                  Food and Drug Administration
ADULTFEMALE          FemAdu               Female
LABFE                LabFer               Iron
FEV                  Fev                  Forced Expiratory Volume
FACID                Fid                  Facility Identification
FIGURE203            Fig                  Figure
FINAL                Fin                  Final
DAYFIX               DayFix               Fil
FLAG                 Flg                  Flag
AGEFMT               AgeFmt               Format
FORMULA              Fmu                  Formula
DAYPHONE             DayFon               Telephone
DOSFORM              DosFrm               Form
AEFREQKEE            AevFrq               Frequency
FSH                  Fsh                  Follicle Stimulating Hormone
FTNTE                Ftn                  Footnote
FOLLOWUP             Fup                  Follow up
LOSTTOFOLLOWUP       FupDrp               Lost to Follow Up
FEVBASE              BasFvr               Fever
GFR                  Gfr                  Glomerular Filtratn Rate
BGLUCOSE             BasGlu               Clucose
GENERIC              Gnc                  Generic
GOVERNMENTREG231     Gov                  Government
BSGPT                BasGpt               SGPT lab Test
ADVGROUP             AevGrp               Group
HBA1C                H1c                  HBA1c Glucose monitoring
BLHCT                BasHct               HCT
HEAD                 Hed                  Head
HEMADATE             HemDte               Hematology
HEPAT                Hep                  Hepatic Liver
AVEHGB               HgbAve               Hemoglobin
AVEHGT               HgtAve               Height
HIV                  Hiv                  Auired Immunity Syndrome AIDS
ALLHOSP              HspAll               Hospital
DIAGHIST             DgnHst               History
AEENDHH              AevEndHur            Hour
HISTORY              Hxx                  History
HYPERCALCEMIA        Hye                  Hypocalcemia
HYPOCALCEMIA         Hyo                  Hypecalcemia
HYPERTENS            Hyprtn               Hypertension
FDAGUIDE             FdaIch               International Committee for Harmonization
DOSEINC              DosInc               Increment
IONIZED              Inz                  Ionized
ITT                  Itt                  Intend to Treat
AVGIPTH              PthIvnAve            Intravenous PTH
IV                   Ivn                  Intavenous
KET                  KET                  Keytone Lab Test
PATDKEEP             PatKep               Keep
KTV                  Ktv                  Kt/V
LAB                  Lab                  Laboratory
LAG                  Lag                  Lab
LABLABEL             LabLbl               Label
LOW95PCT             Lcl                  Lower 95% Confidence Level
LACTATE              DEHYDROGENASE        Ldh Lactate Dehydrogenase
LENGTH               Lgh                  Length
LEGEND               Lgn                  Legend
LIBRARY              Lib                  Library
LOWLIMIT             Lln                  Lower limit of normal
ILLNESS              Lns                  Illness
LOGBASE              Log                  Logarithm or Logged data
HSPLOS               HspLos               Length of Stay
ERRLOW               ErrLow               Low
DAYLAST              DayLst               Last
EPOWEKLVF            EpoWekLvf            Last Value Forward
DOSLVL               DosLvl               Level
BUNLO                BunLwr               Lower
LYMPH                Lym                  Lymphatic
BASLINE              Lyn                  Line
LZH                  Lzh                  Luteinizing Hormone
MAGNESIUMMAG         Mag                  Magnesium
MAJCAT               CatMaj               Major
ADULTMALE            MalAdu               Male
NOTMAPEDTXT          TxtNotMap            Map
BIOMASS              BioMas               Mass
MATRIX               Mat                  Matrix
ABSHHS               DifAbsMax            Maximum
MCS                  Mcs                  SF36 Mental Score
MEDIAN               Med                  Median
MEMBERNAME           Mem                  Member name
MIF                  Mif                  Myocardial Infarction
AGEMIN               AgeMin               Minimum
MISDOS               DosMis               Miss
DAYCREA              DayMke               Create or Make
MILD                 Mld                  Mild
SUBCAT               CatMnr               Minor
MILDMOD              MldMod               Moderate
MSG                  Msg                  Message
AEENDM               AevEndMth            Month
AENAME               AevNam               Name
NAUSEA               Nau                  Nausea
NDA                  Nda                  New Drug Application
INDICATI             Ndc                  Indication
NEUROLOGY            Neu                  Neurology
NEW                  New                  New
AMONIA               Nh4                  Amonia
NIH                  Nih                  National Institute of Health
NOHOSP               HLayot               Not
LABNRFLG             LabNrmFlg            Normal
NRO                  Nro                  Enroll
ARANESP              Nsp                  Aranesp
INTENSITY            Ntn                  Intensity
AENMRULE             AevNum               Number
NEUTROPHI            Nup                  Neutrophil
NEXTREC              DayNxt               Next
NIGHT                Nyt                  Night
OUTCOME              Ocm                  Outcome
AEOCCNO              AevOcuNum            Occurance
DRUGOFF              DrgOff               Off
OLD                  Old                  Old
OMO                  Omo                  Serum Osmolality
ONCOLOGY             Onc                  Oncology
ONDRUG               Ondrug               On Drug
DAYONE               DayOne               One
ONGOING              Ongoin               Ongoing
AEONDDT              AevOnsDte            Onset
ORD                  Ord                  Order
CMPORIG              ConOrg               Original
ORTHOPEDIC           Orh                  Othopedic
OSTEO                Ost                  Osteo Arthiritis
OTTREAT              TrtOth               Other
EPTDROP              EptOut               Out
DAYOFWK              DayOwk               Of Week
PATID                Pat                  Subject or Patient
PHOSPHATEBINDERS     Pbn                  Phosphate Binders
PLACEBO              Pbo                  Placebo
PCS                  Pcs                  SF36 Physical Score
CMINPCT              ConMinPct            Percentage
CPREFIX              CprPfx               Prefix
PAGE                 Pge                  Page
PHASEI               Ph1                  Phase I
PHASEII              Ph2                  Phase II
PHASEIII             Ph3                  Phase III
PHASEIV              Ph4                  Phase IV
PHASE                Pha                  Phase
AVGPHOSPH            PhoAve               Phosphorous
PHYS                 Phy                  Physical
PLA                  Pla                  Platelets
PULSE                Pls                  Pulse
PLOT                 lt                   Plot
PNEUMONIA            Pnu                  Pneumonia
POOL                 Poo                  Pool
POP                  Pop                  Population
LABIPOS              LabPos               Positive
AEPRES               AevPre               Previous
PRFTFM               PrfTrm               Preferred
PRG                  Prg                  Prognosis
PRIMARYKEY           Pri                  Primary
PROTOCOL             Pro                  Protocol
PSORIA               Pso                  Psoriasis
PSY                  Psy                  Psychological
AVGBIPTH             PthBioAve            PTH
POTASSIUM            Ptm                  Potassium
PULMONARY            Pul                  Pulmonary
PULSEPRESSURE        Pup                  Pulse Pressure
PVD                  Pvd                  Peripheral Vascular Disease
BIOPX                BopPxx               Physical Therapy
ACHEPAIN             AchPyn               Pain
DPQUERY              Qry                  Query
QTR                  Qtr                  Quarter
QUESTION             Que                  Question
RATE                 Rat                  Rate
AEACTRAW             AevRaw               Raw
RBC                  Rbc                  Red Blood Cell Count
RACE                 Rce                  Race
NOTREADY             PatNotRdy            Ready
RANDOMIZE            Rdz                  Randomize
EOSREAS              EosRea               Reason
CRFREC               CrfRec               Record
DEANOTIFY            DieReg               Register
AEREL                AevRel               Related To
RENAGEL              Ren                  Renagel
AGERANGE             AgeRng               Range
RENAL                Rnl                  Renal
ROL3MO               Rol                  Rolling Average
CMRSPIND             ConRpn               Response
RISK                 Rsk                  Risk
RESULT               Rsl                  Result
RESPIRATIONS         Rsp                  Respirations
CMRTETDD             ConRte               Route of Administration
RATIO                Rto                  Ratio
AEACTRULE            AevRul               Rule
AETX                 AevRxx               Prescription
ADVERSEAE            AevSae               Severe Averse Event
SAF                  Saf                  Safety
SAP                  Sap                  Statistical Analysis Plan
AEAEKEEP             AevSav               Save or Keep
DATEAVED             Sav                  Saved
DOSESCHD             DosSch               Scheduled
HGBSCR               HgbScr               Screened
DOSESEQ              DosSeq               Sequence
AESER                AevSer               Serious
AESEV                AevSev               Severity
GENDER               Sex                  Sex
LABSUFF              LabSfx               Suffix
BSGOT                BasSgo               SGOT Aspartate Amino Transferase Lab Test
AESIG                AevSig               Signature
SIGNEDCONSENT        Sig                  Signed
PULSIT               PupSit               Blood Pressure in Sitting Position
SKELATEL             Skl                  Skeletal
LABSKIP              LabSkp               Skip
SMOKCD               SmkCde               Smoker
BSODIUM              BasSod               Sodium
ITTSBP               IttSpb               Systolic Blood Pressure
SUPLEMENT            Spl                  Suplement
ASUPDIA              BpdLay               Supine Diastolic Blood Pressure
SGPT                 Spt                  SGPT Alanine Amino Transferase
AGESRCE              AgeSrc               Source
SERUM                Srm                  Serum
SORTEDOUTPUT         Srt                  Proc Sort Output
STDEV                Std                  Standard Deviation
CKDSTAGE             CkdStg               Stage
DSTATUS              DspStt               Status
STUDY                Sty                  Study
SUM                  Sum                  Sum
SURV                 Svy                  Survey
SYMP                 Sym                  Disease Sympton
BODYSYSTEM           BdySys               System
AESITESIT            AevSyt               Site
SEIZURECO            SzeCde               Seizure
TESTARTICLEADMIN     Taa                  Test Article
PILL                 Pil                  Tablet
TABLET               Tab                  Tablet or Pill
TBILI                Tbi                  Total Billirubin
TDD                  Tdd                  Treatment data
THM                  Thm                  Prothrombin
TABLELISTINGGRAPH    Tlg                  Table Listing or Graph
ADMTIME              AdmTme               Time
TEMP                 Tmp                  Temporary
TEMPERATURE          Tmt                  Terperature
TOP                  Top                  Top
AETOT                AevTot               Total
TOX                  Tox                  Toxin or Toxicity
PRFTFM               PrfTrm               Term
AATRCD               TrtCde               Trt
TSAT                 Tsa                  Tsat
TSH                  Tsh                  Serum Thyroid Stimulating Hormone
LABTESTKE            LabTst               Test
TTF                  Ttf                  Free Testosterone
ADVETITLE            AevTtl               Title
TITRATION            Ttn                  Titration
TTT                  Ttt                  Total Testosterone
TUMS                 Tum                  Tums
EPOBACTWO            EpoBacTwo            Two
AETEXT               AevTxt               Text
TX                   Txx                  Prescribed Treatment
AETYP                AevTyp               Type
TYZ                  Tyz                  Free Thyroxine
URIC                 ACID                 Uac Uric Acid
UPPER95PCT           Ucl                  Upper 95% Confidence Level
UPPERLIMNRMAL        Uln                  Upper Limit of Normal
ANCISTUNT            AncUnt               Unit
UNIVARIATEOUTPUT     Unv                  Proc univariate output
BUNHI                BunUpr               Upper
URINE                Urn                  Urine
VITAMINDUSER         Use                  Code 0/1 if user of Vitamin D
ALBUSE               AbuUse               Used Alb 0/1
USED                 Use                  Zero or One Flag to indicate use of drug
ABSVAL               ValAbs               Value
VERSION              Ver                  Version
VINTAGE              Vin                  Vintage
AEVISNO              AevVisNum            Visit
DATAVALID            VldDte               Valid or Validate
ANTIVIRO             AntVro               Viral
VITAMIND             Vtd                  Vitamin D
WBC                  Wbc                  White Blood Count
WIDTH                Wdt                  Width
ACWEEK               ActWek               Week
WEEK                 Wek                  Wek Week
AVEWGT               WgtAve               Weight
ACTWKS               ActWks               Weeks
POPWHITE             PopWyt               White
EXACTM               XacTme               Exact
EXCLDROP             XclDrp               Excluded
EXCPDROP             XcpDrp               Exception
EXECUTE              Xeq                  Execute
EXDD                 XitDay               Exit
EXCEL                Xls                  Excel
EXAMPLE              Xmp                  Example
TRANSPOSEDOUTPUT     Xpo                  Proc transposed output
ACROSS               Xrs                  Across
XRAY                 Xry                  XRay
CROSSOVR             Xvr                  Cross Over
AEENDY               AevEndYer            Year
ABYES                AbnYes               Yes
AGEYRS               AgeYrs               Years
PREYTD               PreYtd               Year to Date
ZEMPLAR              Zmp                  Zemplar
DAYZERO              DayZro               Zero


