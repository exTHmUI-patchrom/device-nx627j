.class public final Landroid/net/wifi/aware/SubscribeConfig;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/SubscribeConfig$Builder;,
        Landroid/net/wifi/aware/SubscribeConfig$SubscribeTypes;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/SubscribeConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBSCRIBE_TYPE_ACTIVE:I = 0x1

.field public static final SUBSCRIBE_TYPE_PASSIVE:I


# instance fields
.field public final mEnableTerminateNotification:Z

.field public final mMatchFilter:[B

.field public final mMaxDistanceMm:I

.field public final mMaxDistanceMmSet:Z

.field public final mMinDistanceMm:I

.field public final mMinDistanceMmSet:Z

.field public final mServiceName:[B

.field public final mServiceSpecificInfo:[B

.field public final mSubscribeType:I

.field public final mTtlSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Landroid/net/wifi/aware/SubscribeConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/SubscribeConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[B[BIIZZIZI)V
    .locals 0
    .param p1, "serviceName"    # [B
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "subscribeType"    # I
    .param p5, "ttlSec"    # I
    .param p6, "enableTerminateNotification"    # Z
    .param p7, "minDistanceMmSet"    # Z
    .param p8, "minDistanceMm"    # I
    .param p9, "maxDistanceMmSet"    # Z
    .param p10, "maxDistanceMm"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    .line 100
    iput-object p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 101
    iput-object p3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    .line 102
    iput p4, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    .line 103
    iput p5, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    .line 104
    iput-boolean p6, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    .line 105
    iput p8, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    .line 106
    iput-boolean p7, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    .line 107
    iput p10, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    .line 108
    iput-boolean p9, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    .line 109
    return-void
.end method


# virtual methods
.method public assertValid(Landroid/net/wifi/aware/Characteristics;Z)V
    .locals 5
    .param p1, "characteristics"    # Landroid/net/wifi/aware/Characteristics;
    .param p2, "rttSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validateServiceName([B)V

    .line 231
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 235
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ltz v0, :cond_f

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-gt v0, v1, :cond_f

    .line 238
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    if-ltz v0, :cond_e

    .line 242
    if-eqz p1, :cond_5

    .line 243
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceNameLength()I

    move-result v0

    .line 244
    .local v0, "maxServiceNameLength":I
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    array-length v1, v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service name longer than supported by device characteristics"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceSpecificInfoLength()I

    move-result v1

    .line 249
    .local v1, "maxServiceSpecificInfoLength":I
    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    array-length v2, v2

    if-gt v2, v1, :cond_2

    goto :goto_1

    .line 251
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Service specific info longer than supported by device characteristics"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxMatchFilterLength()I

    move-result v2

    .line 255
    .local v2, "maxMatchFilterLength":I
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    array-length v3, v3

    if-gt v3, v2, :cond_4

    .end local v0    # "maxServiceNameLength":I
    .end local v1    # "maxServiceSpecificInfoLength":I
    .end local v2    # "maxMatchFilterLength":I
    goto :goto_2

    .line 257
    .restart local v0    # "maxServiceNameLength":I
    .restart local v1    # "maxServiceSpecificInfoLength":I
    .restart local v2    # "maxMatchFilterLength":I
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Match filter longer than supported by device characteristics"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    .end local v0    # "maxServiceNameLength":I
    .end local v1    # "maxServiceSpecificInfoLength":I
    .end local v2    # "maxMatchFilterLength":I
    :cond_5
    :goto_2
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    if-ltz v0, :cond_6

    goto :goto_3

    .line 263
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_7
    :goto_3
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    if-ltz v0, :cond_8

    goto :goto_4

    .line 266
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_9
    :goto_4
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    if-le v0, v1, :cond_a

    goto :goto_5

    .line 269
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum distance must be greater than minimum distance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_b
    :goto_5
    if-nez p2, :cond_d

    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-nez v0, :cond_c

    goto :goto_6

    .line 274
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ranging is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_d
    :goto_6
    return-void

    .line 239
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subscribeType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid matchFilter configuration - LV fields do not match up to length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 176
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 177
    return v0

    .line 180
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/SubscribeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 181
    return v2

    .line 184
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/SubscribeConfig;

    .line 186
    .local v1, "lhs":Landroid/net/wifi/aware/SubscribeConfig;
    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    iget-object v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    iget-object v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    iget-object v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    .line 187
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    if-eq v3, v4, :cond_3

    .line 196
    return v2

    .line 199
    :cond_3
    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    if-eq v3, v4, :cond_4

    .line 200
    return v2

    .line 203
    :cond_4
    return v0

    .line 192
    :cond_5
    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 208
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v0, v5

    .line 208
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 211
    .local v0, "result":I
    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v1, :cond_0

    .line 212
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    iget v5, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 214
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v1, :cond_1

    .line 215
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    iget v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 218
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscribeConfig [mServiceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceName.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    array-length v1, v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSpecificInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_2

    const-string v1, "<null>"

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 117
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    .line 116
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSpecificInfo.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_3

    .line 119
    move v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    array-length v1, v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    .line 120
    invoke-virtual {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchFilter.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    array-length v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubscribeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTtlSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableTerminateNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDistanceMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDistanceMmSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxDistanceMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxDistanceMmSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 138
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 139
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 140
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return-void
.end method
