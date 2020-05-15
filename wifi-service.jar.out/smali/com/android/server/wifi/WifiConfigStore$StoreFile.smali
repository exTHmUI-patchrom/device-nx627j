.class public Lcom/android/server/wifi/WifiConfigStore$StoreFile;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreFile"
.end annotation


# static fields
.field private static final FILE_MODE:I = 0x180


# instance fields
.field private final mAtomicFile:Lcom/android/internal/os/AtomicFile;

.field private mFileName:Ljava/lang/String;

.field private mWriteData:[B


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mAtomicFile:Lcom/android/internal/os/AtomicFile;

    .line 492
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mAtomicFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mFileName:Ljava/lang/String;

    .line 493
    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mAtomicFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->exists()Z

    move-result v0

    return v0
.end method

.method public readRawData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mAtomicFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public storeRawDataToWrite([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 527
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mWriteData:[B

    .line 528
    return-void
.end method

.method public writeBufferedRawData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mWriteData:[B

    if-nez v0, :cond_0

    .line 538
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data stored for writing to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void

    .line 542
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 544
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mAtomicFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 545
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mFileName:Ljava/lang/String;

    const/16 v3, 0x180

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 546
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mWriteData:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 547
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mAtomicFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    nop

    .line 555
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mWriteData:[B

    .line 556
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 550
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->mAtomicFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 552
    :cond_1
    throw v0
.end method
