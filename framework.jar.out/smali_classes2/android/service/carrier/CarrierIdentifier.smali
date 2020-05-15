.class public Landroid/service/carrier/CarrierIdentifier;
.super Ljava/lang/Object;
.source "CarrierIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierIdentifier$MatchType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGid1:Ljava/lang/String;

.field private mGid2:Ljava/lang/String;

.field private mIccid:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mSpn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Landroid/service/carrier/CarrierIdentifier$1;

    invoke-direct {v0}, Landroid/service/carrier/CarrierIdentifier$1;-><init>()V

    sput-object v0, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Landroid/service/carrier/CarrierIdentifier;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mIccid:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2I"    # Ljava/lang/String;
    .param p7, "iccid"    # Ljava/lang/String;

    .line 68
    invoke-direct/range {p0 .. p6}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p7, p0, Landroid/service/carrier/CarrierIdentifier;->mIccid:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "mccMnc"    # [B
    .param p2, "gid1"    # Ljava/lang/String;
    .param p3, "gid2"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 85
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "hex":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    new-array v3, v1, [C

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    aput-char v5, v3, v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v7, 0x2

    aput-char v5, v3, v7

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x46

    const/4 v5, 0x4

    const/4 v8, 0x5

    if-ne v2, v3, :cond_0

    .line 88
    new-instance v1, Ljava/lang/String;

    new-array v2, v7, [C

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v4

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_0
    new-instance v2, Ljava/lang/String;

    new-array v1, v1, [C

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v7

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    .line 92
    :goto_0
    iput-object p2, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mIccid:Ljava/lang/String;

    .line 97
    return-void

    .line 82
    .end local v0    # "hex":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MCC & MNC must be set by a 3-byte array: byte["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 148
    return v0

    .line 150
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/carrier/CarrierIdentifier;

    .line 155
    .local v2, "that":Landroid/service/carrier/CarrierIdentifier;
    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    .line 156
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 157
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    .line 158
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    .line 159
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    .line 160
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mIccid:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mIccid:Ljava/lang/String;

    .line 161
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 155
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 151
    .end local v2    # "that":Landroid/service/carrier/CarrierIdentifier;
    :cond_3
    :goto_1
    return v1
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mIccid:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getSpn()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 166
    const/4 v0, 0x1

    .line 167
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 168
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 169
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 170
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 171
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 172
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 173
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-object v2, p0, Landroid/service/carrier/CarrierIdentifier;->mIccid:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 174
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mIccid:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierIdentifier{mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",gid1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",gid2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",iccid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mIccid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 184
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mIccid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    return-void
.end method
