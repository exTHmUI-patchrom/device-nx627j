.class public final Landroid/telephony/CellSignalStrengthLte;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthLte"


# instance fields
.field private mCqi:I

.field private mRsrp:I

.field private mRsrq:I

.field private mRssnr:I

.field private mSignalStrength:I

.field private mTimingAdvance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 266
    new-instance v0, Landroid/telephony/CellSignalStrengthLte$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 42
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->setDefaultValues()V

    .line 43
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "signalStrength"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqi"    # I
    .param p6, "timingAdvance"    # I

    .line 47
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 48
    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 49
    iput p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 50
    iput p3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 51
    iput p4, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 52
    iput p5, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 53
    iput p6, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 244
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 249
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 250
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 251
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellSignalStrengthLte$1;

    .line 28
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .line 57
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte;->copyFrom(Landroid/telephony/CellSignalStrengthLte;)V

    .line 59
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 283
    const-string v0, "CellSignalStrengthLte"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    .line 28
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    .line 74
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .line 63
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 64
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 65
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 66
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 67
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 68
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 69
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 194
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellSignalStrengthLte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .local v1, "s":Landroid/telephony/CellSignalStrengthLte;
    nop

    .line 196
    nop

    .line 199
    if-nez p1, :cond_0

    .line 200
    return v0

    .line 203
    :cond_0
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 195
    .end local v1    # "s":Landroid/telephony/CellSignalStrengthLte;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public getAsuLevel()I
    .locals 3

    .line 164
    const/16 v0, 0x63

    .line 165
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v1

    .line 166
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0x63

    goto :goto_0

    .line 167
    :cond_0
    const/16 v2, -0x8c

    if-gt v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_1
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_2

    const/16 v0, 0x61

    goto :goto_0

    .line 169
    :cond_2
    add-int/lit16 v0, v1, 0x8c

    .line 171
    :goto_0
    return v0
.end method

.method public getCqi()I
    .locals 1

    .line 147
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    return v0
.end method

.method public getDbm()I
    .locals 1

    .line 155
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public getLevel()I
    .locals 5

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "levelRsrp":I
    const/4 v1, 0x0

    .line 96
    .local v1, "levelRssnr":I
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_0
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v4, -0x5f

    if-lt v2, v4, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 98
    :cond_1
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v4, -0x69

    if-lt v2, v4, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 99
    :cond_2
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v4, -0x73

    if-lt v2, v4, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 100
    :cond_3
    const/4 v0, 0x1

    .line 103
    :goto_0
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v2, v3, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    .line 104
    :cond_4
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v4, 0x2d

    if-lt v2, v4, :cond_5

    const/4 v1, 0x4

    goto :goto_1

    .line 105
    :cond_5
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v4, 0xa

    if-lt v2, v4, :cond_6

    const/4 v1, 0x3

    goto :goto_1

    .line 106
    :cond_6
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v4, -0x1e

    if-lt v2, v4, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    .line 107
    :cond_7
    const/4 v1, 0x1

    .line 110
    :goto_1
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v2, v3, :cond_8

    .line 111
    move v2, v1

    .local v2, "level":I
    :goto_2
    goto :goto_3

    .line 112
    .end local v2    # "level":I
    :cond_8
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v2, v3, :cond_9

    .line 113
    move v2, v0

    goto :goto_2

    .line 115
    :cond_9
    if-ge v1, v0, :cond_a

    move v2, v1

    goto :goto_3

    :cond_a
    move v2, v0

    .line 119
    .restart local v2    # "level":I
    :goto_3
    return v2
.end method

.method public getRsrp()I
    .locals 1

    .line 140
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public getRsrq()I
    .locals 1

    .line 126
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    return v0
.end method

.method public getRssnr()I
    .locals 1

    .line 133
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    return v0
.end method

.method public getTimingAdvance()I
    .locals 1

    .line 181
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 186
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDefaultValues()V
    .locals 1

    .line 80
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 81
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 82
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 83
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 84
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 85
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthLte: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rssnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 229
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    const v4, 0x7fffffff

    if-eq v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-eq v1, v4, :cond_1

    move v2, v3

    nop

    :cond_1
    mul-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    return-void
.end method
