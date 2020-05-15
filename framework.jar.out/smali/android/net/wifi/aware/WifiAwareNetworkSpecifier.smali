.class public final Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiAwareNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_SPECIFIER_TYPE_IB:I = 0x0

.field public static final NETWORK_SPECIFIER_TYPE_IB_ANY_PEER:I = 0x1

.field public static final NETWORK_SPECIFIER_TYPE_MAX_VALID:I = 0x3

.field public static final NETWORK_SPECIFIER_TYPE_OOB:I = 0x2

.field public static final NETWORK_SPECIFIER_TYPE_OOB_ANY_PEER:I = 0x3


# instance fields
.field public final clientId:I

.field public final passphrase:Ljava/lang/String;

.field public final peerId:I

.field public final peerMac:[B

.field public final pmk:[B

.field public final requestorUid:I

.field public final role:I

.field public final sessionId:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII[B[BLjava/lang/String;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "role"    # I
    .param p3, "clientId"    # I
    .param p4, "sessionId"    # I
    .param p5, "peerId"    # I
    .param p6, "peerMac"    # [B
    .param p7, "pmk"    # [B
    .param p8, "passphrase"    # Ljava/lang/String;
    .param p9, "requestorUid"    # I

    .line 130
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 131
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 132
    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 133
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 134
    iput p4, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 135
    iput p5, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 136
    iput-object p6, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 137
    iput-object p7, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 138
    iput-object p8, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 139
    iput p9, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    .line 140
    return-void
.end method


# virtual methods
.method public assertValidFromUid(I)V
    .locals 2
    .param p1, "requestorUid"    # I

    .line 267
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    if-ne v0, p1, :cond_0

    .line 270
    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "mismatched UIDs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 223
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 224
    return v0

    .line 227
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 228
    return v2

    .line 231
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 233
    .local v1, "lhs":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 238
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 239
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 240
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 233
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 205
    const/16 v0, 0x11

    .line 207
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    add-int/2addr v2, v3

    .line 208
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    add-int/2addr v0, v3

    .line 209
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    add-int/2addr v2, v3

    .line 210
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    add-int/2addr v0, v3

    .line 211
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    add-int/2addr v2, v3

    .line 212
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    .line 213
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    .line 214
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 215
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    add-int/2addr v1, v2

    .line 217
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isOutOfBand()Z
    .locals 2

    .line 171
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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

.method public satisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 1
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 196
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    if-eqz v0, :cond_0

    .line 197
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    invoke-virtual {v0, p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->satisfiesAwareNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Z

    move-result v0

    return v0

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiAwareNetworkSpecifier ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clientId="

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerId="

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerMac="

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    :cond_0
    const-string v1, "<non-null>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pmk="

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    if-nez v1, :cond_1

    const-string v1, "<null>"

    goto :goto_1

    :cond_1
    const-string v1, "<non-null>"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", passphrase="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "<null>"

    goto :goto_2

    :cond_2
    const-string v1, "<non-null>"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestorUid="

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 181
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 187
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 188
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->requestorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return-void
.end method
