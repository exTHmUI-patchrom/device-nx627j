.class public final Landroid/telephony/CellSignalStrengthGsm;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final GSM_SIGNAL_STRENGTH_GOOD:I = 0x8

.field private static final GSM_SIGNAL_STRENGTH_GREAT:I = 0xc

.field private static final GSM_SIGNAL_STRENGTH_MODERATE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthGsm"


# instance fields
.field private mBitErrorRate:I

.field private mSignalStrength:I

.field private mTimingAdvance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 43
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "ss"    # I
    .param p2, "ber"    # I

    .line 48
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    .line 49
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "ss"    # I
    .param p2, "ber"    # I
    .param p3, "ta"    # I

    .line 52
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 54
    iput p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 55
    iput p3, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 195
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 200
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthGsm$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellSignalStrengthGsm$1;

    .line 28
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthGsm;

    .line 59
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;->copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V

    .line 61
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 227
    const-string v0, "CellSignalStrengthGsm"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    .line 28
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthGsm;
    .locals 1

    .line 73
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthGsm;

    .line 65
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 66
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 67
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 68
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 158
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellSignalStrengthGsm;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .local v1, "s":Landroid/telephony/CellSignalStrengthGsm;
    nop

    .line 160
    nop

    .line 163
    if-nez p1, :cond_0

    .line 164
    return v0

    .line 167
    :cond_0
    iget v2, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    iget v3, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 159
    .end local v1    # "s":Landroid/telephony/CellSignalStrengthGsm;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public getAsuLevel()I
    .locals 1

    .line 143
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 145
    .local v0, "level":I
    return v0
.end method

.method public getDbm()I
    .locals 4

    .line 122
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 123
    .local v0, "level":I
    const v1, 0x7fffffff

    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 124
    .local v2, "asu":I
    :goto_0
    if-eq v2, v1, :cond_1

    .line 125
    const/16 v1, -0x71

    const/4 v3, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .local v1, "dBm":I
    goto :goto_1

    .line 127
    .end local v1    # "dBm":I
    :cond_1
    nop

    .line 130
    .restart local v1    # "dBm":I
    :goto_1
    return v1
.end method

.method public getLevel()I
    .locals 2

    .line 95
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 96
    .local v0, "asu":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    .line 98
    :cond_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    .line 99
    :cond_2
    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    .line 100
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 96
    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 100
    .local v1, "level":I
    :goto_1
    nop

    .line 102
    return v1
.end method

.method public getTimingAdvance()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDefaultValues()V
    .locals 1

    .line 79
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 80
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 81
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthGsm: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 186
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return-void
.end method
