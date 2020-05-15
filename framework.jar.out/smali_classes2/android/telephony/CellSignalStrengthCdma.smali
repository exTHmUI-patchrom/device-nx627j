.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 359
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 41
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    .line 42
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I
    .param p3, "evdoDbm"    # I
    .param p4, "evdoEcio"    # I
    .param p5, "evdoSnr"    # I

    .line 65
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 68
    const/16 v0, 0x78

    const v1, 0x7fffffff

    if-lez p1, :cond_0

    if-ge p1, v0, :cond_0

    neg-int v2, p1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 69
    const/16 v2, 0xa0

    if-lez p2, :cond_1

    if-ge p2, v2, :cond_1

    neg-int v3, p2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iput v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 71
    if-lez p3, :cond_2

    if-ge p3, v0, :cond_2

    neg-int v0, p3

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 72
    if-lez p4, :cond_3

    if-ge p4, v2, :cond_3

    neg-int v0, p4

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 73
    if-lez p5, :cond_4

    const/16 v0, 0x8

    if-gt p5, v0, :cond_4

    move v1, p5

    nop

    :cond_4
    iput v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 339
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellSignalStrengthCdma$1;

    .line 28
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 77
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    .line 79
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 376
    const-string v0, "CellSignalStrengthCdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    .line 28
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthCdma;
    .locals 1

    .line 93
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 83
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 84
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 85
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 86
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 87
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 88
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 295
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellSignalStrengthCdma;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .local v1, "s":Landroid/telephony/CellSignalStrengthCdma;
    nop

    .line 297
    nop

    .line 300
    if-nez p1, :cond_0

    .line 301
    return v0

    .line 304
    :cond_0
    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget v3, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 296
    .end local v1    # "s":Landroid/telephony/CellSignalStrengthCdma;
    :catch_0
    move-exception v1

    .line 297
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public getAsuLevel()I
    .locals 7

    .line 134
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 135
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    .line 139
    .local v1, "cdmaEcio":I
    const/16 v2, 0x63

    const/16 v3, -0x64

    const/16 v4, -0x5a

    const v5, 0x7fffffff

    if-ne v0, v5, :cond_0

    const/16 v6, 0x63

    .local v6, "cdmaAsuLevel":I
    :goto_0
    goto :goto_1

    .line 140
    .end local v6    # "cdmaAsuLevel":I
    :cond_0
    const/16 v6, -0x4b

    if-lt v0, v6, :cond_1

    const/16 v6, 0x10

    goto :goto_0

    .line 141
    :cond_1
    const/16 v6, -0x52

    if-lt v0, v6, :cond_2

    const/16 v6, 0x8

    goto :goto_0

    .line 142
    :cond_2
    if-lt v0, v4, :cond_3

    const/4 v6, 0x4

    goto :goto_0

    .line 143
    :cond_3
    const/16 v6, -0x5f

    if-lt v0, v6, :cond_4

    const/4 v6, 0x2

    goto :goto_0

    .line 144
    :cond_4
    if-lt v0, v3, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    .line 145
    :cond_5
    move v6, v2

    .line 148
    .restart local v6    # "cdmaAsuLevel":I
    :goto_1
    if-ne v1, v5, :cond_6

    const/16 v2, 0x63

    .local v2, "ecioAsuLevel":I
    :goto_2
    goto :goto_3

    .line 149
    .end local v2    # "ecioAsuLevel":I
    :cond_6
    if-lt v1, v4, :cond_7

    const/16 v2, 0x10

    goto :goto_2

    .line 150
    :cond_7
    if-lt v1, v3, :cond_8

    const/16 v2, 0x8

    goto :goto_2

    .line 151
    :cond_8
    const/16 v3, -0x73

    if-lt v1, v3, :cond_9

    const/4 v2, 0x4

    goto :goto_2

    .line 152
    :cond_9
    const/16 v3, -0x82

    if-lt v1, v3, :cond_a

    const/4 v2, 0x2

    goto :goto_2

    .line 153
    :cond_a
    const/16 v3, -0x96

    if-lt v1, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_2

    .line 154
    :cond_b
    nop

    .line 156
    .restart local v2    # "ecioAsuLevel":I
    :goto_3
    if-ge v6, v2, :cond_c

    move v3, v6

    goto :goto_4

    :cond_c
    move v3, v2

    .line 158
    .local v3, "level":I
    :goto_4
    return v3
.end method

