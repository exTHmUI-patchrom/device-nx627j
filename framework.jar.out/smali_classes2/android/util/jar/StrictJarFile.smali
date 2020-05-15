.class public final Landroid/util/jar/StrictJarFile;
.super Ljava/lang/Object;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarFile$FDStream;,
        Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;,
        Landroid/util/jar/StrictJarFile$JarFileInputStream;,
        Landroid/util/jar/StrictJarFile$EntryIterator;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isSigned:Z

.field private final manifest:Landroid/util/jar/StrictJarManifest;

.field private final nativeHandle:J

.field private final verifier:Landroid/util/jar/StrictJarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/io/FileDescriptor;ZZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;ZZ)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "verify"    # Z
    .param p3, "signatureSchemeRollbackProtectionsEnforced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[fd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "verify"    # Z
    .param p4, "signatureSchemeRollbackProtectionsEnforced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    .line 105
    invoke-virtual {p2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-static {p1, v0}, Landroid/util/jar/StrictJarFile;->nativeOpenJarFile(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    .line 106
    iput-object p2, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 113
    :try_start_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarFile;->getMetaEntries()Ljava/util/HashMap;

    move-result-object v2

    .line 114
    .local v2, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v3, Landroid/util/jar/StrictJarManifest;

    const-string v4, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v3, v4, v1}, Landroid/util/jar/StrictJarManifest;-><init>([BZ)V

    iput-object v3, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    .line 115
    new-instance v3, Landroid/util/jar/StrictJarVerifier;

    iget-object v4, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-direct {v3, p1, v4, v2, p4}, Landroid/util/jar/StrictJarVerifier;-><init>(Ljava/lang/String;Landroid/util/jar/StrictJarManifest;Ljava/util/HashMap;Z)V

    iput-object v3, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    .line 121
    iget-object v3, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-virtual {v3}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 122
    .local v3, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 123
    .local v5, "file":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 126
    .end local v5    # "file":Ljava/lang/String;
    goto :goto_0

    .line 124
    .restart local v5    # "file":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in manifest does not exist"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    .end local v5    # "file":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {v4}, Landroid/util/jar/StrictJarVerifier;->readCertificates()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {v4}, Landroid/util/jar/StrictJarVerifier;->isSignedJar()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    nop

    :cond_2
    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    .line 129
    .end local v2    # "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .end local v3    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    goto :goto_2

    .line 130
    :cond_3
    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    .line 132
    iput-object v0, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    nop

    .line 141
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 142
    return-void

    .line 134
    :goto_2
    nop

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v2, v3}, Landroid/util/jar/StrictJarFile;->nativeClose(J)V

    .line 136
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 137
    iput-boolean v1, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    .line 138
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .param p3, "signatureSchemeRollbackProtectionsEnforced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 86
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {p1, v0}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    .line 88
    return-void
.end method

.method static synthetic access$000(JLjava/lang/String;)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;

    .line 48
    invoke-static {p0, p1, p2}, Landroid/util/jar/StrictJarFile;->nativeStartIteration(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(J)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p0, "x0"    # J

    .line 48
    invoke-static {p0, p1}, Landroid/util/jar/StrictJarFile;->nativeNextEntry(J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method private getMetaEntries()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v0, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v1, Landroid/util/jar/StrictJarFile$EntryIterator;

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    const-string v4, "META-INF/"

    invoke-direct {v1, v2, v3, v4}, Landroid/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    .line 300
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 302
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    goto :goto_0

    .line 305
    :cond_0
    return-object v0
.end method

.method private getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 13
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .line 247
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/util/jar/StrictJarFile$FDStream;

    iget-object v2, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v3

    .line 249
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/util/jar/StrictJarFile$FDStream;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 248
    return-object v0

    .line 251
    :cond_0
    new-instance v0, Landroid/util/jar/StrictJarFile$FDStream;

    iget-object v8, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    .line 252
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v9

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v3

    add-long v11, v1, v3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/util/jar/StrictJarFile$FDStream;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 254
    .local v0, "wrapped":Landroid/util/jar/StrictJarFile$FDStream;
    const/16 v1, 0x400

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0xffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 255
    .local v1, "bufSize":I
    new-instance v2, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;

    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v2, v0, v3, v1, p1}, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    return-object v2
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;
.end method

.method private static native nativeNextEntry(J)Ljava/util/zip/ZipEntry;
.end method

.method private static native nativeOpenJarFile(Ljava/lang/String;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeStartIteration(JLjava/lang/String;)J
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 228
    :cond_0
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v0, v1}, Landroid/util/jar/StrictJarFile;->nativeClose(J)V

    .line 229
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    .line 232
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 243
    nop

    .line 244
    return-void

    .line 242
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 153
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v0, v1, p1}, Landroid/util/jar/StrictJarFile;->nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .line 165
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;
    .locals 9
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 188
    .local v0, "certChains":[[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    .line 189
    .local v1, "count":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .end local v1    # "count":I
    .local v4, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 190
    .local v5, "chain":[Ljava/security/cert/Certificate;
    array-length v6, v5

    add-int/2addr v4, v6

    .line 189
    .end local v5    # "chain":[Ljava/security/cert/Certificate;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    new-array v1, v4, [Ljava/security/cert/Certificate;

    .line 195
    .local v1, "certs":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    .line 196
    .local v2, "i":I
    array-length v5, v0

    move v6, v2

    move v2, v3

    .end local v2    # "i":I
    .local v6, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v0, v2

    .line 197
    .local v7, "chain":[Ljava/security/cert/Certificate;
    array-length v8, v7

    invoke-static {v7, v3, v1, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    array-length v8, v7

    add-int/2addr v6, v8

    .line 196
    .end local v7    # "chain":[Ljava/security/cert/Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    :cond_1
    return-object v1

    .line 204
    .end local v0    # "certChains":[[Ljava/security/cert/Certificate;
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "count":I
    .end local v6    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 5
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .line 208
    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarFile;->getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 210
    .local v0, "is":Ljava/io/InputStream;
    iget-boolean v1, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/jar/StrictJarVerifier;->initEntry(Ljava/lang/String;)Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    move-result-object v1

    .line 212
    .local v1, "entry":Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    if-nez v1, :cond_0

    .line 213
    return-object v0

    .line 216
    :cond_0
    new-instance v2, Landroid/util/jar/StrictJarFile$JarFileInputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4, v1}, Landroid/util/jar/StrictJarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V

    return-object v2

    .line 219
    .end local v1    # "entry":Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    :cond_1
    return-object v0
.end method

.method public getManifest()Landroid/util/jar/StrictJarManifest;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/util/jar/StrictJarFile$EntryIterator;

    iget-wide v1, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Landroid/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    return-object v0
.end method
