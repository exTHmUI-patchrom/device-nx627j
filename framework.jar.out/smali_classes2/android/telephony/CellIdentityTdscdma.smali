.class public final Landroid/telephony/CellIdentityTdscdma;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityTdscdma.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCid:I

.field private final mCpid:I

.field private final mLac:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    .line 203
    new-instance v0, Landroid/telephony/CellIdentityTdscdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityTdscdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 43
    sget-object v1, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    .line 45
    iput v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    .line 46
    iput v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    .line 47
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 8
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "cpid"    # I

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 193
    sget-object v0, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    .line 199
    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityTdscdma;)V
    .locals 8
    .param p1, "cid"    # Landroid/telephony/CellIdentityTdscdma;

    .line 99
    iget-object v1, p1, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    iget-object v2, p1, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    iget v3, p1, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    iget v4, p1, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    iget v5, p1, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    iget-object v6, p1, Landroid/telephony/CellIdentityTdscdma;->mAlphaLong:Ljava/lang/String;

    iget-object v7, p1, Landroid/telephony/CellIdentityTdscdma;->mAlphaShort:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "cpid"    # I

    .line 73
    sget-object v1, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput p3, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    .line 75
    iput p4, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    .line 76
    iput p5, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "cpid"    # I
    .param p6, "alphal"    # Ljava/lang/String;
    .param p7, "alphas"    # Ljava/lang/String;

    .line 92
    sget-object v1, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput p3, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    .line 94
    iput p4, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    .line 95
    iput p5, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    .line 96
    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityTdscdma;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 219
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityTdscdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityTdscdma;
    .locals 1

    .line 104
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityTdscdma;-><init>(Landroid/telephony/CellIdentityTdscdma;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 152
    return v0

    .line 155
    :cond_0
    instance-of v1, p1, Landroid/telephony/CellIdentityTdscdma;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 156
    return v2

    .line 159
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityTdscdma;

    .line 160
    .local v1, "o":Landroid/telephony/CellIdentityTdscdma;
    iget-object v3, p0, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    .line 161
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    iget v4, v1, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    iget v4, v1, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    iget v4, v1, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    if-ne v3, v4, :cond_2

    .line 165
    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCid()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    return v0
.end method

.method public getCpid()I
    .locals 1

    .line 141
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .line 127
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    return v0
.end method

.method public getMccString()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMncString()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":{ mMcc="

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMnc="

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLac="

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCid="

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCpid="

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAlphaLong="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAlphaShort="

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 185
    const/4 v0, 0x5

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return-void
.end method