.method public getCdmaDbm()I
    .locals 1

    .line 234
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .line 245
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 5

    .line 165
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 166
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    .line 170
    .local v1, "cdmaEcio":I
    const/4 v2, 0x0

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_0

    const/4 v4, 0x0

    .local v4, "levelDbm":I
    :goto_0
    goto :goto_1

    .line 171
    .end local v4    # "levelDbm":I
    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    .line 172
    :cond_1
    const/16 v4, -0x55

    if-lt v0, v4, :cond_2

    const/4 v4, 0x3

    goto :goto_0

    .line 173
    :cond_2
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    .line 174
    :cond_3
    const/16 v4, -0x64

    if-lt v0, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    .line 175
    :cond_4
    move v4, v2

    .line 178
    .restart local v4    # "levelDbm":I
    :goto_1
    if-ne v1, v3, :cond_5

    const/4 v2, 0x0

    .local v2, "levelEcio":I
    :goto_2
    goto :goto_3

    .line 179
    .end local v2    # "levelEcio":I
    :cond_5
    const/16 v3, -0x5a

    if-lt v1, v3, :cond_6

    const/4 v2, 0x4

    goto :goto_2

    .line 180
    :cond_6
    const/16 v3, -0x6e

    if-lt v1, v3, :cond_7

    const/4 v2, 0x3

    goto :goto_2

    .line 181
    :cond_7
    const/16 v3, -0x82

    if-lt v1, v3, :cond_8

    const/4 v2, 0x2

    goto :goto_2

    .line 182
    :cond_8
    const/16 v3, -0x96

    if-lt v1, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    .line 183
    :cond_9
    nop

    .line 185
    .restart local v2    # "levelEcio":I
    :goto_3
    if-ge v4, v2, :cond_a

    move v3, v4

    goto :goto_4

    :cond_a
    move v3, v2

    .line 187
    .local v3, "level":I
    :goto_4
    return v3
.end method

.method public getDbm()I
    .locals 3

    .line 223
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 224
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v1

    .line 227
    .local v1, "evdoDbm":I
    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    return v2
.end method

.method public getEvdoDbm()I
    .locals 1

    .line 256
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .line 267
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 5

    .line 194
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    .line 195
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    .line 199
    .local v1, "evdoSnr":I
    const/4 v2, 0x0

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_0

    const/4 v4, 0x0

    .local v4, "levelEvdoDbm":I
    :goto_0
    goto :goto_1

    .line 200
    .end local v4    # "levelEvdoDbm":I
    :cond_0
    const/16 v4, -0x41

    if-lt v0, v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    .line 201
    :cond_1
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_2

    const/4 v4, 0x3

    goto :goto_0

    .line 202
    :cond_2
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    .line 203
    :cond_3
    const/16 v4, -0x69

    if-lt v0, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    .line 204
    :cond_4
    move v4, v2

    .line 206
    .restart local v4    # "levelEvdoDbm":I
    :goto_1
    if-ne v1, v3, :cond_5

    const/4 v2, 0x0

    .local v2, "levelEvdoSnr":I
    :goto_2
    goto :goto_3

    .line 207
    .end local v2    # "levelEvdoSnr":I
    :cond_5
    const/4 v3, 0x7

    if-lt v1, v3, :cond_6

    const/4 v2, 0x4

    goto :goto_2

    .line 208
    :cond_6
    const/4 v3, 0x5

    if-lt v1, v3, :cond_7

    const/4 v2, 0x3

    goto :goto_2

    .line 209
    :cond_7
    const/4 v3, 0x3

    if-lt v1, v3, :cond_8

    const/4 v2, 0x2

    goto :goto_2

    .line 210
    :cond_8
    const/4 v3, 0x1

    if-lt v1, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    .line 211
    :cond_9
    nop

    .line 213
    .restart local v2    # "levelEvdoSnr":I
    :goto_3
    if-ge v4, v2, :cond_a

    move v3, v4

    goto :goto_4

    :cond_a
    move v3, v2

    .line 215
    .local v3, "level":I
    :goto_4
    return v3
.end method

.method public getEvdoSnr()I
    .locals 1

    .line 278
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return v0
.end method

.method public getLevel()I
    .locals 3

    .line 113
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v0

    .line 114
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v1

    .line 115
    .local v1, "evdoLevel":I
    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v2

    .local v2, "level":I
    :goto_0
    goto :goto_1

    .line 118
    .end local v2    # "level":I
    :cond_0
    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v2

    goto :goto_0

    .line 123
    :cond_1
    if-ge v0, v1, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    .line 126
    .restart local v2    # "level":I
    :goto_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 287
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCdmaDbm(I)V
    .locals 0
    .param p1, "cdmaDbm"    # I

    .line 238
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 239
    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0
    .param p1, "cdmaEcio"    # I

    .line 249
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 250
    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    .line 99
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 100
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 101
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 102
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 103
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 104
    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0
    .param p1, "evdoDbm"    # I

    .line 260
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 261
    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0
    .param p1, "evdoEcio"    # I

    .line 271
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 272
    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0
    .param p1, "evdoSnr"    # I

    .line 282
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cdmaEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 328
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    return-void
.end method
