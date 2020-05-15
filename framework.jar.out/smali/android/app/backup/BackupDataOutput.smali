.class public Landroid/app/backup/BackupDataOutput;
.super Ljava/lang/Object;
.source "BackupDataOutput.java"


# instance fields
.field mBackupWriter:J

.field private final mQuota:J

.field private final mTransportFlags:I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 78
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;J)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "quota"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JI)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "quota"    # J
    .param p4, "transportFlags"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-eqz p1, :cond_1

    .line 90
    iput-wide p2, p0, Landroid/app/backup/BackupDataOutput;->mQuota:J

    .line 91
    iput p4, p0, Landroid/app/backup/BackupDataOutput;->mTransportFlags:I

    .line 92
    invoke-static {p1}, Landroid/app/backup/BackupDataOutput;->ctor(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    .line 93
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native initialization failed with fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)J
.end method

.method private static native dtor(J)V
.end method

.method private static native setKeyPrefix_native(JLjava/lang/String;)V
.end method

.method private static native writeEntityData_native(J[BI)I
.end method

.method private static native writeEntityHeader_native(JLjava/lang/String;I)I
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    invoke-static {v0, v1}, Landroid/app/backup/BackupDataOutput;->dtor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 165
    nop

    .line 166
    return-void

    .line 164
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getQuota()J
    .locals 2

    .line 105
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mQuota:J

    return-wide v0
.end method

.method public getTransportFlags()I
    .locals 1

    .line 115
    iget v0, p0, Landroid/app/backup/BackupDataOutput;->mTransportFlags:I

    return v0
.end method

.method public setKeyPrefix(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .line 155
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    invoke-static {v0, v1, p1}, Landroid/app/backup/BackupDataOutput;->setKeyPrefix_native(JLjava/lang/String;)V

    .line 156
    return-void
.end method

.method public writeEntityData([BI)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    invoke-static {v0, v1, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityData_native(J[BI)I

    move-result v0

    .line 146
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 147
    return v0

    .line 149
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeEntityHeader(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    invoke-static {v0, v1, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader_native(JLjava/lang/String;I)I

    move-result v0

    .line 130
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 131
    return v0

    .line 133
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
