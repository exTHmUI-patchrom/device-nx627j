.class public Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "TarBackupReader.java"


# static fields
.field private static final TAR_HEADER_LENGTH_FILESIZE:I = 0xc

.field private static final TAR_HEADER_LENGTH_MODE:I = 0x8

.field private static final TAR_HEADER_LENGTH_MODTIME:I = 0xc

.field private static final TAR_HEADER_LENGTH_PATH:I = 0x64

.field private static final TAR_HEADER_LENGTH_PATH_PREFIX:I = 0x9b

.field private static final TAR_HEADER_LONG_RADIX:I = 0x8

.field private static final TAR_HEADER_OFFSET_FILESIZE:I = 0x7c

.field private static final TAR_HEADER_OFFSET_MODE:I = 0x64

.field private static final TAR_HEADER_OFFSET_MODTIME:I = 0x88

.field private static final TAR_HEADER_OFFSET_PATH:I = 0x0

.field private static final TAR_HEADER_OFFSET_PATH_PREFIX:I = 0x159

.field private static final TAR_HEADER_OFFSET_TYPE_CHAR:I = 0x9c


# instance fields
.field private final mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

.field private final mInputStream:Ljava/io/InputStream;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 94
    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 95
    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    .line 96
    iput-object p3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 97
    return-void
.end method

