.class public Lcom/android/server/wifi/NetworkUpdateResult;
.super Ljava/lang/Object;
.source "NetworkUpdateResult.java"


# instance fields
.field credentialChanged:Z

.field ipChanged:Z

.field isNewNetwork:Z

.field netId:I

.field proxyChanged:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    .line 29
    iput p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    .line 30
    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->credentialChanged:Z

    .line 33
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1
    .param p1, "ip"    # Z
    .param p2, "proxy"    # Z
    .param p3, "credential"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    .line 37
    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    .line 38
    iput-boolean p2, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    .line 39
    iput-boolean p3, p0, Lcom/android/server/wifi/NetworkUpdateResult;->credentialChanged:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getNetworkId()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    return v0
.end method

.method public hasCredentialChanged()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->credentialChanged:Z

    return v0
.end method

.method public hasIpChanged()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->ipChanged:Z

    return v0
.end method

.method public hasProxyChanged()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->proxyChanged:Z

    return v0
.end method

.method public isNewNetwork()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 71
    iget v0, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIsNewNetwork(Z)V
    .locals 0
    .param p1, "isNew"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    .line 68
    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 43
    iput p1, p0, Lcom/android/server/wifi/NetworkUpdateResult;->netId:I

    .line 44
    return-void
.end method
