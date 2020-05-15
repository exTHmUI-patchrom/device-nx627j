.class public abstract Landroid/app/backup/BlobBackupHelper;
.super Ljava/lang/Object;
.source "BlobBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BlobBackupHelper"


# instance fields
.field private final mCurrentBlobVersion:I

.field private final mKeys:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "currentBlobVersion"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    .line 51
    iput-object p2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method private checksum([B)J
    .locals 7
    .param p1, "buffer"    # [B

    .line 219
    if-eqz p1, :cond_1

    .line 221
    :try_start_0
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 222
    .local v0, "crc":Ljava/util/zip/CRC32;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 223
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 224
    .local v2, "buf":[B
    const/4 v3, 0x0

    move v4, v3

    .line 225
    .local v4, "nRead":I
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v5

    move v4, v5

    if-ltz v5, :cond_0

    .line 226
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v5

    .line 229
    .end local v0    # "crc":Ljava/util/zip/CRC32;
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "buf":[B
    .end local v4    # "nRead":I
    :catch_0
    move-exception v0

    .line 233
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private deflate([B)[B
    .locals 5
    .param p1, "data"    # [B

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "result":[B
    if-eqz p1, :cond_0

    .line 164
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v1, "sink":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 168
    .local v2, "headerOut":Ljava/io/DataOutputStream;
    iget v3, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 170
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    .local v3, "out":Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v3, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 172
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 173
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 179
    .end local v1    # "sink":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "headerOut":Ljava/io/DataOutputStream;
    .end local v3    # "out":Ljava/util/zip/DeflaterOutputStream;
    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BlobBackupHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private inflate([B)[B
    .locals 9
    .param p1, "compressedData"    # [B

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "result":[B
    if-eqz p1, :cond_2

    .line 189
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 190
    .local v1, "source":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 191
    .local v2, "headerIn":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 192
    .local v3, "version":I
    iget v4, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-le v3, v4, :cond_0

    .line 193
    const-string v4, "BlobBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved payload from unrecognized version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v4, 0x0

    return-object v4

    .line 197
    :cond_0
    new-instance v4, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    .local v4, "in":Ljava/util/zip/InflaterInputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    .local v5, "inflated":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 201
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {v4, v6}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "nRead":I
    if-lez v7, :cond_1

    .line 202
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 205
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 206
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 213
    .end local v1    # "source":Ljava/io/ByteArrayInputStream;
    .end local v2    # "headerIn":Ljava/io/DataInputStream;
    .end local v3    # "version":I
    .end local v4    # "in":Ljava/util/zip/InflaterInputStream;
    .end local v5    # "inflated":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "nRead":I
    goto :goto_1

    .line 210
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BlobBackupHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process restored payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-object v0
.end method

.method private readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;
    .locals 10
    .param p1, "oldStateFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 93
    .local v0, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 94
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 98
    .local v3, "version":I
    iget v4, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-gt v3, v4, :cond_1

    .line 99
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 103
    .local v4, "numKeys":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 104
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    .line 109
    .local v7, "checksum":J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "checksum":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 111
    .end local v4    # "numKeys":I
    .end local v5    # "i":I
    :cond_0
    goto :goto_1

    .line 112
    :cond_1
    const-string v4, "BlobBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prior state from unrecognized version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "version":I
    goto :goto_1

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "BlobBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error examining prior backup state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 114
    :catch_1
    move-exception v3

    .line 120
    .local v3, "e":Ljava/io/EOFException;
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 124
    .end local v3    # "e":Ljava/io/EOFException;
    :goto_1
    nop

    .line 126
    :goto_2
    return-object v0
.end method

.method private writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p2, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .line 134
    .local p1, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 139
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 141
    .local v1, "out":Ljava/io/DataOutputStream;
    iget v2, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 143
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 144
    .local v3, "N":I
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 145
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 146
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 147
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 151
    .local v5, "checksum":J
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "checksum":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_1
    goto :goto_2

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BlobBackupHelper"

    const-string v2, "Unable to write updated state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method


# virtual methods
.method protected abstract applyRestoredPayload(Ljava/lang/String;[B)V
.end method

.method protected abstract getBackupPayload(Ljava/lang/String;)[B
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 12
    .param p1, "oldStateFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newStateFd"    # Landroid/os/ParcelFileDescriptor;

    .line 245
    invoke-direct {p0, p1}, Landroid/app/backup/BlobBackupHelper;->readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 246
    .local v0, "oldState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 249
    .local v1, "newState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 250
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/app/backup/BlobBackupHelper;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/app/backup/BlobBackupHelper;->deflate([B)[B

    move-result-object v6

    .line 251
    .local v6, "payload":[B
    invoke-direct {p0, v6}, Landroid/app/backup/BlobBackupHelper;->checksum([B)J

    move-result-wide v7

    .line 255
    .local v7, "checksum":J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 258
    .local v9, "oldChecksum":Ljava/lang/Long;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v7, v10

    if-eqz v10, :cond_2

    .line 263
    :cond_0
    if-eqz v6, :cond_1

    .line 264
    array-length v10, v6

    invoke-virtual {p2, v5, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 265
    array-length v10, v6

    invoke-virtual {p2, v6, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_1

    .line 268
    :cond_1
    const/4 v10, -0x1

    invoke-virtual {p2, v5, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "payload":[B
    .end local v7    # "checksum":J
    .end local v9    # "oldChecksum":Ljava/lang/Long;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    :cond_3
    :goto_2
    invoke-direct {p0, v1, p3}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 282
    goto :goto_3

    .line 281
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "BlobBackupHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to record notification state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 283
    :goto_3
    return-void

    .line 281
    :goto_4
    invoke-direct {p0, v1, p3}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    throw v2
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 5
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .line 287
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "which":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 292
    iget-object v2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    goto :goto_1

    .line 291
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 297
    const-string v2, "BlobBackupHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 301
    :cond_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 302
    .local v2, "compressed":[B
    invoke-virtual {p1, v2}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 303
    invoke-direct {p0, v2}, Landroid/app/backup/BlobBackupHelper;->inflate([B)[B

    move-result-object v3

    .line 304
    .local v3, "payload":[B
    invoke-virtual {p0, v0, v3}, Landroid/app/backup/BlobBackupHelper;->applyRestoredPayload(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "which":I
    .end local v2    # "compressed":[B
    .end local v3    # "payload":[B
    goto :goto_2

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BlobBackupHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception restoring entity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 317
    return-void
.end method
