.class public final Landroid/telephony/CellSignalStrengthWcdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthWcdma"

.field private static final WCDMA_SIGNAL_STRENGTH_GOOD:I = 0x8

.field private static final WCDMA_SIGNAL_STRENGTH_GREAT:I = 0xc

.field private static final WCDMA_SIGNAL_STRENGTH_MODERATE:I = 0x5


# instance fields
.field private mBitErrorRate:I

.field private mSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 42
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "ss"    # I
    .param p2, "ber"    # I

    .line 46
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 47
    iput p1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    .line 48
    iput p2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 173
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthWcdma$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellSignalStrengthWcdma$1;

    .line 28
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthWcdma;

    .line 52
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;->copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V

    .line 54
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 204
    const-string v0, "CellSignalStrengthWcdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    .line 28
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->copy()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthWcdma;
    .locals 1

    .line 65
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthWcdma;

    .line 58
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    .line 59
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 60
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellSignalStrengthWcdma;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .local v1, "s":Landroid/telephony/CellSignalStrengthWcdma;
    nop

    .line 141
    nop

    .line 144
    if-nez p1, :cond_0

    .line 145
    return v0

    .line 148
    :cond_0
    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 140
    .end local v1    # "s":Landroid/telephony/CellSignalStrengthWcdma;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public getAsuLevel()I
    .locals 1

    .line 124
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    .line 126
    .local v0, "level":I
    return v0
.end method

.method public getDbm()I
    .locals 4

    .line 103
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    .line 104
    .local v0, "level":I
    const v1, 0x7fffffff

    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 105
    .local v2, "asu":I
    :goto_0
    if-eq v2, v1, :cond_1

    .line 106
    const/16 v1, -0x71

    const/4 v3, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .local v1, "dBm":I
    goto :goto_1

    .line 108
    .end local v1    # "dBm":I
    :cond_1
    nop

    .line 111
    .restart local v1    # "dBm":I
    :goto_1
    return v1
.end method

.method public getLevel()I
    .locals 2

    .line 86
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    .line 87
    .local v0, "asu":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    .line 89
    :cond_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    .line 90
    :cond_2
    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    .line 91
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 87
    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 91
    .local v1, "level":I
    :goto_1
    nop

    .line 93
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDefaultValues()V
    .locals 1

    .line 71
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    .line 72
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthWcdma: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 165
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void
.end method
