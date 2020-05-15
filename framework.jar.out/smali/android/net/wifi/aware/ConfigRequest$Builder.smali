.class public final Landroid/net/wifi/aware/ConfigRequest$Builder;
.super Ljava/lang/Object;
.source "ConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClusterHigh:I

.field private mClusterLow:I

.field private mDiscoveryWindowInterval:[I

.field private mMasterPreference:I

.field private mSupport5gBand:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    .line 217
    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    .line 218
    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    .line 219
    const v0, 0xffff

    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 220
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public build()Landroid/net/wifi/aware/ConfigRequest;
    .locals 9

    .line 340
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    if-gt v0, v1, :cond_0

    .line 345
    new-instance v0, Landroid/net/wifi/aware/ConfigRequest;

    iget-boolean v3, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    iget v4, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    iget v5, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    iget v6, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    iget-object v7, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZIII[ILandroid/net/wifi/aware/ConfigRequest$1;)V

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid argument combination - must have Cluster Low <= Cluster High"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClusterHigh(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 2
    .param p1, "clusterHigh"    # I

    .line 297
    if-ltz p1, :cond_1

    .line 300
    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 304
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 305
    return-object p0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClusterLow(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 2
    .param p1, "clusterLow"    # I

    .line 272
    if-ltz p1, :cond_1

    .line 275
    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 279
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    .line 280
    return-object p0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDiscoveryWindowInterval(II)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 2
    .param p1, "band"    # I
    .param p2, "interval"    # I

    .line 322
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid band value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    :goto_0
    const/4 v1, 0x5

    if-nez p1, :cond_2

    if-lt p2, v0, :cond_3

    if-gt p2, v1, :cond_3

    :cond_2
    if-ne p1, v0, :cond_4

    if-ltz p2, :cond_3

    if-gt p2, v1, :cond_3

    goto :goto_1

    .line 327
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid interval value: 2.4 GHz [1,5] or 5GHz [0,5]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    aput p2, v0, p1

    .line 332
    return-object p0
.end method

.method public setMasterPreference(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 2
    .param p1, "masterPreference"    # I

    .line 245
    if-ltz p1, :cond_1

    .line 249
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    if-gt p1, v0, :cond_0

    .line 254
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    .line 255
    return-object p0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Master Preference specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSupport5gBand(Z)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 0
    .param p1, "support5gBand"    # Z

    .line 231
    iput-boolean p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    .line 232
    return-object p0
.end method
