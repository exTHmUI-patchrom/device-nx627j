.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;,
        Landroid/telephony/PhoneNumberUtils$BcdExtendType;
    }
.end annotation


# static fields
.field private static final BCD_CALLED_PARTY_EXTENDED:Ljava/lang/String; = "*#abc"

.field private static final BCD_EF_ADN_EXTENDED:Ljava/lang/String; = "*#,N;"

.field public static final BCD_EXTENDED_TYPE_CALLED_PARTY:I = 0x2

.field public static final BCD_EXTENDED_TYPE_EF_ADN:I = 0x1

.field private static final CCC_LENGTH:I

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field private static final EXTRA_EMERGNECY_NUMBER:Ljava/lang/String; = ",110,119,120,122"

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final JAPAN_ISO_COUNTRY_CODE:Ljava/lang/String; = "JP"

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field private static final KOREA_ISO_COUNTRY_CODE:Ljava/lang/String; = "KR"

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0xb

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field private static mModemEmergencyNumber:Ljava/lang/String;

.field private static sConvertToEmergencyMap:[Ljava/lang/String;

.field private static sCountryDetector:Landroid/location/Country;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 113
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->sCountryDetector:Landroid/location/Country;

    .line 118
    const-string v1, "[\\+]?[0-9.-]+"

    .line 119
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 123
    const-string v1, ""

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mModemEmergencyNumber:Ljava/lang/String;

    .line 1209
    const-string v2, "US"

    const-string v3, "CA"

    const-string v4, "AS"

    const-string v5, "AI"

    const-string v6, "AG"

    const-string v7, "BS"

    const-string v8, "BB"

    const-string v9, "BM"

    const-string v10, "VG"

    const-string v11, "KY"

    const-string v12, "DM"

    const-string v13, "DO"

    const-string v14, "GD"

    const-string v15, "GU"

    const-string v16, "JM"

    const-string v17, "PR"

    const-string v18, "MS"

    const-string v19, "MP"

    const-string v20, "KN"

    const-string v21, "LC"

    const-string v22, "VC"

    const-string v23, "TT"

    const-string v24, "TC"

    const-string v25, "VI"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2374
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2376
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x32

    const/16 v3, 0x61

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x62

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x63

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2377
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x41

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x42

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x43

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2379
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x65

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x66

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2380
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x44

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x45

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x46

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2382
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x34

    const/16 v4, 0x67

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x68

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x69

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2383
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x47

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x48

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x49

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2385
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x35

    const/16 v4, 0x6a

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x6b

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x6c

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2386
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x4a

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x4b

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x4c

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2388
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x36

    const/16 v4, 0x6d

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x6e

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x6f

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2389
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x4d

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x4e

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x4f

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2391
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x37

    const/16 v4, 0x70

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x71

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x72

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x73

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2392
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x50

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x51

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x52

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x53

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2394
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x38

    const/16 v4, 0x74

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x75

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x76

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2395
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x54

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x55

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x56

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2397
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x39

    const/16 v4, 0x77

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x78

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x79

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x7a

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2398
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x57

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x58

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x59

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x5a

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3035
    new-array v1, v2, [Z

    fill-array-data v1, :array_0

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 3047
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v1, v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    .line 3231
    sput-object v0, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTtsSpan(Landroid/text/Spannable;II)V
    .locals 2
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "endExclusive"    # I

    .line 2597
    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2601
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .line 2895
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 2896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2897
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2898
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2899
    .local v0, "retStr":Ljava/lang/String;
    goto :goto_0

    .line 2902
    .end local v0    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2903
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2905
    .local v0, "retStr":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private static bcdToChar(BI)C
    .locals 3
    .param p0, "b"    # B
    .param p1, "bcdExtType"    # I

    .line 1031
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1032
    const/16 v0, 0x30

    add-int/2addr v0, p0

    int-to-char v0, v0

    return v0

    .line 1035
    :cond_0
    const/4 v0, 0x0

    .line 1036
    .local v0, "extended":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 1037
    const-string v0, "*#,N;"

    goto :goto_0

    .line 1038
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 1039
    const-string v0, "*#abc"

    .line 1041
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    add-int/lit8 v1, p0, -0xa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    goto :goto_1

    .line 1045
    :cond_3
    add-int/lit8 v1, p0, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 1042
    :cond_4
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1012
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calledPartyBCDFragmentToString([BIII)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bcdExtType"    # I

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1022
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V

    .line 1023
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 844
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calledPartyBCDToString([BIII)Ljava/lang/String;
    .locals 11
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bcdExtType"    # I

    .line 865
    const/4 v0, 0x0

    .line 866
    .local v0, "prependPlus":Z
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 868
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    if-ge p2, v2, :cond_0

    .line 869
    const-string v2, ""

    return-object v2

    .line 873
    :cond_0
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0x90

    if-ne v4, v5, :cond_1

    .line 874
    const/4 v0, 0x1

    .line 877
    :cond_1
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    invoke-static {v1, p0, v4, v5, p3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V

    .line 880
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 882
    const-string v2, ""

    return-object v2

    .line 885
    :cond_2
    if-eqz v0, :cond_6

    .line 911
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 912
    .local v4, "retString":Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 913
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 914
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v7, :cond_4

    .line 915
    const-string v7, ""

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x5

    if-eqz v7, :cond_3

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 920
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 929
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v7

    .line 930
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 938
    :cond_4
    const-string v7, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 939
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 940
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 945
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v7

    .line 946
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 953
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 954
    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .end local v4    # "retString":Ljava/lang/String;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :cond_6
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2436
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2439
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2440
    .local v0, "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2441
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2442
    nop

    .line 2443
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    .line 2444
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    .line 2442
    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2448
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .line 2501
    move-object v0, p0

    .line 2503
    .local v0, "retStr":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2506
    .local v2, "useNanp":Z
    :goto_0
    if-eqz p0, :cond_8

    const-string v3, "+"

    .line 2507
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 2510
    const/4 v3, 0x0

    .line 2511
    .local v3, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 2514
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2523
    :cond_1
    if-eqz v2, :cond_2

    .line 2524
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2524
    .local v5, "networkDialStr":Ljava/lang/String;
    goto :goto_1

    .line 2526
    .end local v5    # "networkDialStr":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2530
    .restart local v5    # "networkDialStr":Ljava/lang/String;
    :goto_1
    invoke-static {v5, v2}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2533
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2534
    if-nez v0, :cond_3

    .line 2535
    move-object v0, v5

    goto :goto_2

    .line 2537
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2546
    :goto_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2547
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2548
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v6

    .line 2551
    .local v6, "dialableIndex":I
    if-lt v6, v1, :cond_4

    .line 2552
    invoke-static {v6, v0, v3}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2555
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 2560
    :cond_4
    if-gez v6, :cond_5

    .line 2561
    const-string v3, ""

    .line 2563
    :cond_5
    const-string/jumbo v7, "wrong postDialStr="

    invoke-static {v7, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    .end local v5    # "networkDialStr":Ljava/lang/String;
    .end local v6    # "dialableIndex":I
    :cond_6
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2567
    .end local v3    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    goto :goto_4

    .line 2543
    .restart local v3    # "postDialStr":Ljava/lang/String;
    .restart local v4    # "tempDialStr":Ljava/lang/String;
    .restart local v5    # "networkDialStr":Ljava/lang/String;
    :cond_7
    const-string v1, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    return-object p0

    .line 2569
    .end local v3    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    .end local v5    # "networkDialStr":Ljava/lang/String;
    :cond_8
    :goto_4
    return-object v0
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2460
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2462
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2463
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2464
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 2465
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2469
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    :cond_0
    return-object p0
.end method

.method private static charToBCD(CI)I
    .locals 4
    .param p0, "c"    # C
    .param p1, "bcdExtType"    # I

    .line 1049
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1050
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 1053
    :cond_0
    const/4 v0, 0x0

    .line 1054
    .local v0, "extended":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 1055
    const-string v0, "*#,N;"

    goto :goto_0

    .line 1056
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 1057
    const-string v0, "*#abc"

    .line 1059
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1062
    const/16 v1, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 1060
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid char for BCD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .line 3198
    const/4 v0, 0x0

    move v1, p2

    move p2, v0

    .line 3199
    .local v1, "backwardIndex":I
    .local p2, "trunk_prefix_was_read":Z
    :goto_0
    if-lt v1, p1, :cond_3

    .line 3200
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_1

    .line 3201
    if-eqz p2, :cond_0

    .line 3204
    return v0

    .line 3207
    :cond_0
    const/4 p2, 0x1

    goto :goto_1

    .line 3209
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3211
    return v0

    .line 3213
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3216
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 468
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 457
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .line 475
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "numNonDialableCharsInA":I
    const/4 v1, 0x0

    .line 499
    .local v1, "numNonDialableCharsInB":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_f

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 501
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 505
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 506
    .local v4, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 507
    .local v5, "ib":I
    move v6, v1

    move v1, v0

    move v0, v2

    .line 509
    .local v0, "matched":I
    .local v1, "numNonDialableCharsInA":I
    .local v6, "numNonDialableCharsInB":I
    :goto_0
    if-ltz v4, :cond_6

    if-ltz v5, :cond_6

    .line 511
    const/4 v7, 0x0

    .line 513
    .local v7, "skipCmp":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 515
    .local v8, "ca":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v9

    if-nez v9, :cond_2

    .line 516
    add-int/lit8 v4, v4, -0x1

    .line 517
    const/4 v7, 0x1

    .line 518
    add-int/lit8 v1, v1, 0x1

    .line 521
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 523
    .local v9, "cb":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 524
    add-int/lit8 v5, v5, -0x1

    .line 525
    const/4 v7, 0x1

    .line 526
    add-int/lit8 v6, v6, 0x1

    .line 529
    :cond_3
    if-nez v7, :cond_5

    .line 530
    if-eq v9, v8, :cond_4

    const/16 v10, 0x4e

    if-eq v8, v10, :cond_4

    if-eq v9, v10, :cond_4

    .line 531
    goto :goto_1

    .line 533
    :cond_4
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, 0x1

    .line 535
    .end local v7    # "skipCmp":Z
    .end local v8    # "ca":C
    .end local v9    # "cb":C
    :cond_5
    goto :goto_0

    .line 537
    :cond_6
    :goto_1
    const/16 v7, 0xb

    if-ge v0, v7, :cond_8

    .line 538
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v1

    .line 539
    .local v7, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    .line 544
    .local v8, "effectiveBLen":I
    if-ne v7, v8, :cond_7

    if-ne v7, v0, :cond_7

    .line 545
    return v3

    .line 548
    :cond_7
    return v2

    .line 552
    .end local v7    # "effectiveALen":I
    .end local v8    # "effectiveBLen":I
    :cond_8
    if-lt v0, v7, :cond_a

    if-ltz v4, :cond_9

    if-gez v5, :cond_a

    .line 553
    :cond_9
    return v3

    .line 565
    :cond_a
    add-int/lit8 v7, v4, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    add-int/lit8 v7, v5, 0x1

    .line 566
    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 568
    return v3

    .line 571
    :cond_b
    add-int/lit8 v7, v4, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    add-int/lit8 v7, v5, 0x1

    .line 572
    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 574
    return v3

    .line 577
    :cond_c
    add-int/lit8 v7, v5, 0x1

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_d

    add-int/lit8 v7, v4, 0x1

    .line 578
    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 580
    return v3

    .line 583
    :cond_d
    return v2

    .line 502
    .end local v4    # "ia":I
    .end local v5    # "ib":I
    .end local v6    # "numNonDialableCharsInB":I
    .local v0, "numNonDialableCharsInA":I
    .local v1, "numNonDialableCharsInB":I
    :cond_e
    :goto_2
    return v2

    .line 499
    :cond_f
    :goto_3
    if-ne p0, p1, :cond_10

    move v2, v3

    nop

    :cond_10
    return v2
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 591
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 599
    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1d

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 601
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 602
    return v4

    .line 605
    :cond_1
    const/4 v5, 0x0

    .line 606
    .local v5, "forwardIndexA":I
    const/4 v6, 0x0

    .line 608
    .local v6, "forwardIndexB":I
    nop

    .line 609
    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 610
    .local v7, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    nop

    .line 611
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v8

    .line 612
    .local v8, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v9, 0x0

    .line 613
    .local v9, "bothHasCountryCallingCode":Z
    const/4 v10, 0x1

    .line 614
    .local v10, "okToIgnorePrefix":Z
    const/4 v11, 0x0

    .line 615
    .local v11, "trunkPrefixIsOmittedA":Z
    const/4 v12, 0x0

    .line 616
    .local v12, "trunkPrefixIsOmittedB":Z
    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    .line 617
    iget v13, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    iget v14, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    if-eq v13, v14, :cond_2

    .line 619
    return v4

    .line 623
    :cond_2
    const/4 v10, 0x0

    .line 624
    const/4 v9, 0x1

    .line 625
    iget v5, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 626
    iget v6, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 627
    :cond_3
    if-nez v7, :cond_4

    if-nez v8, :cond_4

    .line 630
    const/4 v10, 0x0

    goto :goto_1

    .line 632
    :cond_4
    if-eqz v7, :cond_5

    .line 633
    iget v5, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_0

    .line 635
    :cond_5
    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v13

    .line 636
    .local v13, "tmp":I
    if-ltz v13, :cond_6

    .line 637
    move v5, v13

    .line 638
    const/4 v11, 0x1

    .line 641
    .end local v13    # "tmp":I
    :cond_6
    :goto_0
    if-eqz v8, :cond_7

    .line 642
    iget v6, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 644
    :cond_7
    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v13

    .line 645
    .restart local v13    # "tmp":I
    if-ltz v13, :cond_8

    .line 646
    move v6, v13

    .line 647
    const/4 v12, 0x1

    .line 652
    .end local v13    # "tmp":I
    :cond_8
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v3

    .line 653
    .local v13, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v3

    .line 654
    .local v14, "backwardIndexB":I
    :goto_2
    if-lt v13, v5, :cond_d

    if-lt v14, v6, :cond_d

    .line 655
    const/4 v15, 0x0

    .line 656
    .local v15, "skip_compare":Z
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 657
    .local v3, "chA":C
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 658
    .local v4, "chB":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 659
    add-int/lit8 v13, v13, -0x1

    .line 660
    const/4 v15, 0x1

    .line 662
    :cond_9
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 663
    add-int/lit8 v14, v14, -0x1

    .line 664
    const/4 v15, 0x1

    .line 667
    :cond_a
    if-nez v15, :cond_c

    .line 668
    if-eq v3, v4, :cond_b

    .line 669
    const/16 v16, 0x0

    return v16

    .line 671
    :cond_b
    add-int/lit8 v13, v13, -0x1

    .line 672
    add-int/lit8 v14, v14, -0x1

    .line 674
    .end local v3    # "chA":C
    .end local v4    # "chB":C
    .end local v15    # "skip_compare":Z
    :cond_c
    nop

    .line 653
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 676
    :cond_d
    if-eqz v10, :cond_15

    .line 677
    if-eqz v11, :cond_e

    if-le v5, v13, :cond_f

    .line 678
    :cond_e
    invoke-static {v0, v5, v13}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_11

    .line 679
    :cond_f
    if-eqz v2, :cond_10

    .line 689
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 691
    :cond_10
    const/4 v3, 0x0

    return v3

    .line 694
    :cond_11
    if-eqz v12, :cond_12

    if-le v6, v14, :cond_13

    .line 695
    :cond_12
    invoke-static {v1, v5, v14}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 696
    :cond_13
    if-eqz v2, :cond_14

    .line 697
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 699
    :cond_14
    const/4 v3, 0x0

    return v3

    .line 712
    :cond_15
    if-nez v9, :cond_16

    const/4 v3, 0x1

    goto :goto_3

    :cond_16
    const/4 v3, 0x0

    .line 713
    .local v3, "maybeNamp":Z
    :goto_3
    if-lt v13, v5, :cond_19

    .line 714
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 715
    .local v4, "chA":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 716
    if-eqz v3, :cond_17

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v15

    const/4 v2, 0x1

    if-ne v15, v2, :cond_17

    .line 717
    const/4 v2, 0x0

    .line 722
    .end local v3    # "maybeNamp":Z
    .local v2, "maybeNamp":Z
    move v3, v2

    goto :goto_4

    .line 719
    .end local v2    # "maybeNamp":Z
    .restart local v3    # "maybeNamp":Z
    :cond_17
    const/4 v2, 0x0

    return v2

    .line 722
    :cond_18
    :goto_4
    add-int/lit8 v13, v13, -0x1

    .line 723
    .end local v4    # "chA":C
    nop

    .line 712
    move/from16 v2, p2

    goto :goto_3

    .line 724
    :cond_19
    :goto_5
    if-lt v14, v6, :cond_1c

    .line 725
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 726
    .local v2, "chB":C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 727
    if-eqz v3, :cond_1a

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    const/4 v15, 0x1

    if-ne v4, v15, :cond_1a

    .line 728
    const/4 v3, 0x0

    goto :goto_6

    .line 730
    :cond_1a
    const/4 v4, 0x0

    return v4

    .line 733
    :cond_1b
    :goto_6
    const/4 v4, 0x0

    add-int/lit8 v14, v14, -0x1

    .line 734
    .end local v2    # "chB":C
    goto :goto_5

    .line 737
    .end local v3    # "maybeNamp":Z
    :cond_1c
    const/16 v17, 0x1

    return v17

    .line 600
    .end local v5    # "forwardIndexA":I
    .end local v6    # "forwardIndexB":I
    .end local v7    # "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .end local v8    # "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .end local v9    # "bothHasCountryCallingCode":Z
    .end local v10    # "okToIgnorePrefix":Z
    .end local v11    # "trunkPrefixIsOmittedA":Z
    .end local v12    # "trunkPrefixIsOmittedB":Z
    .end local v13    # "backwardIndexA":I
    .end local v14    # "backwardIndexB":I
    :cond_1d
    :goto_7
    move/from16 v17, v3

    if-ne v0, v1, :cond_1e

    goto :goto_8

    :cond_1e
    move/from16 v17, v4

    :goto_8
    return v17
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 353
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .line 2351
    if-nez p0, :cond_0

    .line 2352
    return-object p0

    .line 2354
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2355
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 2356
    return-object p0

    .line 2359
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2361
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2362
    aget-char v3, v1, v2

    .line 2364
    .local v3, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 2361
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2367
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 363
    if-nez p0, :cond_0

    .line 364
    const/4 v0, 0x0

    return-object v0

    .line 366
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 367
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 369
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 370
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 372
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    const/16 v3, 0x2c

    goto :goto_1

    .line 374
    :cond_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 375
    const/16 v3, 0x3b

    .line 377
    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p0, "source"    # Landroid/net/Uri;

    .line 2827
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2829
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2831
    return-object p0

    .line 2834
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 2835
    .local v1, "number":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2837
    .local v2, "numberParts":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1

    .line 2839
    return-object p0

    .line 2841
    :cond_1
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 2843
    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static convertToEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 3244
    if-eqz p0, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3248
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3251
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3252
    return-object p1

    .line 3255
    :cond_1
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 3256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    .line 3261
    :cond_2
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 3265
    :cond_3
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_9

    aget-object v5, v1, v4

    .line 3267
    .local v5, "convertMap":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3268
    .local v6, "entry":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 3269
    .local v7, "filterNumbers":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3270
    .local v8, "convertedNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3271
    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3273
    :cond_4
    if-eqz v6, :cond_5

    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 3274
    const/4 v9, 0x1

    aget-object v8, v6, v9

    .line 3275
    aget-object v9, v6, v3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 3276
    aget-object v9, v6, v3

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3280
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v7, :cond_8

    array-length v9, v7

    if-nez v9, :cond_6

    .line 3282
    goto :goto_2

    .line 3285
    :cond_6
    array-length v9, v7

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_8

    aget-object v11, v7, v10

    .line 3288
    .local v11, "filterNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3291
    return-object v8

    .line 3285
    .end local v11    # "filterNumber":Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3265
    .end local v5    # "convertMap":Ljava/lang/String;
    .end local v6    # "entry":[Ljava/lang/String;
    .end local v7    # "filterNumbers":[Ljava/lang/String;
    .end local v8    # "convertedNumber":Ljava/lang/String;
    :cond_8
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3295
    :cond_9
    return-object p1

    .line 3262
    :cond_a
    :goto_3
    return-object p1

    .line 3245
    .end local v0    # "normalizedNumber":Ljava/lang/String;
    :cond_b
    :goto_4
    return-object p1
.end method

.method public static createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;
    .locals 5
    .param p0, "phoneNumberString"    # Ljava/lang/String;

    .line 2642
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2643
    return-object v0

    .line 2647
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 2648
    .local v1, "phoneNumberUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    move-object v2, v0

    .line 2653
    .local v2, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-virtual {v1, p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 2655
    goto :goto_0

    .line 2654
    :catch_0
    move-exception v0

    .line 2658
    :goto_0
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    .line 2659
    .local v0, "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    if-nez v2, :cond_1

    .line 2662
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    goto :goto_1

    .line 2664
    :cond_1
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2665
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 2667
    :cond_2
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 2669
    :goto_1
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v3

    return-object v3
.end method

.method public static createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 2580
    if-nez p0, :cond_0

    .line 2581
    const/4 v0, 0x0

    return-object v0

    .line 2583
    :cond_0
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 2584
    .local v0, "spannable":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 2585
    return-object v0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 251
    if-nez p0, :cond_0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 256
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 259
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 261
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 262
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 263
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 264
    :cond_1
    const/16 v5, 0x2b

    if-ne v3, v5, :cond_4

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "*31#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "#31#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 268
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_3
    goto :goto_1

    :cond_4
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 271
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 272
    :cond_5
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 273
    goto :goto_2

    .line 258
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "i":I
    :cond_7
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 290
    if-nez p0, :cond_0

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 295
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 296
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 298
    .local v2, "haveSeenPlus":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 299
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 300
    .local v4, "c":C
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_2

    .line 301
    if-eqz v2, :cond_1

    .line 302
    goto :goto_1

    .line 304
    :cond_1
    const/4 v2, 0x1

    .line 306
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 307
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 308
    :cond_3
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 309
    goto :goto_2

    .line 298
    .end local v4    # "c":C
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    .end local v3    # "i":I
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 432
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .line 439
    .local v1, "trimIndex":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 440
    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 442
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 443
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    .end local v4    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    .line 2879
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2880
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2881
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2882
    return v0

    .line 2879
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2885
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1469
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1470
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 12
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1353
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1354
    .local v0, "length":I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1356
    return-void

    .line 1357
    :cond_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 1359
    return-void

    .line 1362
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1365
    .local v2, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1366
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1371
    const/4 v3, 0x3

    new-array v4, v3, [I

    .line 1372
    .local v4, "dashPositions":[I
    const/4 v5, 0x0

    .line 1374
    .local v5, "numDashes":I
    const/4 v6, 0x1

    .line 1375
    .local v6, "state":I
    const/4 v7, 0x0

    .line 1376
    .local v7, "numDigits":I
    move v8, v6

    move v6, v5

    move v5, v1

    .local v5, "i":I
    .local v6, "numDashes":I
    .local v8, "state":I
    :goto_0
    const/16 v9, 0x2d

    if-ge v5, v0, :cond_b

    .line 1377
    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    .line 1378
    .local v10, "c":C
    const/16 v11, 0x2b

    if-eq v10, v11, :cond_9

    if-eq v10, v9, :cond_8

    const/4 v9, 0x2

    packed-switch v10, :pswitch_data_0

    goto :goto_4

    .line 1380
    :pswitch_0
    if-eqz v7, :cond_2

    if-ne v8, v9, :cond_3

    .line 1381
    :cond_2
    const/4 v8, 0x3

    .line 1382
    goto :goto_3

    .line 1394
    :cond_3
    :pswitch_1
    if-ne v8, v9, :cond_4

    .line 1396
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1397
    return-void

    .line 1398
    :cond_4
    if-ne v8, v3, :cond_5

    .line 1400
    add-int/lit8 v9, v6, 0x1

    .local v9, "numDashes":I
    aput v5, v4, v6

    .end local v6    # "numDashes":I
    :goto_1
    goto :goto_2

    .line 1401
    .end local v9    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_5
    const/4 v9, 0x4

    if-eq v8, v9, :cond_7

    if-eq v7, v3, :cond_6

    const/4 v9, 0x6

    if-ne v7, v9, :cond_7

    .line 1403
    :cond_6
    add-int/lit8 v9, v6, 0x1

    .restart local v9    # "numDashes":I
    aput v5, v4, v6

    goto :goto_1

    .line 1405
    .end local v9    # "numDashes":I
    :cond_7
    move v9, v6

    .end local v6    # "numDashes":I
    .restart local v9    # "numDashes":I
    :goto_2
    const/4 v6, 0x1

    .line 1406
    .end local v8    # "state":I
    .local v6, "state":I
    add-int/lit8 v7, v7, 0x1

    .line 1407
    nop

    .line 1376
    move v8, v6

    move v6, v9

    goto :goto_3

    .line 1410
    .end local v9    # "numDashes":I
    .local v6, "numDashes":I
    .restart local v8    # "state":I
    :cond_8
    const/4 v8, 0x4

    .line 1411
    goto :goto_3

    .line 1414
    :cond_9
    if-nez v5, :cond_a

    .line 1416
    const/4 v8, 0x2

    .line 1417
    nop

    .line 1376
    .end local v10    # "c":C
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1422
    .restart local v10    # "c":C
    :cond_a
    :goto_4
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1423
    return-void

    .line 1427
    .end local v5    # "i":I
    .end local v10    # "c":C
    :cond_b
    const/4 v3, 0x7

    if-ne v7, v3, :cond_c

    .line 1429
    add-int/lit8 v6, v6, -0x1

    .line 1433
    :cond_c
    nop

    .local v1, "i":I
    :goto_5
    if-ge v1, v6, :cond_d

    .line 1434
    aget v3, v4, v1

    .line 1435
    .local v3, "pos":I
    add-int v5, v3, v1

    add-int v10, v3, v1

    const-string v11, "-"

    invoke-interface {p0, v5, v10, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1433
    .end local v3    # "pos":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1439
    .end local v1    # "i":I
    :cond_d
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1440
    .local v1, "len":I
    :goto_6
    if-lez v1, :cond_e

    .line 1441
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_e

    .line 1442
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1443
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1448
    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1252
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1253
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1254
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1271
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1272
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1273
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1581
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1585
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1586
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1588
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1590
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const-string v3, "KR"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1591
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    const-string v4, "KR"

    invoke-virtual {v0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1592
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_1

    .line 1599
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 1600
    :cond_1
    const-string v3, "JP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1601
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    const-string v4, "JP"

    invoke-virtual {v0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1602
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_2

    .line 1608
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 1610
    :cond_2
    invoke-virtual {v0, v2, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 1613
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    goto :goto_1

    .line 1612
    :catch_0
    move-exception v2

    .line 1614
    :goto_1
    return-object v1

    .line 1582
    .end local v0    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object p0
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 1637
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1638
    .local v0, "len":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1639
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1640
    return-object p0

    .line 1638
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1643
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1645
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 1646
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_3

    .line 1650
    :try_start_0
    const-string v1, "ZZ"

    invoke-virtual {v2, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 1651
    .local v1, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1652
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1654
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v4, :cond_2

    .line 1655
    move-object p2, v3

    .line 1658
    .end local v1    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1657
    :catch_0
    move-exception v1

    .line 1660
    :cond_3
    :goto_1
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1661
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_4

    move-object v3, v1

    goto :goto_2

    :cond_4
    move-object v3, p0

    :goto_2
    return-object v3
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1304
    move v0, p1

    .line 1306
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_2

    .line 1307
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_0

    .line 1308
    const/4 v0, 0x1

    goto :goto_0

    .line 1309
    :cond_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v3, 0x38

    if-ne v1, v3, :cond_1

    .line 1310
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1311
    const/4 v0, 0x2

    goto :goto_0

    .line 1313
    :cond_1
    const/4 v0, 0x0

    .line 1317
    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1328
    return-void

    .line 1322
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 1323
    return-void

    .line 1319
    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 1320
    return-void

    .line 1325
    :pswitch_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1326
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 3
    .param p0, "rawPhoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "formatIdentifier"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1526
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1528
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 1529
    .local v1, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1530
    invoke-virtual {v0, v1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1532
    .end local v1    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    .line 1534
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1496
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1507
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2225
    const-string v0, "PhoneNumberUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCountryIso "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->sCountryDetector:Landroid/location/Country;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->sCountryDetector:Landroid/location/Country;

    if-nez v0, :cond_0

    .line 2227
    const-string v0, "country_detector"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 2229
    .local v0, "detector":Landroid/location/CountryDetector;
    if-eqz v0, :cond_0

    .line 2230
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->sCountryDetector:Landroid/location/Country;

    .line 2234
    .end local v0    # "detector":Landroid/location/CountryDetector;
    :cond_0
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->sCountryDetector:Landroid/location/Country;

    if-nez v0, :cond_1

    .line 2235
    const/4 v0, 0x0

    return-object v0

    .line 2237
    :cond_1
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->sCountryDetector:Landroid/location/Country;

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentIdp(Z)Ljava/lang/String;
    .locals 3
    .param p0, "useNanp"    # Z

    .line 2688
    const/4 v0, 0x0

    .line 2689
    .local v0, "ps":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 2690
    const-string v0, "011"

    goto :goto_0

    .line 2693
    :cond_0
    const-string v1, "gsm.operator.idpstring"

    const-string v2, "+"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2695
    :goto_0
    return-object v0
.end method

.method private static getDefaultVoiceSubId()I
    .locals 1

    .line 3223
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1287
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 4
    .param p0, "country"    # Ljava/lang/String;

    .line 2708
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v0, v0

    .line 2709
    .local v0, "length":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2710
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 2711
    const/4 v1, 0x1

    return v1

    .line 2709
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2714
    .end local v2    # "i":I
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2715
    const/4 v1, 0x2

    return v1

    .line 2717
    :cond_2
    return v1
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 194
    .local v7, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v7, :cond_0

    .line 195
    return-object v1

    .line 198
    :cond_0
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "tel"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "sip"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 204
    :cond_1
    if-nez p1, :cond_2

    .line 205
    return-object v1

    .line 208
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 212
    .local v2, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, "authority":Ljava/lang/String;
    const-string v3, "contacts"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 214
    const-string/jumbo v2, "number"

    .line 219
    .end local v2    # "phoneColumn":Ljava/lang/String;
    .local v11, "phoneColumn":Ljava/lang/String;
    :cond_3
    :goto_0
    move-object v11, v2

    goto :goto_1

    .line 215
    .end local v11    # "phoneColumn":Ljava/lang/String;
    .restart local v2    # "phoneColumn":Ljava/lang/String;
    :cond_4
    const-string v3, "com.android.contacts"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    const-string v2, "data1"

    goto :goto_0

    .line 219
    .end local v2    # "phoneColumn":Ljava/lang/String;
    .restart local v11    # "phoneColumn":Ljava/lang/String;
    :goto_1
    move-object v12, v1

    .line 221
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v12, v1

    .line 223
    if-eqz v12, :cond_5

    .line 224
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 225
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 231
    :cond_5
    if-eqz v12, :cond_6

    .line 232
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 231
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "PhoneNumberUtils"

    const-string v3, "Error getting phone number."

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    .end local v1    # "e":Ljava/lang/RuntimeException;
    if-eqz v12, :cond_6

    goto :goto_2

    .line 236
    :cond_6
    :goto_3
    return-object v0

    .line 231
    :goto_4
    if-eqz v12, :cond_7

    .line 232
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .line 201
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "authority":Ljava/lang/String;
    .end local v11    # "phoneColumn":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_8
    :goto_5
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 764
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 768
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .line 2792
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2793
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_0

    .line 2794
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2796
    :cond_0
    if-gez v0, :cond_1

    .line 2797
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2801
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 410
    .local v0, "origLength":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 411
    .local v1, "pIndex":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 413
    .local v2, "wIndex":I
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v3

    .line 415
    .local v3, "trimIndex":I
    if-gez v3, :cond_0

    .line 416
    add-int/lit8 v4, v0, -0x1

    return v4

    .line 418
    :cond_0
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bcdExtType"    # I

    .line 966
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_3

    .line 970
    aget-byte v1, p1, v0

    const/16 v2, 0xf

    and-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-static {v1, p4}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(BI)C

    move-result v1

    .line 972
    .local v1, "c":C
    if-nez v1, :cond_0

    .line 973
    return-void

    .line 975
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 984
    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v2

    int-to-byte v3, v3

    .line 986
    .local v3, "b":B
    if-ne v3, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    add-int v4, p3, p2

    if-ne v2, v4, :cond_1

    .line 988
    goto :goto_1

    .line 991
    :cond_1
    invoke-static {v3, p4}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(BI)C

    move-result v1

    .line 992
    if-nez v1, :cond_2

    .line 993
    return-void

    .line 996
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 966
    .end local v1    # "c":C
    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    .end local v0    # "i":I
    :cond_3
    :goto_1
    return-void
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .line 777
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 779
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 780
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 782
    .local v1, "length":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    move v3, v2

    move v2, v1

    .line 783
    .local v2, "s":I
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    sub-int v4, v2, v3

    if-gt v4, p1, :cond_1

    .line 785
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 787
    .local v4, "c":C
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    .end local v4    # "c":C
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 790
    .end local v2    # "s":I
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final is12Key(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 135
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .param p0, "countryCallingCodeCandidate"    # I

    .line 3053
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 141
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .line 1089
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1090
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1091
    const/4 v2, 0x0

    return v2

    .line 1089
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1094
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 1762
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 1888
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .line 1746
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1874
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .param p3, "useExactMatch"    # Z

    .line 1987
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1996
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1997
    return v0

    .line 2002
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2004
    const-string v1, ""

    .line 2005
    .local v1, "emergencyNumbers":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v2

    .line 2009
    .local v2, "slotId":I
    if-gtz v2, :cond_2

    const-string/jumbo v3, "ril.ecclist"

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril.ecclist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2011
    .local v3, "ecclist":Ljava/lang/String;
    :goto_0
    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2013
    const-string v4, "PhoneNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " country:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " emergencyNumbers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2018
    const-string/jumbo v4, "ro.ril.ecclist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2020
    const-string v4, ""

    sput-object v4, Landroid/telephony/PhoneNumberUtils;->mModemEmergencyNumber:Ljava/lang/String;

    goto :goto_1

    .line 2025
    :cond_3
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mModemEmergencyNumber:Ljava/lang/String;

    .line 2026
    const-string v4, "PhoneNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mModemEmergencyNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->mModemEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",110,119,120,122"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2028
    const-string v4, "PhoneNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTRA_EMERGNECY_NUMBER slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", emergencyNumbers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_8

    .line 2035
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    move v7, v0

    :goto_2
    if-ge v7, v6, :cond_7

    aget-object v8, v4, v7

    .line 2038
    .local v8, "emergencyNum":Ljava/lang/String;
    if-nez p3, :cond_5

    const-string v9, "BR"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    .line 2043
    :cond_4
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2044
    return v5

    .line 2039
    :cond_5
    :goto_3
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2040
    return v5

    .line 2035
    .end local v8    # "emergencyNum":Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2049
    :cond_7
    return v0

    .line 2052
    :cond_8
    const-string v4, "PhoneNumberUtils"

    const-string v6, "System property doesn\'t provide any emergency numbers. Use embedded logic for determining ones."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    if-gez v2, :cond_9

    const-string v4, "112,911,000,08,110,118,119,999"

    goto :goto_4

    :cond_9
    const-string v4, "112,911"

    :goto_4
    move-object v1, v4

    .line 2060
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    move v7, v0

    :goto_5
    if-ge v7, v6, :cond_c

    aget-object v8, v4, v7

    .line 2061
    .restart local v8    # "emergencyNum":Ljava/lang/String;
    if-eqz p3, :cond_a

    .line 2062
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2063
    return v5

    .line 2066
    :cond_a
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2067
    return v5

    .line 2060
    .end local v8    # "emergencyNum":Ljava/lang/String;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2073
    :cond_c
    if-eqz p2, :cond_e

    .line 2074
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    move-result-object v0

    .line 2075
    .local v0, "info":Lcom/android/i18n/phonenumbers/ShortNumberInfo;
    if-eqz p3, :cond_d

    .line 2076
    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 2078
    :cond_d
    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 2082
    .end local v0    # "info":Lcom/android/i18n/phonenumbers/ShortNumberInfo;
    :cond_e
    return v0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .line 1860
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .line 1963
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .line 1835
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 1080
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    const/4 v0, 0x0

    return v0

    .line 1084
    :cond_0
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1085
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 129
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInternationalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1548
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1549
    return v1

    .line 1553
    :cond_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1557
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1559
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1560
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 1561
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v2

    .line 1562
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v1

    .line 1554
    .end local v0    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_3
    :goto_0
    return v1
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 2108
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 2094
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "useExactMatch"    # Z

    .line 2213
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2214
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLocalEmergencyNumberInternal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    if-nez v0, :cond_0

    .line 2216
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2217
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2218
    const-string v2, "PhoneNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-static {p0, p1, v0, p3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    .line 2189
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isModemEmergencyNumber(Ljava/lang/String;)Z
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .line 3301
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mModemEmergencyNumber:Ljava/lang/String;

    .line 3303
    .local v0, "emergencyNumbers":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3306
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 3309
    .local v5, "emergencyNum":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3310
    const/4 v1, 0x1

    return v1

    .line 3306
    .end local v5    # "emergencyNum":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3314
    :cond_1
    return v2

    .line 3316
    :cond_2
    return v2
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2726
    const/4 v0, 0x0

    .line 2727
    .local v0, "retVal":Z
    if-eqz p0, :cond_1

    .line 2728
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 2729
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 2730
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2731
    const/4 v0, 0x1

    .line 2732
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2733
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2734
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2735
    const/4 v0, 0x0

    .line 2736
    goto :goto_1

    .line 2732
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2742
    .end local v1    # "i":I
    :cond_1
    const-string v1, "isNanp: null dialStr passed in"

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    :cond_2
    :goto_1
    return v0
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 153
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .line 1098
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1099
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1100
    const/4 v2, 0x0

    return v2

    .line 1098
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2751
    const/4 v0, 0x0

    .line 2752
    .local v0, "retVal":Z
    if-eqz p0, :cond_1

    .line 2753
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2754
    .local v1, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2755
    const/4 v0, 0x1

    .line 2757
    .end local v1    # "newDialStr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2758
    :cond_1
    const-string v1, "isOneNanp: null dialStr passed in"

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :goto_0
    return v0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 167
    const/16 v0, 0x70

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 1812
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 1941
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .line 1786
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1915
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 2163
    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 2136
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 147
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 178
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 162
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isToneWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 172
    const/16 v0, 0x77

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 2699
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2700
    const/4 v0, 0x1

    return v0

    .line 2702
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .line 2776
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVoiceMailNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 2273
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 2293
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2294
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2294
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    goto :goto_0

    .line 2304
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    goto :goto_3

    .line 2297
    :cond_0
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2300
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 2301
    .local v2, "vmNumber":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2301
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    move-object v1, v3

    .line 2307
    .local v1, "mdn":Ljava/lang/String;
    nop

    .line 2306
    nop

    .line 2310
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2311
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2313
    return v0

    .line 2317
    :cond_1
    const/4 v3, 0x0

    .line 2318
    .local v3, "compareWithMdn":Z
    if-eqz p0, :cond_2

    .line 2319
    const-string v4, "carrier_config"

    .line 2320
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 2321
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v4, :cond_2

    .line 2322
    invoke-virtual {v4, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 2323
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_2

    .line 2324
    const-string/jumbo v6, "mdn_is_additional_voicemail_number_bool"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2331
    .end local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v5    # "b":Landroid/os/PersistableBundle;
    :cond_2
    if-eqz v3, :cond_5

    .line 2333
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p2, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 2336
    :cond_5
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2304
    .end local v1    # "mdn":Ljava/lang/String;
    .end local v2    # "vmNumber":Ljava/lang/String;
    .end local v3    # "compareWithMdn":Z
    :goto_3
    nop

    .line 2306
    .local v1, "ex":Ljava/lang/SecurityException;
    return v0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .line 2257
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .line 1071
    nop

    .line 1072
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1075
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1076
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1074
    :goto_0
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 397
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2926
    const/4 v0, 0x0

    .line 2927
    .local v0, "state":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "state":I
    :goto_0
    if-ge v0, p1, :cond_9

    .line 2928
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2930
    .local v3, "c":C
    const/16 v4, 0x30

    if-eqz v2, :cond_5

    const/4 v5, 0x2

    const/16 v6, 0x31

    if-eq v2, v5, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    .line 2949
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_8

    return v1

    .line 2944
    :cond_0
    if-ne v3, v6, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    .line 2945
    :cond_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_8

    return v1

    .line 2938
    :cond_2
    if-ne v3, v4, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    .line 2939
    :cond_3
    if-ne v3, v6, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    .line 2940
    :cond_4
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_8

    return v1

    .line 2932
    :cond_5
    const/16 v5, 0x2b

    if-ne v3, v5, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    .line 2933
    :cond_6
    if-ne v3, v4, :cond_7

    const/4 v2, 0x2

    goto :goto_1

    .line 2934
    :cond_7
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_8

    return v1

    .line 2927
    .end local v3    # "c":C
    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2955
    .end local v0    # "i":I
    :cond_9
    const/4 v0, 0x1

    if-eq v2, v0, :cond_b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_b

    const/4 v3, 0x5

    if-ne v2, v3, :cond_a

    goto :goto_2

    :cond_a
    move v0, v1

    nop

    :cond_b
    :goto_2
    return v0
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2965
    const/4 v0, 0x0

    .line 2966
    .local v0, "state":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "state":I
    :goto_0
    if-ge v0, p1, :cond_8

    .line 2967
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2969
    .local v3, "c":C
    const/16 v4, 0x30

    const/16 v5, 0x31

    packed-switch v2, :pswitch_data_0

    .line 3001
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 2996
    :pswitch_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2997
    :cond_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 2983
    :pswitch_1
    if-ne v3, v5, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    .line 2984
    :cond_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 2977
    :pswitch_2
    if-ne v3, v4, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    .line 2978
    :cond_2
    if-ne v3, v5, :cond_3

    const/4 v2, 0x4

    goto :goto_1

    .line 2979
    :cond_3
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 2990
    :pswitch_3
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x6

    goto :goto_1

    .line 2991
    :cond_4
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 2971
    :pswitch_4
    const/16 v5, 0x2b

    if-ne v3, v5, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    .line 2972
    :cond_5
    if-ne v3, v4, :cond_6

    const/4 v2, 0x2

    goto :goto_1

    .line 2973
    :cond_6
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 2966
    .end local v3    # "c":C
    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3005
    .end local v0    # "i":I
    :cond_8
    const/4 v0, 0x6

    if-eq v2, v0, :cond_a

    const/4 v0, 0x7

    if-eq v2, v0, :cond_a

    const/16 v0, 0x8

    if-ne v2, v0, :cond_9

    goto :goto_2

    :cond_9
    goto :goto_3

    :cond_a
    :goto_2
    const/4 v1, 0x1

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 3013
    const/4 v0, 0x0

    .line 3015
    .local v0, "found":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "found":Z
    :goto_0
    if-ge v0, p1, :cond_2

    .line 3016
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3018
    .local v3, "c":C
    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    if-nez v2, :cond_0

    .line 3019
    const/4 v2, 0x1

    goto :goto_1

    .line 3020
    :cond_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3021
    return v1

    .line 3015
    .end local v3    # "c":C
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3025
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method private static minPositive(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 385
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    .line 386
    if-ge p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0

    .line 387
    :cond_1
    if-ltz p0, :cond_2

    .line 388
    return p0

    .line 389
    :cond_2
    if-ltz p1, :cond_3

    .line 390
    return p1

    .line 392
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 1112
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1122
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 1673
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    const-string v0, ""

    return-object v0

    .line 1677
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1678
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1679
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 1680
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1682
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 1683
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1684
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1685
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_2

    .line 1686
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1687
    :cond_2
    const/16 v5, 0x61

    if-lt v3, v5, :cond_3

    const/16 v5, 0x7a

    if-le v3, v5, :cond_4

    :cond_3
    const/16 v5, 0x41

    if-lt v3, v5, :cond_5

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_5

    .line 1688
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1679
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1691
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1141
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "bcdExtType"    # I

    .line 1156
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B
    .locals 18
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z
    .param p2, "bcdExtType"    # I

    move-object/from16 v0, p0

    .line 1165
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1166
    .local v1, "numberLenReal":I
    move v2, v1

    .line 1167
    .local v2, "numberLenEffective":I
    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    const/4 v7, 0x1

    if-eq v4, v5, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1168
    .local v4, "hasPlus":Z
    :goto_0
    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 1170
    :cond_1
    if-nez v2, :cond_2

    const/4 v3, 0x0

    return-object v3

    .line 1172
    :cond_2
    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v5, v5, 0x2

    .line 1173
    .local v5, "resultLen":I
    const/4 v8, 0x1

    .line 1174
    .local v8, "extraBytes":I
    if-eqz p1, :cond_3

    add-int/lit8 v8, v8, 0x1

    .line 1175
    :cond_3
    add-int/2addr v5, v8

    .line 1177
    new-array v9, v5, [B

    .line 1179
    .local v9, "result":[B
    const/4 v10, 0x0

    .line 1180
    .local v10, "digitCount":I
    move v11, v10

    const/4 v10, 0x0

    .local v10, "i":I
    .local v11, "digitCount":I
    :goto_1
    if-ge v10, v1, :cond_6

    .line 1181
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1182
    .local v12, "c":C
    if-ne v12, v3, :cond_4

    .line 1180
    .end local v12    # "c":C
    move/from16 v3, p2

    goto :goto_3

    .line 1183
    .restart local v12    # "c":C
    :cond_4
    and-int/lit8 v13, v11, 0x1

    if-ne v13, v7, :cond_5

    const/4 v13, 0x4

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    .line 1184
    .local v13, "shift":I
    :goto_2
    shr-int/lit8 v14, v11, 0x1

    add-int/2addr v14, v8

    aget-byte v15, v9, v14

    .line 1185
    move/from16 v3, p2

    invoke-static {v12, v3}, Landroid/telephony/PhoneNumberUtils;->charToBCD(CI)I

    move-result v16

    and-int/lit8 v16, v16, 0xf

    shl-int v6, v16, v13

    int-to-byte v6, v6

    or-int/2addr v6, v15

    int-to-byte v6, v6

    aput-byte v6, v9, v14

    .line 1186
    add-int/lit8 v11, v11, 0x1

    .line 1180
    .end local v12    # "c":C
    .end local v13    # "shift":I
    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x2b

    goto :goto_1

    .line 1190
    .end local v10    # "i":I
    :cond_6
    move/from16 v3, p2

    and-int/lit8 v6, v11, 0x1

    if-ne v6, v7, :cond_7

    shr-int/lit8 v6, v11, 0x1

    add-int/2addr v6, v8

    aget-byte v7, v9, v6

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v9, v6

    .line 1192
    :cond_7
    const/4 v6, 0x0

    .line 1193
    .local v6, "offset":I
    if-eqz p1, :cond_8

    add-int/lit8 v7, v6, 0x1

    .local v7, "offset":I
    add-int/lit8 v10, v5, -0x1

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    .line 1194
    .end local v6    # "offset":I
    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :cond_8
    if-eqz v4, :cond_9

    const/16 v7, 0x91

    goto :goto_4

    :cond_9
    const/16 v7, 0x81

    :goto_4
    int-to-byte v7, v7

    aput-byte v7, v9, v6

    .line 1196
    return-object v9
.end method

.method private static processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z

    .line 2853
    move-object v0, p0

    .line 2859
    .local v0, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 2860
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 2861
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 2862
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2864
    .local v1, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2866
    move-object v0, v1

    goto :goto_0

    .line 2869
    :cond_0
    const-string v2, "[+]"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2873
    .end local v1    # "newStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;

    .line 1478
    const/4 v0, 0x0

    .line 1479
    .local v0, "p":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1480
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1481
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1486
    :cond_1
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1702
    .local v0, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    .line 1703
    .local v4, "c":C
    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 1704
    .local v5, "digit":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1705
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1707
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1702
    .end local v4    # "c":C
    .end local v5    # "digit":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1710
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static resetCountryDetectorInfo()V
    .locals 1

    .line 2243
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->sCountryDetector:Landroid/location/Country;

    .line 2244
    return-void
.end method

.method private static splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 2675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2676
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2677
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2678
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto :goto_1

    .line 2679
    :cond_0
    const-string v2, " "

    .line 2677
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2684
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " +"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .line 801
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 803
    :cond_0
    const/16 v0, 0x91

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 807
    :cond_1
    return-object p0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 322
    if-nez p0, :cond_0

    .line 323
    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 326
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 328
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 329
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 331
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 332
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 333
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 334
    :cond_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 335
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 751
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "np":Ljava/lang/String;
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 817
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 818
    const/16 v0, 0x91

    return v0

    .line 821
    :cond_0
    const/16 v0, 0x81

    return v0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .line 3092
    const/4 v0, 0x0

    .line 3093
    .local v0, "state":I
    const/4 v1, 0x0

    .line 3094
    .local v1, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3095
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_10

    .line 3096
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3097
    .local v5, "ch":C
    const/16 v6, 0x30

    const/16 v7, 0x36

    const/16 v8, 0x31

    packed-switch v0, :pswitch_data_0

    .line 3162
    return-object v4

    .line 3156
    :pswitch_0
    if-ne v5, v7, :cond_0

    .line 3157
    new-instance v4, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v6, 0x42

    add-int/lit8 v7, v3, 0x1

    invoke-direct {v4, v6, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v4

    .line 3159
    :cond_0
    return-object v4

    .line 3150
    :pswitch_1
    if-ne v5, v7, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_4

    .line 3151
    :cond_1
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3152
    return-object v4

    .line 3121
    :pswitch_2
    if-ne v5, v8, :cond_2

    const/4 v0, 0x5

    goto/16 :goto_4

    .line 3122
    :cond_2
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3123
    return-object v4

    .line 3113
    :pswitch_3
    if-ne v5, v6, :cond_3

    const/4 v0, 0x3

    goto :goto_4

    .line 3114
    :cond_3
    if-ne v5, v8, :cond_4

    const/4 v0, 0x4

    goto :goto_4

    .line 3115
    :cond_4
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3116
    return-object v4

    .line 3133
    :pswitch_4
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v6

    .line 3134
    .local v6, "ret":I
    if-lez v6, :cond_9

    .line 3135
    mul-int/lit8 v4, v1, 0xa

    add-int v1, v4, v6

    .line 3136
    const/16 v4, 0x64

    if-ge v1, v4, :cond_8

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 3139
    :cond_5
    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    goto :goto_1

    .line 3142
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3140
    :cond_7
    :goto_1
    const/4 v0, 0x6

    goto :goto_3

    .line 3137
    :cond_8
    :goto_2
    new-instance v4, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v3, 0x1

    invoke-direct {v4, v1, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v4

    .line 3144
    :cond_9
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3145
    return-object v4

    .line 3148
    .end local v6    # "ret":I
    :cond_a
    :goto_3
    goto :goto_4

    .line 3099
    :pswitch_5
    const/16 v7, 0x2b

    if-ne v5, v7, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    .line 3100
    :cond_b
    if-ne v5, v6, :cond_c

    const/4 v0, 0x2

    goto :goto_4

    .line 3101
    :cond_c
    if-ne v5, v8, :cond_e

    .line 3102
    if-eqz p1, :cond_d

    .line 3103
    const/16 v0, 0x8

    goto :goto_4

    .line 3105
    :cond_d
    return-object v4

    .line 3107
    :cond_e
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3108
    return-object v4

    .line 3095
    .end local v5    # "ch":C
    :cond_f
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 3166
    .end local v3    # "i":I
    :cond_10
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .param p0, "ch"    # C

    .line 3063
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 3064
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 3066
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .line 3179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3180
    .local v0, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_2

    .line 3181
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3182
    .local v3, "ch":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_0

    .line 3183
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 3184
    :cond_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3185
    return v2

    .line 3180
    .end local v3    # "ch":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3188
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public static ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2615
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .locals 0
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2632
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 2633
    return-void
.end method
