.class public Lcom/android/internal/telephony/uicc/PlmnActRecord;
.super Ljava/lang/Object;
.source "PlmnActRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCESS_TECH_CDMA2000_1XRTT:I = 0x10

.field public static final ACCESS_TECH_CDMA2000_HRPD:I = 0x20

.field public static final ACCESS_TECH_EUTRAN:I = 0x4000

.field public static final ACCESS_TECH_GSM:I = 0x80

.field public static final ACCESS_TECH_GSM_COMPACT:I = 0x40

.field public static final ACCESS_TECH_RESERVED:I = 0x3f0f

.field public static final ACCESS_TECH_UTRAN:I = 0x8000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/uicc/PlmnActRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENCODED_LENGTH:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "PlmnActRecord"

.field private static final VDBG:Z = false


# instance fields
.field public final accessTechs:I

.field public final plmn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/android/internal/telephony/uicc/PlmnActRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/PlmnActRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "accessTechs"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/internal/telephony/uicc/PlmnActRecord$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/internal/telephony/uicc/PlmnActRecord$1;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/PlmnActRecord;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    .line 67
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    .line 68
    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    .line 69
    return-void
.end method

.method private accessTechString()Ljava/lang/String;
    .locals 6

    .line 77
    iget v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    if-nez v0, :cond_0

    .line 78
    const-string v0, "NONE"

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "UTRAN|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_2

    .line 86
    const-string v1, "EUTRAN|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    .line 89
    const-string v1, "GSM|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    .line 92
    const-string v1, "GSM_COMPACT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 95
    const-string v1, "CDMA2000_HRPD|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 98
    const-string v1, "CDMA2000_1XRTT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, v1, 0x3f0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    .line 101
    const-string v1, "UNKNOWN:%x|"

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v5, v5, 0x3f0f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;
    .locals 5
    .param p0, "recordBytes"    # [B

    .line 116
    if-eqz p0, :cond_2

    array-length v0, p0

    if-eqz v0, :cond_2

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x5

    .line 125
    .local v0, "numRecords":I
    new-array v1, v0, [Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 127
    .local v1, "records":[Lcom/android/internal/telephony/uicc/PlmnActRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 128
    new-instance v3, Lcom/android/internal/telephony/uicc/PlmnActRecord;

    mul-int/lit8 v4, v2, 0x5

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/PlmnActRecord;-><init>([BI)V

    aput-object v3, v1, v2

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 118
    .end local v0    # "numRecords":I
    .end local v1    # "records":[Lcom/android/internal/telephony/uicc/PlmnActRecord;
    :cond_2
    :goto_1
    const-string v0, "PlmnActRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed PlmnActRecord, bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const/4 v2, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 109
    const-string v0, "{PLMN=%s,AccessTechs=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return-void
.end method
