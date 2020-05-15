.class public Landroid/telephony/SmsCbLocation;
.super Ljava/lang/Object;
.source "SmsCbLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mPlmn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Landroid/telephony/SmsCbLocation$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbLocation$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 45
    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 55
    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "lac"    # I
    .param p3, "cid"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 64
    iput p2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 65
    iput p3, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 112
    return v0

    .line 114
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/telephony/SmsCbLocation;

    if-nez v2, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/SmsCbLocation;

    .line 118
    .local v2, "other":Landroid/telephony/SmsCbLocation;
    iget-object v3, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iget v4, v2, Landroid/telephony/SmsCbLocation;->mLac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    iget v4, v2, Landroid/telephony/SmsCbLocation;->mCid:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 115
    .end local v2    # "other":Landroid/telephony/SmsCbLocation;
    :cond_3
    :goto_1
    return v1
.end method

.method public getCid()I
    .locals 1

    .line 98
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .line 90
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 104
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    add-int/2addr v1, v2

    .line 105
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    add-int/2addr v0, v2

    .line 106
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public isInLocationArea(Landroid/telephony/SmsCbLocation;)Z
    .locals 4
    .param p1, "area"    # Landroid/telephony/SmsCbLocation;

    .line 133
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    iget v3, p1, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, v3, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iget v2, p1, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, v2, :cond_1

    .line 137
    return v1

    .line 139
    :cond_1
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInLocationArea(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "lac"    # I
    .param p3, "cid"    # I

    .line 151
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 152
    return v1

    .line 155
    :cond_0
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, p2, :cond_1

    .line 156
    return v1

    .line 159
    :cond_1
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, p3, :cond_2

    .line 160
    return v1

    .line 163
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 174
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return-void
.end method
