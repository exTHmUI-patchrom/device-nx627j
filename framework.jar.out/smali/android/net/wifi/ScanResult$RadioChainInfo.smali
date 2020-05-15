.class public Landroid/net/wifi/ScanResult$RadioChainInfo;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioChainInfo"
.end annotation


# instance fields
.field public id:I

.field public level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 313
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 314
    return v0

    .line 316
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/ScanResult$RadioChainInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 317
    return v2

    .line 319
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 320
    .local v1, "other":Landroid/net/wifi/ScanResult$RadioChainInfo;
    iget v3, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    iget v4, v1, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    iget v4, v1, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 325
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioChainInfo: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
