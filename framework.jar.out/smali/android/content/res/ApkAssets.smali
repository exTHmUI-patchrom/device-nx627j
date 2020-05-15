.class public final Landroid/content/res/ApkAssets;
.super Ljava/lang/Object;
.source "ApkAssets.java"


# instance fields
.field private final mNativePtr:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mStringBlock:Landroid/content/res/StringBlock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "system"    # Z
    .param p4, "forceSharedLib"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v0, "fd"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "friendlyName"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/ApkAssets;->nativeLoadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ZZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 125
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 126
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "system"    # Z
    .param p3, "forceSharedLib"    # Z
    .param p4, "overlay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/ApkAssets;->nativeLoad(Ljava/lang/String;ZZZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 117
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 118
    return-void
.end method

.method public static loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "system"    # Z
    .param p3, "forceSharedLibrary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/content/res/ApkAssets;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ApkAssets;-><init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Landroid/content/res/ApkAssets;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public static loadFromPath(Ljava/lang/String;Z)Landroid/content/res/ApkAssets;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "system"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Landroid/content/res/ApkAssets;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public static loadFromPath(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "system"    # Z
    .param p2, "forceSharedLibrary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/content/res/ApkAssets;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public static loadOverlayFromPath(Ljava/lang/String;Z)Landroid/content/res/ApkAssets;
    .locals 3
    .param p0, "idmapPath"    # Ljava/lang/String;
    .param p1, "system"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/content/res/ApkAssets;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetAssetPath(J)Ljava/lang/String;
.end method

.method private static native nativeGetStringBlock(J)J
.end method

.method private static native nativeIsUpToDate(J)Z
.end method

.method private static native nativeLoad(Ljava/lang/String;ZZZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeLoadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ZZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenXml(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 181
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDestroy(J)V

    .line 182
    return-void
.end method

.method public getAssetPath()Ljava/lang/String;
    .locals 2

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetAssetPath(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getStringFromPool(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "idx"    # I

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUpToDate()Z
    .locals 2

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeIsUpToDate(J)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const-string v0, "fileName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeOpenXml(JLjava/lang/String;)J

    move-result-wide v0

    .line 153
    .local v0, "nativeXmlPtr":J
    new-instance v2, Landroid/content/res/XmlBlock;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    .local v2, "block":Landroid/content/res/XmlBlock;
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_0

    .line 160
    nop

    .line 161
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    return-object v4

    .line 158
    :cond_0
    :try_start_3
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "block.newParser() returned a null parser"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 153
    :catch_0
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    :goto_0
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_6
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    :goto_1
    throw v4

    .line 162
    .end local v0    # "nativeXmlPtr":J
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkAssets{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
