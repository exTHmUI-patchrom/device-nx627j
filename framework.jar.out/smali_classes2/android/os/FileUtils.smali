.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$MemoryPipe;,
        Landroid/os/FileUtils$ProgressListener;,
        Landroid/os/FileUtils$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field private static final COPY_CHECKPOINT_BYTES:J = 0x80000L

.field private static final EMPTY:[Ljava/io/File;

.field private static final ENABLE_COPY_OPTIMIZATIONS:Z = true

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 225
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;

    .line 979
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 982
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 915
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 916
    .local v0, "lastDot":I
    if-ltz v0, :cond_0

    .line 917
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 918
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "ext":Ljava/lang/String;
    goto :goto_0

    .line 920
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "ext":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 921
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 924
    .restart local v2    # "ext":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method public static buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 901
    invoke-static {p1, p2}, Landroid/os/FileUtils;->splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 874
    invoke-static {p0, p1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 877
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 878
    .local v1, "n":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    add-int/lit8 v2, v1, 0x1

    .local v2, "n":I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_0

    .line 882
    .end local v1    # "n":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 877
    move v1, v2

    goto :goto_0

    .line 880
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v3, "Failed to create unique file"

    invoke-direct {v1, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 885
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_1
    return-object v0
.end method

.method public static buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 756
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 760
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 761
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 762
    .local v2, "c":C
    invoke-static {v2}, Landroid/os/FileUtils;->isValidExtFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 765
    :cond_1
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 769
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 757
    .end local v0    # "res":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    const-string v0, "(invalid)"

    return-object v0
.end method

.method public static buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 805
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 808
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 809
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 810
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 811
    .local v2, "c":C
    invoke-static {v2}, Landroid/os/FileUtils;->isValidFatFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 814
    :cond_1
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 820
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 806
    .end local v0    # "res":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    const-string v0, "(invalid)"

    return-object v0
.end method

.method public static bytesToFile(Ljava/lang/String;[B)V
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    const-string v0, "/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    .line 577
    .local v0, "oldMask":I
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 578
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 580
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 581
    nop

    .line 582
    .end local v0    # "oldMask":I
    goto :goto_1

    .line 579
    .restart local v0    # "oldMask":I
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 577
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    :goto_0
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 580
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1

    .line 583
    .end local v0    # "oldMask":I
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 585
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 587
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 585
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    goto :goto_2

    .line 583
    :catch_1
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 585
    :goto_2
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 609
    .local v0, "checkSummer":Ljava/util/zip/CRC32;
    const/4 v1, 0x0

    .line 612
    .local v1, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v1, v2

    .line 613
    const/16 v2, 0x80

    new-array v2, v2, [B

    .line 614
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    nop

    .line 621
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 623
    goto :goto_1

    .line 622
    :catch_0
    move-exception v5

    .line 617
    :goto_1
    return-wide v3

    .line 619
    .end local v2    # "buf":[B
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 621
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 623
    goto :goto_2

    .line 622
    :catch_1
    move-exception v3

    .line 623
    :cond_1
    :goto_2
    throw v2
.end method

.method public static contains(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    .line 695
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 695
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 700
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const/4 v0, 0x1

    return v0

    .line 703
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 706
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static contains([Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .param p0, "dirs"    # [Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    .line 678
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 679
    .local v3, "dir":Ljava/io/File;
    invoke-static {v3, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 680
    const/4 v0, 0x1

    return v0

    .line 678
    .end local v3    # "dir":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 683
    :cond_1
    return v1
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)J
    .locals 2
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J
    .locals 6
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 285
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 284
    .local v2, "out":Ljava/io/FileOutputStream;
    nop

    .line 286
    :try_start_1
    invoke-static {v0, v2, p2, p3}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 286
    return-wide v3

    .line 287
    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_0
    :try_start_4
    invoke-static {v4, v2}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    goto :goto_1

    .line 284
    :catch_1
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 287
    :goto_1
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    .locals 2
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J
    .locals 6
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .locals 4
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 372
    .local v0, "st_in":Landroid/system/StructStat;
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    .line 373
    .local v1, "st_out":Landroid/system/StructStat;
    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    invoke-static/range {p0 .. p5}, Landroid/os/FileUtils;->copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J

    move-result-wide v2

    return-wide v2

    .line 375
    :cond_0
    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 380
    .end local v0    # "st_in":Landroid/system/StructStat;
    .end local v1    # "st_out":Landroid/system/StructStat;
    :cond_1
    nop

    .line 384
    invoke-static/range {p0 .. p5}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J

    move-result-wide v0

    return-wide v0

    .line 376
    .restart local v0    # "st_in":Landroid/system/StructStat;
    .restart local v1    # "st_out":Landroid/system/StructStat;
    :cond_2
    :goto_0
    :try_start_1
    invoke-static/range {p0 .. p5}, Landroid/os/FileUtils;->copyInternalSplice(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J

    move-result-wide v2
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v2

    .line 378
    .end local v0    # "st_in":Landroid/system/StructStat;
    .end local v1    # "st_out":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 317
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0

    .line 323
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v0, 0x1

    return v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 224
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 226
    .end local v0    # "in":Ljava/io/InputStream;
    return-void

    .line 225
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :goto_0
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .locals 18
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "count"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 427
    const-wide/16 v1, 0x0

    .line 428
    .local v1, "progress":J
    const-wide/16 v3, 0x0

    move-wide/from16 v5, p4

    move-wide v7, v1

    move-wide v1, v3

    .line 431
    .end local p4    # "count":J
    .local v1, "checkpoint":J
    .local v5, "count":J
    .local v7, "progress":J
    :cond_0
    :goto_0
    const/4 v9, 0x0

    const-wide/32 v10, 0x80000

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-static {v15, v14, v9, v12, v13}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide v12

    move-wide/from16 v16, v12

    .local v16, "t":J
    cmp-long v9, v12, v3

    if-eqz v9, :cond_3

    .line 432
    add-long v7, v7, v16

    .line 433
    add-long v1, v1, v16

    .line 434
    sub-long v5, v5, v16

    .line 436
    cmp-long v9, v1, v10

    if-ltz v9, :cond_0

    .line 437
    if-eqz p3, :cond_1

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 440
    :cond_1
    if-eqz v0, :cond_2

    .line 441
    invoke-interface {v0, v7, v8}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 443
    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 446
    :cond_3
    if-eqz v0, :cond_4

    .line 447
    invoke-interface {v0, v7, v8}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 449
    :cond_4
    return-wide v7
.end method

.method public static copyInternalSplice(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .locals 20
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "count"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 394
    const-wide/16 v1, 0x0

    .line 395
    .local v1, "progress":J
    const-wide/16 v3, 0x0

    move-wide/from16 v5, p4

    move-wide v7, v1

    move-wide v1, v3

    .line 398
    .end local p4    # "count":J
    .local v1, "checkpoint":J
    .local v5, "count":J
    .local v7, "progress":J
    :cond_0
    :goto_0
    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/32 v13, 0x80000

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    sget v9, Landroid/system/OsConstants;->SPLICE_F_MOVE:I

    sget v11, Landroid/system/OsConstants;->SPLICE_F_MORE:I

    or-int v17, v9, v11

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    move-wide/from16 v18, v13

    move-wide v13, v15

    move/from16 v15, v17

    invoke-static/range {v9 .. v15}, Landroid/system/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v9

    move-wide v11, v9

    .local v11, "t":J
    cmp-long v9, v9, v3

    if-eqz v9, :cond_3

    .line 400
    add-long/2addr v7, v11

    .line 401
    add-long/2addr v1, v11

    .line 402
    sub-long/2addr v5, v11

    .line 404
    cmp-long v9, v1, v18

    if-ltz v9, :cond_0

    .line 405
    if-eqz p3, :cond_1

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 408
    :cond_1
    if-eqz v0, :cond_2

    .line 409
    invoke-interface {v0, v7, v8}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 411
    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 414
    :cond_3
    if-eqz v0, :cond_4

    .line 415
    invoke-interface {v0, v7, v8}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 417
    :cond_4
    return-wide v7
.end method

.method public static copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .locals 2
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "count"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Lcom/android/internal/util/SizedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1, p4, p5}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, v1, p2, p3}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0

    .line 459
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, v1, p2, p3}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    const-wide/16 v0, 0x0

    .line 468
    .local v0, "progress":J
    const-wide/16 v2, 0x0

    .line 469
    .local v2, "checkpoint":J
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 472
    .local v4, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "t":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 473
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 475
    int-to-long v7, v6

    add-long/2addr v0, v7

    .line 476
    int-to-long v7, v6

    add-long/2addr v2, v7

    .line 478
    const-wide/32 v7, 0x80000

    cmp-long v5, v2, v7

    if-ltz v5, :cond_0

    .line 479
    if-eqz p3, :cond_1

    .line 480
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 482
    :cond_1
    if-eqz p2, :cond_2

    .line 483
    invoke-interface {p2, v0, v1}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 485
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 488
    :cond_3
    if-eqz p2, :cond_4

    .line 489
    invoke-interface {p2, v0, v1}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 491
    :cond_4
    return-wide v0
.end method

.method public static copyPermissions(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 172
    .local v0, "stat":Landroid/system/StructStat;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/system/StructStat;->st_uid:I

    iget v3, v0, Landroid/system/StructStat;->st_gid:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "stat":Landroid/system/StructStat;
    nop

    .line 177
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    const/4 v0, 0x1

    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 249
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 250
    :try_start_0
    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    nop

    .line 256
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 257
    .end local v0    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 253
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Landroid/system/ErrnoException;
    :try_start_2
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 249
    :catch_1
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    :goto_0
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "baseDir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 1026
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1028
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1029
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v0

    nop

    :cond_0
    return-object v2

    .line 1032
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, v0

    nop

    :cond_2
    return-object v2
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .line 718
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 719
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x1

    .line 720
    .local v1, "success":Z
    if-eqz v0, :cond_2

    .line 721
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 722
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 723
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 725
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 726
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v1, 0x0

    .line 721
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    :cond_2
    return v1
.end method

.method public static deleteContentsAndDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .line 710
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 713
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static deleteOlderFiles(Ljava/io/File;IJ)Z
    .locals 9
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "minCount"    # I
    .param p2, "minAgeMs"    # J

    .line 637
    if-ltz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    .line 641
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 642
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 645
    :cond_0
    new-instance v1, Landroid/os/FileUtils$1;

    invoke-direct {v1}, Landroid/os/FileUtils$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, "deleted":Z
    move v2, v1

    move v1, p1

    .local v1, "i":I
    .local v2, "deleted":Z
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 655
    aget-object v3, v0, v1

    .line 658
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 659
    .local v4, "age":J
    cmp-long v6, v4, p2

    if-lez v6, :cond_1

    .line 660
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 661
    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted old file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v2, 0x1

    .line 654
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "age":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v1    # "i":I
    :cond_2
    return v2

    .line 638
    .end local v0    # "files":[Ljava/io/File;
    .end local v2    # "deleted":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constraints must be positive or 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUid(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 184
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_uid:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, -0x1

    return v1
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 502
    sget-object v0, Landroid/os/FileUtils$NoImagePreloadHolder;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isValidExtFilename(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 748
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidExtFilenameChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 735
    if-eqz p0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    .line 740
    const/4 v0, 0x1

    return v0

    .line 738
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidFatFilename(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 797
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidFatFilenameChar(C)Z
    .locals 2
    .param p0, "c"    # C

    .line 773
    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_0

    .line 774
    return v0

    .line 776
    :cond_0
    const/16 v1, 0x22

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x5c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 789
    const/4 v0, 0x1

    return v0

    .line 787
    :cond_1
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;
    .locals 2
    .param p0, "dir"    # Ljava/io/File;

    .line 997
    if-nez p0, :cond_0

    sget-object v0, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v0

    .line 998
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 999
    .local v0, "res":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 1000
    return-object v0

    .line 1002
    :cond_1
    sget-object v1, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v1
.end method

.method public static listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 2
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .line 1007
    if-nez p0, :cond_0

    sget-object v0, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v0

    .line 1008
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1009
    .local v0, "res":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 1010
    return-object v0

    .line 1012
    :cond_1
    sget-object v1, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v1
.end method

.method public static listOrEmpty(Ljava/io/File;)[Ljava/lang/String;
    .locals 2
    .param p0, "dir"    # Ljava/io/File;

    .line 987
    if-nez p0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 988
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "res":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 990
    return-object v0

    .line 992
    :cond_1
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1
.end method

.method public static newFileOrNull(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 1017
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 518
    .local v0, "input":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 520
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 521
    .local v2, "size":J
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-gtz p1, :cond_c

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 529
    :cond_0
    if-gez p1, :cond_9

    .line 531
    const/4 v4, 0x0

    .line 532
    .local v4, "rolled":Z
    const/4 v5, 0x0

    .line 533
    .local v5, "last":[B
    const/4 v7, 0x0

    .line 535
    .local v7, "data":[B
    :cond_1
    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .line 536
    :cond_2
    move-object v8, v5

    .local v8, "tmp":[B
    move-object v5, v7

    move-object v7, v8

    .line 537
    if-nez v7, :cond_3

    neg-int v9, p1

    new-array v9, v9, [B

    move-object v7, v9

    .line 538
    :cond_3
    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    .end local v8    # "tmp":[B
    move v8, v9

    .line 539
    .local v8, "len":I
    array-length v9, v7

    if-eq v8, v9, :cond_1

    .line 541
    if-nez v5, :cond_4

    if-gtz v8, :cond_4

    const-string v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 541
    return-object v6

    .line 542
    :cond_4
    if-nez v5, :cond_5

    :try_start_1
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7, v6, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 542
    return-object v9

    .line 543
    :cond_5
    if-lez v8, :cond_6

    .line 544
    const/4 v4, 0x1

    .line 545
    :try_start_2
    array-length v9, v5

    sub-int/2addr v9, v8

    invoke-static {v5, v8, v5, v6, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 546
    array-length v9, v5

    sub-int/2addr v9, v8

    invoke-static {v7, v6, v5, v9, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 548
    :cond_6
    if-eqz p2, :cond_8

    if-nez v4, :cond_7

    goto :goto_0

    .line 549
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 561
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 549
    return-object v6

    .line 548
    :cond_8
    :goto_0
    :try_start_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 561
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 548
    return-object v6

    .line 551
    .end local v4    # "rolled":Z
    .end local v5    # "last":[B
    .end local v7    # "data":[B
    .end local v8    # "len":I
    :cond_9
    :try_start_4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 553
    .local v4, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 555
    .local v5, "data":[B
    :cond_a
    invoke-virtual {v1, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 556
    .local v7, "len":I
    if-lez v7, :cond_b

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 557
    :cond_b
    array-length v8, v5

    if-eq v7, v8, :cond_a

    .line 558
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 561
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 558
    return-object v6

    .line 522
    .end local v4    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "data":[B
    .end local v7    # "len":I
    :cond_c
    :goto_1
    cmp-long v4, v2, v4

    if-lez v4, :cond_e

    if-eqz p1, :cond_d

    int-to-long v4, p1

    cmp-long v4, v2, v4

    if-gez v4, :cond_e

    :cond_d
    long-to-int p1, v2

    .line 523
    :cond_e
    add-int/lit8 v4, p1, 0x1

    :try_start_5
    new-array v4, v4, [B

    .line 524
    .local v4, "data":[B
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .line 525
    .local v5, "length":I
    if-gtz v5, :cond_f

    const-string v6, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 561
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 525
    return-object v6

    .line 526
    :cond_f
    if-gt v5, p1, :cond_10

    :try_start_6
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v6, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 561
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 526
    return-object v7

    .line 527
    :cond_10
    if-nez p2, :cond_11

    :try_start_7
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v6, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 561
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 527
    return-object v7

    .line 528
    :cond_11
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4, v6, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 561
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 528
    return-object v6

    .line 561
    .end local v2    # "size":J
    .end local v4    # "data":[B
    .end local v5    # "length":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 562
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;

    .line 863
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    invoke-static {p0, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 865
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "splice":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 869
    .end local v0    # "splice":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 863
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .line 843
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 844
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 845
    .local v1, "result":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_1
    return-object v0
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "paths"    # [Ljava/lang/String;

    .line 849
    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 850
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 851
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 852
    aget-object v2, p2, v1

    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static roundStorageSize(J)J
    .locals 6
    .param p0, "size"    # J

    .line 1041
    const-wide/16 v0, 0x1

    .line 1042
    .local v0, "val":J
    const-wide/16 v2, 0x1

    .line 1043
    .local v2, "pow":J
    :cond_0
    :goto_0
    mul-long v4, v0, v2

    cmp-long v4, v4, p0

    if-gez v4, :cond_1

    .line 1044
    const/4 v4, 0x1

    shl-long/2addr v0, v4

    .line 1045
    const-wide/16 v4, 0x200

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 1046
    const-wide/16 v0, 0x1

    .line 1047
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_0

    .line 1050
    :cond_1
    mul-long v4, v0, v2

    return-wide v4
.end method

.method public static setPermissions(Ljava/io/File;III)I
    .locals 1
    .param p0, "path"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static setPermissions(Ljava/io/FileDescriptor;III)I
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 151
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    nop

    .line 157
    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 159
    :cond_0
    :try_start_1
    invoke-static {p0, p2, p3}, Landroid/system/Os;->fchown(Ljava/io/FileDescriptor;II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    nop

    .line 166
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1

    .line 152
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v0

    .line 153
    .restart local v0    # "e":Landroid/system/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchmod(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 123
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    nop

    .line 129
    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 131
    :cond_0
    :try_start_1
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    nop

    .line 138
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to chown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1

    .line 124
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v0

    .line 125
    .restart local v0    # "e":Landroid/system/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to chmod("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1
.end method

.method public static splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;

    .line 937
    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 938
    move-object v0, p1

    .line 939
    .local v0, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 971
    .local v2, "ext":Ljava/lang/String;
    move-object v3, v0

    goto :goto_2

    .line 944
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "ext":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 945
    .local v0, "lastDot":I
    if-ltz v0, :cond_1

    .line 946
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 948
    .local v3, "ext":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 949
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 948
    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 953
    .local v2, "ext":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v4, "mimeTypeFromExt":Ljava/lang/String;
    :goto_0
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_1

    .line 951
    .end local v2    # "ext":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "mimeTypeFromExt":Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .line 952
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 953
    .local v3, "ext":Ljava/lang/String;
    const/4 v4, 0x0

    goto :goto_0

    .line 956
    .local v2, "ext":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v4    # "mimeTypeFromExt":Ljava/lang/String;
    :goto_1
    if-nez v4, :cond_2

    .line 957
    const-string v4, "application/octet-stream"

    .line 960
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 962
    .local v5, "extFromMimeType":Ljava/lang/String;
    invoke-static {p0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 962
    .end local v0    # "lastDot":I
    .end local v4    # "mimeTypeFromExt":Ljava/lang/String;
    .end local v5    # "extFromMimeType":Ljava/lang/String;
    goto :goto_2

    .line 966
    .restart local v0    # "lastDot":I
    .restart local v4    # "mimeTypeFromExt":Ljava/lang/String;
    .restart local v5    # "extFromMimeType":Ljava/lang/String;
    :cond_3
    move-object v3, p1

    .line 967
    move-object v2, v5

    .line 971
    .end local v0    # "lastDot":I
    .end local v4    # "mimeTypeFromExt":Ljava/lang/String;
    .end local v5    # "extFromMimeType":Ljava/lang/String;
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 972
    const-string v2, ""

    .line 975
    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static stringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    .line 598
    return-void
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .locals 1
    .param p0, "stream"    # Ljava/io/FileOutputStream;

    .line 196
    if-eqz p0, :cond_0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static trimFilename(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxBytes"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 827
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static trimFilename(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "res"    # Ljava/lang/StringBuilder;
    .param p1, "maxBytes"    # I

    .line 831
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 832
    .local v0, "raw":[B
    array-length v1, v0

    if-le v1, p1, :cond_1

    .line 833
    add-int/lit8 p1, p1, -0x3

    .line 834
    :goto_0
    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 835
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0

    .line 838
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const-string v2, "..."

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :cond_1
    return-void
.end method
