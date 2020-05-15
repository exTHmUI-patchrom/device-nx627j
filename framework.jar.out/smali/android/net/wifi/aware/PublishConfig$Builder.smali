.class public final Landroid/net/wifi/aware/PublishConfig$Builder;
.super Ljava/lang/Object;
.source "PublishConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/PublishConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEnableRanging:Z

.field private mEnableTerminateNotification:Z

.field private mMatchFilter:[B

.field private mPublishType:I

.field private mServiceName:[B

.field private mServiceSpecificInfo:[B

.field private mTtlSec:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mPublishType:I

    .line 233
    iput v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mTtlSec:I

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableTerminateNotification:Z

    .line 235
    iput-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableRanging:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/aware/PublishConfig;
    .locals 9

    .line 389
    new-instance v8, Landroid/net/wifi/aware/PublishConfig;

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mServiceName:[B

    iget-object v2, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mServiceSpecificInfo:[B

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mMatchFilter:[B

    iget v4, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mPublishType:I

    iget v5, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mTtlSec:I

    iget-boolean v6, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableTerminateNotification:Z

    iget-boolean v7, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableRanging:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/aware/PublishConfig;-><init>([B[B[BIIZZ)V

    return-object v8
.end method

.method public setMatchFilter(Ljava/util/List;)Landroid/net/wifi/aware/PublishConfig$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/aware/PublishConfig$Builder;"
        }
    .end annotation

    .line 294
    .local p1, "matchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mMatchFilter:[B

    .line 296
    return-object p0
.end method

.method public setPublishType(I)Landroid/net/wifi/aware/PublishConfig$Builder;
    .locals 3
    .param p1, "publishType"    # I

    .line 313
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 316
    iput p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mPublishType:I

    .line 317
    return-object p0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid publishType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRangingEnabled(Z)Landroid/net/wifi/aware/PublishConfig$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .line 380
    iput-boolean p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableRanging:Z

    .line 381
    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Landroid/net/wifi/aware/PublishConfig$Builder;
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 254
    if-eqz p1, :cond_0

    .line 257
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mServiceName:[B

    .line 258
    return-object p0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid service name - must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceSpecificInfo([B)Landroid/net/wifi/aware/PublishConfig$Builder;
    .locals 0
    .param p1, "serviceSpecificInfo"    # [B

    .line 277
    iput-object p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mServiceSpecificInfo:[B

    .line 278
    return-object p0
.end method

.method public setTerminateNotificationEnabled(Z)Landroid/net/wifi/aware/PublishConfig$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .line 357
    iput-boolean p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mEnableTerminateNotification:Z

    .line 358
    return-object p0
.end method

.method public setTtlSec(I)Landroid/net/wifi/aware/PublishConfig$Builder;
    .locals 2
    .param p1, "ttlSec"    # I

    .line 338
    if-ltz p1, :cond_0

    .line 341
    iput p1, p0, Landroid/net/wifi/aware/PublishConfig$Builder;->mTtlSec:I

    .line 342
    return-object p0

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
