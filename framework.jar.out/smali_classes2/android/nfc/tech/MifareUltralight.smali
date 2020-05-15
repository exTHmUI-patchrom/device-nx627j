.class public final Landroid/nfc/tech/MifareUltralight;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareUltralight.java"


# static fields
.field public static final EXTRA_IS_UL_C:Ljava/lang/String; = "isulc"

.field private static final MAX_PAGE_COUNT:I = 0x100

.field private static final NXP_MANUFACTURER_ID:I = 0x4

.field public static final PAGE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_ULTRALIGHT:I = 0x1

.field public static final TYPE_ULTRALIGHT_C:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 4
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 107
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v1

    .line 109
    .local v1, "a":Landroid/nfc/tech/NfcA;
    const/4 v2, -0x1

    iput v2, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    .line 111
    invoke-virtual {v1}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 112
    invoke-virtual {p1, v0}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "isulc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const/4 v2, 0x2

    iput v2, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    goto :goto_0

    .line 116
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    .line 119
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareUltralight;
    .locals 2
    .param p0, "tag"    # Landroid/nfc/Tag;

    .line 94
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 96
    :cond_0
    :try_start_0
    new-instance v0, Landroid/nfc/tech/MifareUltralight;

    invoke-direct {v0, p0}, Landroid/nfc/tech/MifareUltralight;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method private static validatePageIndex(I)V
    .locals 3
    .param p0, "pageIndex"    # I

    .line 274
    if-ltz p0, :cond_0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    .line 277
    return-void

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "page out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
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

    .line 61
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    .line 223
    invoke-virtual {p0}, Landroid/nfc/tech/MifareUltralight;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 3

    .line 261
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/MifareUltralight;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->getTimeout(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    const/4 v1, 0x0

    return v1
.end method

.method public getType()I
    .locals 1

    .line 133
    iget v0, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    return v0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public readPages(I)[B
    .locals 4
    .param p1, "pageOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->validatePageIndex(I)V

    .line 161
    invoke-virtual {p0}, Landroid/nfc/tech/MifareUltralight;->checkConnected()V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    int-to-byte v2, p1

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 164
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareUltralight;->transceive([BZ)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public setTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .line 242
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/MifareUltralight;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v0

    .line 244
    .local v0, "err":I
    if-nez v0, :cond_0

    .line 249
    .end local v0    # "err":I
    goto :goto_0

    .line 245
    .restart local v0    # "err":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The supplied timeout is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "err":I
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
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

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareUltralight;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public writePage(I[B)V
    .locals 5
    .param p1, "pageOffset"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->validatePageIndex(I)V

    .line 186
    invoke-virtual {p0}, Landroid/nfc/tech/MifareUltralight;->checkConnected()V

    .line 188
    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 189
    .local v0, "cmd":[B
    const/4 v2, 0x0

    const/16 v3, -0x5e

    aput-byte v3, v0, v2

    .line 190
    int-to-byte v3, p1

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 191
    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 193
    invoke-virtual {p0, v0, v2}, Landroid/nfc/tech/MifareUltralight;->transceive([BZ)[B

    .line 194
    return-void
.end method
