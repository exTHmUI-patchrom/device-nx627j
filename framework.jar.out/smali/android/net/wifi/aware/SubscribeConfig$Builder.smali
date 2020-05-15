.class public final Landroid/net/wifi/aware/SubscribeConfig$Builder;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/SubscribeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEnableTerminateNotification:Z

.field private mMatchFilter:[B

.field private mMaxDistanceMm:I

.field private mMaxDistanceMmSet:Z

.field private mMinDistanceMm:I

.field private mMinDistanceMmSet:Z

.field private mServiceName:[B

.field private mServiceSpecificInfo:[B

.field private mSubscribeType:I

.field private mTtlSec:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    .line 286
    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    .line 287
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    .line 288
    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMinDistanceMmSet:Z

    .line 290
    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMaxDistanceMmSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/aware/SubscribeConfig;
    .locals 12

    .line 491
    new-instance v11, Landroid/net/wifi/aware/SubscribeConfig;

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceName:[B

    iget-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMatchFilter:[B

    iget v4, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    iget v5, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    iget-boolean v6, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    iget-boolean v7, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMinDistanceMmSet:Z

    iget v8, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMinDistanceMm:I

    iget-boolean v9, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMaxDistanceMmSet:Z

    iget v10, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMaxDistanceMm:I

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/net/wifi/aware/SubscribeConfig;-><init>([B[B[BIIZZIZI)V

    return-object v11
.end method

.method public setMatchFilter(Ljava/util/List;)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/aware/SubscribeConfig$Builder;"
        }
    .end annotation

    .line 350
    .local p1, "matchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMatchFilter:[B

    .line 352
    return-object p0
.end method

.method public setMaxDistanceMm(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 1
    .param p1, "maxDistanceMm"    # I

    .line 481
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMaxDistanceMm:I

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMaxDistanceMmSet:Z

    .line 483
    return-object p0
.end method

.method public setMinDistanceMm(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 1
    .param p1, "minDistanceMm"    # I

    .line 446
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMinDistanceMm:I

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMinDistanceMmSet:Z

    .line 448
    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 310
    if-eqz p1, :cond_0

    .line 313
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceName:[B

    .line 314
    return-object p0

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid service name - must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceSpecificInfo([B)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 0
    .param p1, "serviceSpecificInfo"    # [B

    .line 333
    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    .line 334
    return-object p0
.end method

.method public setSubscribeType(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 3
    .param p1, "subscribeType"    # I

    .line 369
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 372
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    .line 373
    return-object p0

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subscribeType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTerminateNotificationEnabled(Z)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .line 412
    iput-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    .line 413
    return-object p0
.end method

.method public setTtlSec(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .locals 2
    .param p1, "ttlSec"    # I

    .line 393
    if-ltz p1, :cond_0

    .line 396
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    .line 397
    return-object p0

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
