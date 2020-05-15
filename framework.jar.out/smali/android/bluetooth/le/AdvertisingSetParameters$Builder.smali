.class public final Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
.super Ljava/lang/Object;
.source "AdvertisingSetParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertisingSetParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mConnectable:Z

.field private mIncludeTxPower:Z

.field private mInterval:I

.field private mIsAnonymous:Z

.field private mIsLegacy:Z

.field private mPrimaryPhy:I

.field private mScannable:Z

.field private mSecondaryPhy:I

.field private mTxPowerLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    .line 248
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    .line 249
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    .line 250
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    .line 251
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    .line 252
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    .line 253
    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    .line 254
    const/16 v0, 0xa0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    .line 255
    const/4 v0, -0x7

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/AdvertisingSetParameters;
    .locals 13

    .line 407
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    if-eqz v0, :cond_4

    .line 408
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    if-nez v0, :cond_3

    .line 412
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy advertisement can\'t be connectable and non-scannable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 418
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy advertising can\'t include TX power level in header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Legacy advertising can\'t be anonymous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_4
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    if-nez v0, :cond_5

    goto :goto_1

    .line 423
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Advertising can\'t be both connectable and scannable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_6
    :goto_1
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-nez v0, :cond_7

    goto :goto_2

    .line 428
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Advertising can\'t be both connectable and anonymous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_8
    :goto_2
    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters;

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    iget-boolean v4, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    iget-boolean v5, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    iget-boolean v6, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    iget-boolean v7, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    iget v8, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    iget v9, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    iget v10, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    iget v11, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZIIIILandroid/bluetooth/le/AdvertisingSetParameters$1;)V

    return-object v0
.end method

.method public setAnonymous(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "isAnonymous"    # Z

    .line 304
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    .line 305
    return-object p0
.end method

.method public setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "connectable"    # Z

    .line 267
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    .line 268
    return-object p0
.end method

.method public setIncludeTxPower(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "includeTxPower"    # Z

    .line 316
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    .line 317
    return-object p0
.end method

.method public setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "interval"    # I

    .line 375
    const/16 v0, 0xa0

    if-lt p1, v0, :cond_0

    const v0, 0xffffff

    if-gt p1, v0, :cond_0

    .line 378
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    .line 379
    return-object p0

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "isLegacy"    # Z

    .line 291
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    .line 292
    return-object p0
.end method

.method public setPrimaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "primaryPhy"    # I

    .line 333
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad primaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    .line 338
    return-object p0
.end method

.method public setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0
    .param p1, "scannable"    # Z

    .line 280
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    .line 281
    return-object p0
.end method

.method public setSecondaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "secondaryPhy"    # I

    .line 356
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad secondaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    .line 362
    return-object p0
.end method

.method public setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 3
    .param p1, "txPowerLevel"    # I

    .line 394
    const/16 v0, -0x7f

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 397
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    .line 398
    return-object p0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown txPowerLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