.method private static extractLine([BI[Ljava/lang/String;)I
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    array-length v0, p0

    .line 655
    .local v0, "end":I
    if-ge p1, v0, :cond_2

    .line 660
    move v1, p1

    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 661
    aget-byte v2, p0, v1

    .line 664
    .local v2, "c":B
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 665
    goto :goto_1

    .line 660
    .end local v2    # "c":B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    :cond_1
    :goto_1
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, p1

    invoke-direct {v3, p0, p1, v4}, Ljava/lang/String;-><init>([BII)V

    aput-object v3, p2, v2

    .line 669
    add-int/lit8 v1, v1, 0x1

    .line 670
    return v1

    .line 656
    .end local v1    # "pos":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extractRadix([BIII)J
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxChars"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    const-wide/16 v0, 0x0

    .line 750
    .local v0, "value":J
    add-int v2, p1, p2

    .line 751
    .local v2, "end":I
    move-wide v3, v0

    move v0, p1

    .local v0, "i":I
    .local v3, "value":J
    :goto_0
    if-ge v0, v2, :cond_2

    .line 752
    aget-byte v1, p0, v0

    .line 754
    .local v1, "b":B
    if-eqz v1, :cond_2

    const/16 v5, 0x20

    if-ne v1, v5, :cond_0

    .line 755
    goto :goto_1

    .line 757
    :cond_0
    const/16 v5, 0x30

    if-lt v1, v5, :cond_1

    add-int/2addr v5, p3

    add-int/lit8 v5, v5, -0x1

    if-gt v1, v5, :cond_1

    .line 761
    int-to-long v5, p3

    mul-long/2addr v5, v3

    add-int/lit8 v7, v1, -0x30

    int-to-long v7, v7

    add-long v3, v5, v7

    .line 751
    .end local v1    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    .restart local v1    # "b":B
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 763
    .end local v0    # "i":I
    .end local v1    # "b":B
    :cond_2
    :goto_1
    return-wide v3
.end method

.method private static extractString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    add-int v0, p1, p2

    .line 768
    .local v0, "end":I
    move v1, p1

    .line 770
    .local v1, "eos":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p1

    const-string v4, "US-ASCII"

    invoke-direct {v2, p0, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method private static hexLog([B)V
    .locals 10
    .param p0, "block"    # [B

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "offset":I
    array-length v1, p0

    .line 779
    .local v1, "todo":I
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 780
    .local v2, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez v1, :cond_2

    .line 781
    const-string v3, "%04x   "

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const/16 v3, 0x10

    if-le v1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    .line 783
    .local v3, "numThisLine":I
    :goto_1
    move v5, v7

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_1

    .line 784
    const-string v6, "%02x "

    new-array v8, v4, [Ljava/lang/Object;

    add-int v9, v0, v5

    aget-byte v9, p0, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 786
    .end local v5    # "i":I
    :cond_1
    const-string v4, "hexdump"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 788
    sub-int/2addr v1, v3

    .line 789
    add-int/2addr v0, v3

    .line 790
    .end local v3    # "numThisLine":I
    goto :goto_0

    .line 791
    :cond_2
    return-void
.end method

.method private static readExactly(Ljava/io/InputStream;[BII)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    if-lez p3, :cond_2

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "soFar":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 252
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 253
    .local v1, "nRead":I
    if-gtz v1, :cond_0

    .line 257
    goto :goto_1

    .line 259
    :cond_0
    add-int/2addr v0, v1

    .line 263
    .end local v1    # "nRead":I
    goto :goto_0

    .line 264
    :cond_1
    :goto_1
    return v0

    .line 245
    .end local v0    # "soFar":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z
    .locals 14
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    .line 695
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v2, 0x1ff

    add-long/2addr v0, v2

    const/16 v2, 0x9

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 696
    .local v0, "numBlocks":I
    mul-int/lit16 v1, v0, 0x200

    new-array v1, v1, [B

    .line 697
    .local v1, "data":[B
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_7

    .line 700
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    array-length v3, v1

    int-to-long v5, v3

    invoke-interface {v2, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 702
    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    .line 703
    .local v2, "contentSize":I
    nop

    .line 703
    .local v4, "offset":I
    :cond_0
    move v3, v4

    .line 706
    .end local v4    # "offset":I
    .local v3, "offset":I
    add-int/lit8 v4, v3, 0x1

    .line 707
    .local v4, "eol":I
    :goto_0
    if-ge v4, v2, :cond_1

    aget-byte v5, v1, v4

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    .line 708
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 710
    :cond_1
    if-ge v4, v2, :cond_6

    .line 715
    sub-int v5, v4, v3

    const/16 v6, 0xa

    invoke-static {v1, v3, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v5

    long-to-int v5, v5

    .line 716
    .local v5, "linelen":I
    add-int/lit8 v6, v4, 0x1

    .line 717
    .local v6, "key":I
    add-int v7, v3, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 719
    .end local v4    # "eol":I
    .local v7, "eol":I
    add-int/lit8 v4, v6, 0x1

    .line 719
    .local v4, "value":I
    :goto_1
    aget-byte v9, v1, v4

    const/16 v10, 0x3d

    if-eq v9, v10, :cond_2

    if-gt v4, v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 722
    :cond_2
    if-gt v4, v7, :cond_5

    .line 727
    new-instance v9, Ljava/lang/String;

    sub-int v10, v4, v6

    const-string v11, "UTF-8"

    invoke-direct {v9, v1, v6, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 729
    .local v9, "keyStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v11, v4, 0x1

    sub-int v12, v7, v4

    sub-int/2addr v12, v8

    const-string v13, "UTF-8"

    invoke-direct {v10, v1, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 731
    .local v10, "valStr":Ljava/lang/String;
    const-string/jumbo v11, "path"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 732
    iput-object v10, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_2

    .line 733
    :cond_3
    const-string/jumbo v11, "size"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 734
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_2

    .line 737
    :cond_4
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unhandled pax key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :goto_2
    add-int v4, v3, v5

    .line 742
    .end local v3    # "offset":I
    .end local v5    # "linelen":I
    .end local v6    # "key":I
    .end local v7    # "eol":I
    .end local v9    # "keyStr":Ljava/lang/String;
    .end local v10    # "valStr":Ljava/lang/String;
    .local v4, "offset":I
    if-lt v4, v2, :cond_0

    .line 744
    return v8

    .line 723
    .restart local v3    # "offset":I
    .local v4, "value":I
    .restart local v5    # "linelen":I
    .restart local v6    # "key":I
    .restart local v7    # "eol":I
    :cond_5
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid pax declaration"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 712
    .end local v5    # "linelen":I
    .end local v6    # "key":I
    .end local v7    # "eol":I
    .local v4, "eol":I
    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid pax data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 698
    .end local v2    # "contentSize":I
    .end local v3    # "offset":I
    .end local v4    # "eol":I
    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to read full pax header"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 690
    .end local v0    # "numBlocks":I
    .end local v1    # "data":[B
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspiciously large pax header size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " - aborting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanity failure: pax header size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readTarHeader([B)Z
    .locals 4
    .param p1, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 675
    .local v0, "got":I
    if-nez v0, :cond_0

    .line 676
    return v2

    .line 678
    :cond_0
    if-lt v0, v1, :cond_1

    .line 681
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    const-wide/16 v2, 0x200

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 682
    const/4 v1, 0x1

    return v1

    .line 679
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/backup/restore/RestorePolicy;
    .locals 10
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "allowApks"    # Z
    .param p3, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p4, "signatures"    # [Landroid/content/pm/Signature;
    .param p5, "pmi"    # Landroid/content/pm/PackageManagerInternal;

    .line 391
    if-nez p4, :cond_0

    .line 392
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    return-object v0

    .line 395
    :cond_0
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 399
    .local v0, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v4, 0x8000000

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 402
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 403
    .local v4, "flags":I
    const v5, 0x8000

    and-int/2addr v5, v4

    if-eqz v5, :cond_7

    .line 406
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_2

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is system level with no agent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x26

    const/4 v7, 0x2

    invoke-static {v5, v6, v3, v7, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_1

    .line 416
    :cond_2
    :goto_0
    invoke-static {p4, v3, p5}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 417
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 419
    const-string v5, "BackupManagerService"

    const-string v6, "Package has restoreAnyVersion; taking data"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x22

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 426
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    goto/16 :goto_1

    .line 427
    :cond_3
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    iget-wide v7, p3, Lcom/android/server/backup/FileMetadata;->version:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    .line 428
    const-string v5, "BackupManagerService"

    const-string v6, "Sig + version match; taking data"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    .line 430
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x23

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_1

    .line 440
    :cond_4
    if-eqz p2, :cond_5

    .line 441
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " is newer than installed version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " - requiring apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 441
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    goto/16 :goto_1

    .line 448
    :cond_5
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data requires newer version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x24

    const-string v7, "android.app.backup.extra.LOG_OLD_VERSION"

    iget-wide v8, p3, Lcom/android/server/backup/FileMetadata;->version:J

    .line 456
    invoke-static {v2, v7, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v7

    .line 451
    invoke-static {v5, v6, v3, v1, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 461
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    goto :goto_1

    .line 465
    :cond_6
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore manifest signatures do not match installed application for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x25

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_1

    .line 487
    :cond_7
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore manifest from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " but allowBackup=false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x27

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "flags":I
    :goto_1
    goto :goto_3

    .line 497
    :catch_0
    move-exception v3

    .line 501
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz p2, :cond_8

    .line 503
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not installed; requiring apk in dataset"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_2

    .line 508
    :cond_8
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 510
    :goto_2
    const-string v4, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v5, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 513
    .local v4, "monitoringExtras":Landroid/os/Bundle;
    const-string v5, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    invoke-static {v4, v5, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 516
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x28

    invoke-static {v5, v6, v2, v1, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 524
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "monitoringExtras":Landroid/os/Bundle;
    :goto_3
    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v0, v3, :cond_9

    iget-boolean v3, p3, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    if-nez v3, :cond_9

    .line 525
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot restore package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " without the matching .apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v4, 0x29

    const-string v5, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 532
    invoke-static {v2, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 527
    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 536
    :cond_9
    return-object v0
.end method

.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object v0
.end method

.method public readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .locals 13
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    .line 282
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 287
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    int-to-long v1, v1

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_5

    .line 288
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 293
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 294
    .local v2, "str":[Ljava/lang/String;
    move v4, v3

    .line 297
    .local v4, "offset":I
    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 298
    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 299
    .local v7, "version":I
    if-ne v7, v1, :cond_4

    .line 300
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v1

    move v4, v1

    .line 301
    aget-object v1, v2, v3

    .line 303
    .local v1, "manifestPackage":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 304
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 305
    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 306
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 309
    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 310
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 311
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    aget-object v8, v2, v3

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    iput-object v8, p1, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 312
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 313
    aget-object v8, v2, v3

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p1, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    .line 314
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 315
    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 316
    .local v8, "numSigs":I
    if-lez v8, :cond_2

    .line 317
    new-array v9, v8, [Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 318
    .local v9, "sigs":[Landroid/content/pm/Signature;
    move v10, v4

    move v4, v3

    .local v4, "i":I
    .local v10, "offset":I
    :goto_1
    if-ge v4, v8, :cond_1

    .line 319
    :try_start_1
    invoke-static {v0, v10, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    move v10, v11

    .line 320
    new-instance v11, Landroid/content/pm/Signature;

    aget-object v12, v2, v3

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 372
    .end local v1    # "manifestPackage":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "version":I
    .end local v8    # "numSigs":I
    .end local v9    # "sigs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    move v4, v10

    goto/16 :goto_3

    .line 363
    :catch_1
    move-exception v1

    move v4, v10

    goto/16 :goto_4

    .line 322
    .restart local v1    # "manifestPackage":Ljava/lang/String;
    .restart local v7    # "version":I
    .restart local v8    # "numSigs":I
    .restart local v9    # "sigs":[Landroid/content/pm/Signature;
    :cond_1
    return-object v9

    .line 324
    .end local v9    # "sigs":[Landroid/content/pm/Signature;
    .end local v10    # "offset":I
    .local v4, "offset":I
    :cond_2
    :try_start_2
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing signature on backed-up package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2a

    const-string v10, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 330
    invoke-static {v6, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 325
    invoke-static {v3, v9, v6, v5, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 333
    .end local v8    # "numSigs":I
    goto :goto_2

    .line 334
    :cond_3
    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " but restore manifest claims "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v6, v3, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 338
    .local v3, "monitoringExtras":Landroid/os/Bundle;
    const-string v8, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    invoke-static {v3, v8, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v3, v8

    .line 341
    iget-object v8, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2b

    invoke-static {v8, v9, v6, v5, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 348
    .end local v1    # "manifestPackage":Ljava/lang/String;
    .end local v3    # "monitoringExtras":Landroid/os/Bundle;
    :goto_2
    goto :goto_5

    .line 349
    :cond_4
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown restore manifest version "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for package "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v6, v1, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 353
    .local v1, "monitoringExtras":Landroid/os/Bundle;
    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v8, v7

    invoke-static {v1, v3, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    move-object v1, v3

    .line 355
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v8, 0x2c

    invoke-static {v3, v8, v6, v5, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v1    # "monitoringExtras":Landroid/os/Bundle;
    .end local v7    # "version":I
    goto :goto_5

    .line 372
    :catch_2
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    const-string v3, "BackupManagerService"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_6

    .line 363
    :catch_3
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/NumberFormatException;
    :goto_4
    const-string v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Corrupt restore manifest for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x2e

    const-string v8, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 370
    invoke-static {v6, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 365
    invoke-static {v3, v7, v6, v5, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 374
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_5
    nop

    .line 376
    :goto_6
    return-object v6

    .line 290
    .end local v2    # "str":[Ljava/lang/String;
    .end local v4    # "offset":I
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF in manifest"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    .end local v0    # "buffer":[B
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore manifest too big; corrupt? size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .locals 13
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    .line 566
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 567
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    int-to-long v1, v1

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_5

    .line 568
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 573
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 574
    .local v2, "str":[Ljava/lang/String;
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 575
    .local v4, "offset":I
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 576
    .local v5, "version":I
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v5, v1, :cond_4

    .line 577
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 578
    aget-object v1, v2, v3

    .line 579
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 582
    new-instance v3, Ljava/io/ByteArrayInputStream;

    array-length v6, v0

    sub-int/2addr v6, v4

    invoke-direct {v3, v0, v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 584
    .local v3, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 585
    .local v6, "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    if-lez v7, :cond_2

    .line 586
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 587
    .local v7, "token":I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 588
    .local v8, "size":I
    const/high16 v9, 0x10000

    if-gt v8, v9, :cond_1

    .line 592
    const v9, 0x1ffed01

    if-eq v7, v9, :cond_0

    .line 603
    const-string v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring metadata blob "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v6, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    .end local v7    # "token":I
    .end local v8    # "size":I
    goto :goto_1

    .line 597
    .restart local v7    # "token":I
    .restart local v8    # "size":I
    :cond_0
    new-array v9, v8, [B

    iput-object v9, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 598
    iget-object v9, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    invoke-virtual {v6, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 599
    nop

    .line 610
    .end local v7    # "token":I
    .end local v8    # "size":I
    :goto_1
    goto :goto_0

    .line 589
    .restart local v7    # "token":I
    .restart local v8    # "size":I
    :cond_1
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Datum "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " too big; corrupt? size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 611
    .end local v3    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "token":I
    .end local v8    # "size":I
    :cond_2
    goto :goto_2

    .line 612
    :cond_3
    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Metadata mismatch: package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " but widget data for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v7, v3, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 618
    .local v3, "monitoringExtras":Landroid/os/Bundle;
    const-string v8, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    invoke-static {v3, v8, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 620
    iget-object v8, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2f

    invoke-static {v8, v9, v7, v6, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 627
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "monitoringExtras":Landroid/os/Bundle;
    :goto_2
    goto :goto_3

    .line 628
    :cond_4
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported metadata version "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 631
    invoke-static {v7, v1, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 633
    .local v1, "monitoringExtras":Landroid/os/Bundle;
    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v8, v5

    invoke-static {v1, v3, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v1

    .line 635
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v8, 0x30

    invoke-static {v3, v8, v7, v6, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 642
    .end local v1    # "monitoringExtras":Landroid/os/Bundle;
    :goto_3
    return-void

    .line 570
    .end local v2    # "str":[Ljava/lang/String;
    .end local v4    # "offset":I
    .end local v5    # "version":I
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF in widget data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    .end local v0    # "buffer":[B
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata too big; corrupt? size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 104
    .local v0, "block":[B
    const/4 v1, 0x0

    .line 106
    .local v1, "info":Lcom/android/server/backup/FileMetadata;
    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v2

    .line 107
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_d

    .line 110
    :try_start_0
    new-instance v3, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v3}, Lcom/android/server/backup/FileMetadata;-><init>()V

    move-object v1, v3

    .line 111
    const/16 v3, 0x7c

    const/16 v4, 0xc

    const/16 v5, 0x8

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 115
    const/16 v3, 0x88

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 119
    const/16 v3, 0x64

    invoke-static {v0, v3, v5, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 124
    const/16 v4, 0x159

    const/16 v5, 0x9b

    invoke-static {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 127
    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2f

    if-lez v5, :cond_1

    .line 131
    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 134
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 138
    :cond_1
    const/16 v5, 0x9c

    aget-byte v7, v0, v5

    .line 139
    .local v7, "typeChar":I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_4

    .line 141
    invoke-direct {p0, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z

    move-result v8

    move v2, v8

    .line 142
    if-eqz v2, :cond_2

    .line 145
    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v8

    move v2, v8

    .line 147
    :cond_2
    if-eqz v2, :cond_3

    .line 151
    aget-byte v5, v0, v5

    move v7, v5

    goto :goto_0

    .line 148
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Bad or missing pax header"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 154
    :cond_4
    :goto_0
    if-eqz v7, :cond_c

    const/16 v5, 0x30

    if-eq v7, v5, :cond_6

    const/16 v5, 0x35

    if-ne v7, v5, :cond_5

    .line 159
    const/4 v5, 0x2

    iput v5, v1, Lcom/android/server/backup/FileMetadata;->type:I

    .line 160
    iget-wide v8, v1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_7

    .line 161
    const-string v5, "BackupManagerService"

    const-string v8, "Directory entry with nonzero size in header"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-wide v10, v1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_1

    .line 174
    :cond_5
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tar entity type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown entity type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_6
    const/4 v5, 0x1

    iput v5, v1, Lcom/android/server/backup/FileMetadata;->type:I

    .line 157
    nop

    .line 182
    :cond_7
    :goto_1
    const-string/jumbo v5, "shared/"

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "shared/"

    .line 183
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 182
    invoke-virtual {v5, v4, v8, v4, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 185
    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v5, "shared/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 186
    const-string v4, "com.android.sharedstoragebackup"

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 187
    const-string/jumbo v4, "shared"

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 189
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File in shared storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 191
    :cond_8
    const-string v5, "apps/"

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    .line 192
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 191
    invoke-virtual {v5, v4, v8, v4, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 196
    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v8, "apps/"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 199
    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 200
    .local v5, "slash":I
    if-ltz v5, :cond_a

    .line 203
    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 204
    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 208
    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_meta"

    .line 209
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 210
    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v5, v6

    .line 211
    if-ltz v5, :cond_9

    .line 215
    iget-object v6, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 216
    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 216
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "slash":I
    .end local v7    # "typeChar":I
    goto :goto_2

    .line 212
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v5    # "slash":I
    .restart local v7    # "typeChar":I
    :cond_9
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal semantic path in non-manifest "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    :cond_a
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal semantic path in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "slash":I
    .end local v7    # "typeChar":I
    :cond_b
    :goto_2
    goto :goto_3

    .line 171
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_c
    const/4 v4, 0x0

    return-object v4

    .line 219
    .end local v3    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_0
    move-exception v3

    .line 221
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse error in header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    throw v3

    .line 229
    .end local v3    # "e":Ljava/io/IOException;
    :cond_d
    :goto_3
    return-object v1
.end method

.method public skipTarPadding(J)V
    .locals 7
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    const-wide/16 v0, 0x200

    add-long v2, p1, v0

    rem-long/2addr v2, v0

    .line 543
    .local v2, "partial":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 544
    long-to-int v0, v2

    rsub-int v0, v0, 0x200

    .line 548
    .local v0, "needed":I
    new-array v1, v0, [B

    .line 549
    .local v1, "buffer":[B
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 550
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long v5, v0

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_0

    .line 552
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 555
    .end local v0    # "needed":I
    .end local v1    # "buffer":[B
    :cond_1
    :goto_0
    return-void
.end method
