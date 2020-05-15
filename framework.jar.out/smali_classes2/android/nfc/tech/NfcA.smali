.class public final Landroid/nfc/tech/NfcA;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcA.java"


# static fields
.field public static final EXTRA_ATQA:Ljava/lang/String; = "atqa"

.field public static final EXTRA_SAK:Ljava/lang/String; = "sak"

.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private mAtqa:[B

.field private mSak:S


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 72
    const/4 v1, 0x0

    iput-short v1, p0, Landroid/nfc/tech/NfcA;->mSak:S

    .line 73
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "sak"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v2

    iput-short v2, p0, Landroid/nfc/tech/NfcA;->mSak:S

    .line 78
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p1, v0}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "extras":Landroid/os/Bundle;
    iget-short v1, p0, Landroid/nfc/tech/NfcA;->mSak:S

    const-string/jumbo v2, "sak"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v2

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Landroid/nfc/tech/NfcA;->mSak:S

    .line 80
    const-string v1, "atqa"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcA;->mAtqa:[B

    .line 81
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;
    .locals 2
    .param p0, "tag"    # Landroid/nfc/Tag;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    :try_start_0
    new-instance v0, Landroid/nfc/tech/NfcA;

    invoke-direct {v0, p0}, Landroid/nfc/tech/NfcA;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getAtqa()[B
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/nfc/tech/NfcA;->mAtqa:[B

    return-object v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroid/nfc/tech/NfcA;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSak()S
    .locals 1

    .line 102
    iget-short v0, p0, Landroid/nfc/tech/NfcA;->mSak:S

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 3

    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/NfcA;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getTimeout(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public setTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/NfcA;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v0

    .line 157
    .local v0, "err":I
    if-nez v0, :cond_0

    .line 162
    .end local v0    # "err":I
    goto :goto_0

    .line 158
    .restart local v0    # "err":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The supplied timeout is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0    # "err":I
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public transceive([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcA;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
