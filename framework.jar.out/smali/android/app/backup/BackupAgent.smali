.class public abstract Landroid/app/backup/BackupAgent;
.super Landroid/content/ContextWrapper;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupAgent$FailRunnable;,
        Landroid/app/backup/BackupAgent$BackupServiceBinder;,
        Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FLAG_CLIENT_SIDE_ENCRYPTION_ENABLED:I = 0x1

.field public static final FLAG_DEVICE_TO_DEVICE_TRANSFER:I = 0x2

.field public static final FLAG_FAKE_CLIENT_SIDE_ENCRYPTION_ENABLED:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "BackupAgent"

.field public static final TYPE_DIRECTORY:I = 0x2

.field public static final TYPE_EOF:I = 0x0

.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_SYMLINK:I = 0x3


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 177
    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    .line 960
    new-instance v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;

    invoke-direct {v1, p0, v0}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$1;)V

    invoke-virtual {v1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    .line 209
    return-void
.end method

.method static synthetic access$100(Landroid/app/backup/BackupAgent;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/backup/BackupAgent;

    .line 125
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V

    return-void
.end method

.method private applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domainToken"    # Ljava/lang/String;
    .param p6, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Landroid/util/ArraySet<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "includeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local p4, "filterSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p5, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v7, p2

    move-object v8, p3

    .line 525
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 530
    :cond_0
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 533
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 534
    .local v10, "includeFile":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    invoke-virtual {v10}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getRequiredFlags()I

    move-result v0

    .line 535
    invoke-virtual/range {p6 .. p6}, Landroid/app/backup/FullBackupDataOutput;->getTransportFlags()I

    move-result v1

    .line 534
    move-object v11, p0

    invoke-direct {v11, v0, v1}, Landroid/app/backup/BackupAgent;->areIncludeRequiredTransportFlagsSatisfied(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    invoke-virtual {v10}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v0, v11

    move-object v1, p1

    move-object v2, v7

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 539
    .end local v10    # "includeFile":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    :cond_1
    goto :goto_0

    .line 541
    :cond_2
    move-object v11, p0

    goto :goto_2

    .line 527
    :cond_3
    :goto_1
    move-object v11, p0

    .line 528
    invoke-static {v11}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 527
    move-object v0, v11

    move-object v1, p1

    move-object v2, v7

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 541
    :goto_2
    return-void
.end method

.method private areIncludeRequiredTransportFlagsSatisfied(II)Z
    .locals 1
    .param p1, "includeFlags"    # I
    .param p2, "transportFlags"    # I

    .line 546
    and-int v0, p2, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFileEligibleForRestore(Ljava/io/File;)Z
    .locals 10
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    invoke-static {p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    .line 811
    .local v0, "bs":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_1

    .line 812
    const-string v1, "BackupXmlParserLogging"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    const-string v1, "BackupXmlParserLogging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestoreFile \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" : fullBackupContent not enabled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 813
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    return v2

    .line 820
    :cond_1
    const/4 v1, 0x0

    .line 821
    .local v1, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const/4 v4, 0x0

    .line 822
    .local v4, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 824
    .local v5, "destinationCanonicalPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v6

    move-object v1, v6

    .line 825
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;

    move-result-object v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 834
    nop

    .line 836
    if-eqz v4, :cond_3

    .line 837
    invoke-direct {p0, p1, v4}, Landroid/app/backup/BackupAgent;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 838
    const-string v6, "BackupXmlParserLogging"

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 839
    const-string v3, "BackupXmlParserLogging"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onRestoreFile: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\": listed in excludes; skipping."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_2
    return v2

    .line 846
    :cond_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 849
    const/4 v6, 0x0

    .line 850
    .local v6, "explicitlyIncluded":Z
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 851
    .local v8, "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-direct {p0, p1, v8}, Landroid/app/backup/BackupAgent;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v9

    or-int/2addr v6, v9

    .line 852
    if-eqz v6, :cond_4

    .line 853
    goto :goto_1

    .line 855
    .end local v8    # "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    :cond_4
    goto :goto_0

    .line 856
    :cond_5
    :goto_1
    if-nez v6, :cond_7

    .line 857
    const-string v7, "BackupXmlParserLogging"

    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 858
    const-string v3, "BackupXmlParserLogging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onRestoreFile: Trying to restore \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" but it isn\'t specified in the included files; skipping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_6
    return v2

    .line 866
    .end local v6    # "explicitlyIncluded":Z
    :cond_7
    const/4 v2, 0x1

    return v2

    .line 826
    :catch_0
    move-exception v6

    .line 827
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "BackupXmlParserLogging"

    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 828
    const-string v3, "BackupXmlParserLogging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onRestoreFile \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" : Exception trying to parse fullBackupContent xml file! Aborting onRestoreFile."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    :cond_8
    return v2
.end method

.method private isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    .local p2, "canonicalPathList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 876
    .local v1, "canonical":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    invoke-virtual {v1}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 877
    .local v2, "canonicalPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 878
    .local v3, "fileFromList":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 879
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {p1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 884
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 887
    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 889
    const/4 v0, 0x1

    return v0

    .line 892
    .end local v1    # "canonical":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    .end local v2    # "canonicalPath":Ljava/lang/String;
    .end local v3    # "fileFromList":Ljava/io/File;
    :cond_2
    goto :goto_0

    .line 893
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private manifestExcludesContainFilePath(Landroid/util/ArraySet;Ljava/lang/String;)Z
    .locals 4
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 765
    .local p1, "manifestExcludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 766
    .local v1, "exclude":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    invoke-virtual {v1}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "excludePath":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 768
    const/4 v0, 0x1

    return v0

    .line 770
    .end local v1    # "exclude":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    .end local v2    # "excludePath":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 771
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private waitForSharedPrefs()V
    .locals 3

    .line 198
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 199
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;

    invoke-direct {v1, p0}, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;-><init>(Landroid/app/backup/BackupAgent;)V

    .line 200
    .local v1, "s":Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 202
    :try_start_0
    iget-object v2, v1, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    :catch_0
    move-exception v2

    .line 204
    :goto_0
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 964
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->attachBaseContext(Landroid/content/Context;)V

    .line 965
    return-void
.end method

.method public final fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 34
    .param p1, "file"    # Ljava/io/File;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .line 583
    const/4 v1, 0x0

    .line 586
    .local v1, "efDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v2, v0

    .line 591
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 592
    .local v0, "ceContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "rootDir":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 594
    .local v4, "filesDir":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "nbFilesDir":Ljava/lang/String;
    const-string v6, "foo"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "dbDir":Ljava/lang/String;
    const-string v7, "foo"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 597
    .local v7, "spDir":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 598
    .local v8, "cacheDir":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 600
    .local v9, "codeCacheDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v10

    .line 601
    .local v10, "deContext":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 602
    .local v11, "deviceRootDir":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    .line 603
    .local v12, "deviceFilesDir":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 604
    .local v13, "deviceNbFilesDir":Ljava/lang/String;
    const-string v14, "foo"

    invoke-virtual {v10, v14}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    .line 605
    .local v14, "deviceDbDir":Ljava/lang/String;
    const-string v15, "foo"

    invoke-virtual {v10, v15}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 606
    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .line 607
    .local v15, "deviceSpDir":Ljava/lang/String;
    move-object/from16 v16, v0

    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 607
    .end local v0    # "ceContext":Landroid/content/Context;
    .local v16, "ceContext":Landroid/content/Context;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 608
    .local v0, "deviceCacheDir":Ljava/lang/String;
    move-object/from16 v17, v1

    :try_start_1
    invoke-virtual {v10}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v1

    .line 608
    .end local v1    # "efDir":Ljava/lang/String;
    .local v17, "efDir":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "deviceCodeCacheDir":Ljava/lang/String;
    move-object/from16 v18, v10

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 610
    .end local v10    # "deContext":Landroid/content/Context;
    .local v18, "deContext":Landroid/content/Context;
    move-object/from16 v19, v1

    .line 610
    .end local v1    # "deviceCodeCacheDir":Ljava/lang/String;
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 611
    nop

    .line 612
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v10, Ljava/io/File;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "libDir":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v21, v2

    const/16 v2, 0x3e8

    .line 615
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eq v10, v2, :cond_1

    .line 616
    move-object/from16 v2, p0

    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v2, v10}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 617
    .local v10, "efLocation":Ljava/io/File;
    if-eqz v10, :cond_2

    .line 618
    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v20
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v10, v20

    .line 618
    .end local v17    # "efDir":Ljava/lang/String;
    .local v10, "efDir":Ljava/lang/String;
    goto :goto_1

    .line 626
    .end local v0    # "deviceCacheDir":Ljava/lang/String;
    .end local v1    # "libDir":Ljava/lang/String;
    .end local v3    # "rootDir":Ljava/lang/String;
    .end local v4    # "filesDir":Ljava/lang/String;
    .end local v5    # "nbFilesDir":Ljava/lang/String;
    .end local v6    # "dbDir":Ljava/lang/String;
    .end local v7    # "spDir":Ljava/lang/String;
    .end local v8    # "cacheDir":Ljava/lang/String;
    .end local v9    # "codeCacheDir":Ljava/lang/String;
    .end local v10    # "efDir":Ljava/lang/String;
    .end local v11    # "deviceRootDir":Ljava/lang/String;
    .end local v12    # "deviceFilesDir":Ljava/lang/String;
    .end local v13    # "deviceNbFilesDir":Ljava/lang/String;
    .end local v14    # "deviceDbDir":Ljava/lang/String;
    .end local v15    # "deviceSpDir":Ljava/lang/String;
    .end local v16    # "ceContext":Landroid/content/Context;
    .end local v18    # "deContext":Landroid/content/Context;
    .end local v19    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v17    # "efDir":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 625
    .restart local v0    # "deviceCacheDir":Ljava/lang/String;
    .restart local v1    # "libDir":Ljava/lang/String;
    .restart local v3    # "rootDir":Ljava/lang/String;
    .restart local v4    # "filesDir":Ljava/lang/String;
    .restart local v5    # "nbFilesDir":Ljava/lang/String;
    .restart local v6    # "dbDir":Ljava/lang/String;
    .restart local v7    # "spDir":Ljava/lang/String;
    .restart local v8    # "cacheDir":Ljava/lang/String;
    .restart local v9    # "codeCacheDir":Ljava/lang/String;
    .restart local v11    # "deviceRootDir":Ljava/lang/String;
    .restart local v12    # "deviceFilesDir":Ljava/lang/String;
    .restart local v13    # "deviceNbFilesDir":Ljava/lang/String;
    .restart local v14    # "deviceDbDir":Ljava/lang/String;
    .restart local v15    # "deviceSpDir":Ljava/lang/String;
    .restart local v16    # "ceContext":Landroid/content/Context;
    .restart local v18    # "deContext":Landroid/content/Context;
    .restart local v19    # "deviceCodeCacheDir":Ljava/lang/String;
    :cond_1
    move-object/from16 v2, p0

    :cond_2
    move-object/from16 v10, v17

    .line 625
    .end local v17    # "efDir":Ljava/lang/String;
    .restart local v10    # "efDir":Ljava/lang/String;
    :goto_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v17
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 625
    .end local v16    # "ceContext":Landroid/content/Context;
    .end local v18    # "deContext":Landroid/content/Context;
    move-object/from16 v28, v17

    .line 629
    .local v28, "filePath":Ljava/lang/String;
    nop

    .line 628
    move-object/from16 v29, v19

    .line 631
    .end local v19    # "deviceCodeCacheDir":Ljava/lang/String;
    .local v29, "deviceCodeCacheDir":Ljava/lang/String;
    move-object/from16 v2, v28

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    .line 631
    .end local v28    # "filePath":Ljava/lang/String;
    .local v2, "filePath":Ljava/lang/String;
    if-nez v16, :cond_e

    .line 632
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 633
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 634
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 635
    move-object/from16 v30, v0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    .line 635
    .end local v29    # "deviceCodeCacheDir":Ljava/lang/String;
    .local v0, "deviceCodeCacheDir":Ljava/lang/String;
    .local v30, "deviceCacheDir":Ljava/lang/String;
    if-nez v16, :cond_d

    .line 636
    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 637
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 638
    move-object/from16 v31, v0

    move-object/from16 v32, v1

    move-object/from16 v33, v3

    goto/16 :goto_4

    .line 643
    :cond_3
    const/16 v16, 0x0

    .line 644
    .local v16, "rootpath":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 645
    const-string v17, "db"

    .line 646
    .local v17, "domain":Ljava/lang/String;
    move-object/from16 v16, v6

    .line 673
    .end local v17    # "domain":Ljava/lang/String;
    .local v23, "domain":Ljava/lang/String;
    :goto_2
    move-object/from16 v23, v17

    goto :goto_3

    .line 647
    .end local v23    # "domain":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 648
    const-string/jumbo v17, "sp"

    .line 649
    .restart local v17    # "domain":Ljava/lang/String;
    move-object/from16 v16, v7

    goto :goto_2

    .line 650
    .end local v17    # "domain":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 651
    const-string v17, "f"

    .line 652
    .restart local v17    # "domain":Ljava/lang/String;
    move-object/from16 v16, v4

    goto :goto_2

    .line 653
    .end local v17    # "domain":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 654
    const-string/jumbo v17, "r"

    .line 655
    .restart local v17    # "domain":Ljava/lang/String;
    move-object/from16 v16, v3

    goto :goto_2

    .line 656
    .end local v17    # "domain":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 657
    const-string v17, "d_db"

    .line 658
    .restart local v17    # "domain":Ljava/lang/String;
    move-object/from16 v16, v14

    goto :goto_2

    .line 659
    .end local v17    # "domain":Ljava/lang/String;
    :cond_8
    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 660
    const-string v17, "d_sp"

    .line 661
    .restart local v17    # "domain":Ljava/lang/String;
    move-object/from16 v16, v15

    goto :goto_2

    .line 662
    .end local v17    # "domain":Ljava/lang/String;
    :cond_9
    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 663
    const-string v17, "d_f"

    .line 664
    .restart local v17    # "domain":Ljava/lang/String;
    move-object/from16 v16, v12

    goto :goto_2

    .line 665
    .end local v17    # "domain":Ljava/lang/String;
    :cond_a
    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 666
    const-string v17, "d_r"

    .line 667
    .restart local v17    # "domain":Ljava/lang/String;
    move-object/from16 v16, v11

    goto :goto_2

    .line 668
    .end local v17    # "domain":Ljava/lang/String;
    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 669
    const-string v17, "ef"

    .line 670
    .restart local v17    # "domain":Ljava/lang/String;
    move-object/from16 v16, v10

    goto :goto_2

    .line 673
    .end local v17    # "domain":Ljava/lang/String;
    .restart local v23    # "domain":Ljava/lang/String;
    :goto_3
    nop

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v25, v16

    move-object/from16 v26, v2

    move-object/from16 v27, p2

    invoke-static/range {v22 .. v27}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 683
    return-void

    .line 672
    .end local v23    # "domain":Ljava/lang/String;
    :cond_c
    move-object/from16 v31, v0

    const-string v0, "BackupAgent"

    .line 672
    .end local v0    # "deviceCodeCacheDir":Ljava/lang/String;
    .local v31, "deviceCodeCacheDir":Ljava/lang/String;
    move-object/from16 v32, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 672
    .end local v1    # "libDir":Ljava/lang/String;
    .local v32, "libDir":Ljava/lang/String;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v3

    const-string v3, "File "

    .line 672
    .end local v3    # "rootDir":Ljava/lang/String;
    .local v33, "rootDir":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in an unsupported location; skipping"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-void

    .line 638
    .end local v16    # "rootpath":Ljava/lang/String;
    .end local v31    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v32    # "libDir":Ljava/lang/String;
    .end local v33    # "rootDir":Ljava/lang/String;
    .restart local v0    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v1    # "libDir":Ljava/lang/String;
    .restart local v3    # "rootDir":Ljava/lang/String;
    :cond_d
    move-object/from16 v31, v0

    move-object/from16 v32, v1

    move-object/from16 v33, v3

    .line 638
    .end local v0    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v1    # "libDir":Ljava/lang/String;
    .end local v3    # "rootDir":Ljava/lang/String;
    .restart local v31    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v32    # "libDir":Ljava/lang/String;
    .restart local v33    # "rootDir":Ljava/lang/String;
    goto :goto_4

    .line 638
    .end local v30    # "deviceCacheDir":Ljava/lang/String;
    .end local v31    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v32    # "libDir":Ljava/lang/String;
    .end local v33    # "rootDir":Ljava/lang/String;
    .local v0, "deviceCacheDir":Ljava/lang/String;
    .restart local v1    # "libDir":Ljava/lang/String;
    .restart local v3    # "rootDir":Ljava/lang/String;
    .restart local v29    # "deviceCodeCacheDir":Ljava/lang/String;
    :cond_e
    move-object/from16 v30, v0

    move-object/from16 v32, v1

    move-object/from16 v33, v3

    move-object/from16 v31, v29

    .line 638
    .end local v0    # "deviceCacheDir":Ljava/lang/String;
    .end local v1    # "libDir":Ljava/lang/String;
    .end local v3    # "rootDir":Ljava/lang/String;
    .end local v29    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v30    # "deviceCacheDir":Ljava/lang/String;
    .restart local v31    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v32    # "libDir":Ljava/lang/String;
    .restart local v33    # "rootDir":Ljava/lang/String;
    :goto_4
    const-string v0, "BackupAgent"

    const-string/jumbo v1, "lib, cache, code_cache, and no_backup files are not backed up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void

    .line 626
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "filesDir":Ljava/lang/String;
    .end local v5    # "nbFilesDir":Ljava/lang/String;
    .end local v6    # "dbDir":Ljava/lang/String;
    .end local v7    # "spDir":Ljava/lang/String;
    .end local v8    # "cacheDir":Ljava/lang/String;
    .end local v9    # "codeCacheDir":Ljava/lang/String;
    .end local v11    # "deviceRootDir":Ljava/lang/String;
    .end local v12    # "deviceFilesDir":Ljava/lang/String;
    .end local v13    # "deviceNbFilesDir":Ljava/lang/String;
    .end local v14    # "deviceDbDir":Ljava/lang/String;
    .end local v15    # "deviceSpDir":Ljava/lang/String;
    .end local v30    # "deviceCacheDir":Ljava/lang/String;
    .end local v31    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v32    # "libDir":Ljava/lang/String;
    .end local v33    # "rootDir":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v17, v10

    goto :goto_5

    .line 626
    .end local v10    # "efDir":Ljava/lang/String;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v17, "efDir":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v21, v2

    .line 626
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_5

    .line 626
    .end local v17    # "efDir":Ljava/lang/String;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "efDir":Ljava/lang/String;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v21, v2

    .line 627
    .end local v1    # "efDir":Ljava/lang/String;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "efDir":Ljava/lang/String;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_5
    const-string v1, "BackupAgent"

    const-string v2, "Unable to obtain canonical paths"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method protected final fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "startingPath"    # Ljava/lang/String;
    .param p6, "output"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .local p4, "manifestExcludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p5, "systemExcludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 699
    invoke-static/range {p0 .. p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 700
    .local v10, "domainPath":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 702
    return-void

    .line 705
    :cond_0
    new-instance v0, Ljava/io/File;

    move-object/from16 v11, p3

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 706
    .local v12, "rootFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 707
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v13, v0

    .line 708
    .local v13, "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 710
    :goto_0
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 711
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    move-object v14, v3

    .line 715
    .local v14, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    .line 716
    .local v4, "stat":Landroid/system/StructStat;
    iget v5, v4, Landroid/system/StructStat;->st_mode:I

    invoke-static {v5}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v4, Landroid/system/StructStat;->st_mode:I

    .line 717
    invoke-static {v5}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 719
    goto :goto_0

    .line 723
    :cond_1
    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v7, v5

    .line 726
    .local v7, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 727
    move-object/from16 v15, p0

    :try_start_1
    invoke-direct {v15, v1, v7}, Landroid/app/backup/BackupAgent;->manifestExcludesContainFilePath(Landroid/util/ArraySet;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 728
    goto :goto_0

    .line 749
    .end local v4    # "stat":Landroid/system/StructStat;
    .end local v7    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 743
    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 730
    .restart local v4    # "stat":Landroid/system/StructStat;
    .restart local v7    # "filePath":Ljava/lang/String;
    :cond_2
    move-object/from16 v15, p0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 731
    goto :goto_0

    .line 735
    :cond_4
    iget v5, v4, Landroid/system/StructStat;->st_mode:I

    invoke-static {v5}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 736
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 737
    .local v5, "contents":[Ljava/io/File;
    if-eqz v5, :cond_5

    .line 738
    array-length v6, v5

    move v8, v0

    :goto_1
    if-ge v8, v6, :cond_5

    aget-object v16, v5, v8

    move-object/from16 v17, v16

    .line 739
    .local v17, "entry":Ljava/io/File;
    move-object/from16 v3, v17

    invoke-virtual {v13, v0, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 738
    .end local v17    # "entry":Ljava/io/File;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 755
    .end local v4    # "stat":Landroid/system/StructStat;
    .end local v5    # "contents":[Ljava/io/File;
    :cond_5
    nop

    .line 754
    nop

    .line 758
    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object v4, v9

    move-object v6, v10

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 759
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v14    # "file":Ljava/io/File;
    goto :goto_0

    .line 749
    .restart local v14    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    .line 751
    .local v0, "e":Landroid/system/ErrnoException;
    :goto_2
    const-string v3, "BackupXmlParserLogging"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 752
    const-string v3, "BackupXmlParserLogging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error scanning file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_6
    goto/16 :goto_0

    .line 743
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_3
    move-exception v0

    move-object/from16 v15, p0

    .line 745
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    const-string v3, "BackupXmlParserLogging"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 746
    const-string v3, "BackupXmlParserLogging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error canonicalizing path of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_7
    goto/16 :goto_0

    .line 761
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    .end local v14    # "file":Ljava/io/File;
    :cond_8
    move-object/from16 v15, p0

    return-void
.end method

.method getHandler()Landroid/os/Handler;
    .locals 2

    .line 180
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    .line 183
    :cond_0
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onBind()Landroid/os/IBinder;
    .locals 1

    .line 957
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 218
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 227
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 35
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-static/range {p0 .. p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v1

    .line 343
    .local v1, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v1}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    return-void

    .line 350
    :cond_0
    nop

    .line 351
    :try_start_0
    invoke-virtual {v1}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v5

    .line 352
    .local v5, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    invoke-virtual {v1}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .local v6, "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    nop

    .line 359
    nop

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 367
    .local v14, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v15

    .line 368
    .local v15, "ceContext":Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 369
    .local v13, "rootDir":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    .line 370
    .local v12, "filesDir":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 371
    .local v11, "noBackupDir":Ljava/lang/String;
    const-string v2, "foo"

    invoke-virtual {v15, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    .line 373
    .local v10, "databaseDir":Ljava/lang/String;
    const-string v2, "foo"

    invoke-virtual {v15, v2}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 374
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, "sharedPrefsDir":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, "cacheDir":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, "codeCacheDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 379
    .local v4, "deContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "deviceRootDir":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "deviceFilesDir":Ljava/lang/String;
    move-object/from16 v16, v1

    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    .line 381
    .end local v1    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    .local v16, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "deviceNoBackupDir":Ljava/lang/String;
    move-object/from16 v17, v3

    const-string v3, "foo"

    .line 382
    .end local v3    # "deviceRootDir":Ljava/lang/String;
    .local v17, "deviceRootDir":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 383
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "deviceDatabaseDir":Ljava/lang/String;
    move-object/from16 v18, v15

    const-string v15, "foo"

    .line 384
    .end local v15    # "ceContext":Landroid/content/Context;
    .local v18, "ceContext":Landroid/content/Context;
    invoke-virtual {v4, v15}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 385
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .line 386
    .local v15, "deviceSharedPrefsDir":Ljava/lang/String;
    move-object/from16 v19, v13

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v13

    .line 386
    .end local v13    # "rootDir":Ljava/lang/String;
    .local v19, "rootDir":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 387
    .local v13, "deviceCacheDir":Ljava/lang/String;
    move-object/from16 v20, v5

    invoke-virtual {v4}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v5

    .line 387
    .end local v5    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local v20, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "deviceCodeCacheDir":Ljava/lang/String;
    move-object/from16 v21, v4

    iget-object v4, v14, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 389
    .end local v4    # "deContext":Landroid/content/Context;
    .local v21, "deContext":Landroid/content/Context;
    move-object/from16 v22, v6

    .line 389
    .end local v6    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local v22, "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    if-eqz v4, :cond_1

    .line 390
    new-instance v4, Ljava/io/File;

    iget-object v6, v14, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 391
    :cond_1
    const/4 v6, 0x0

    .line 396
    .local v6, "libDir":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 399
    .local v4, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v4, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {v4, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v4, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 413
    if-eqz v6, :cond_2

    .line 414
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_2
    const-string/jumbo v24, "r"

    move-object/from16 v25, v1

    move-object v1, v2

    move-object/from16 v2, p0

    .line 418
    .end local v2    # "deviceFilesDir":Ljava/lang/String;
    .local v1, "deviceFilesDir":Ljava/lang/String;
    .local v25, "deviceNoBackupDir":Ljava/lang/String;
    move-object/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v14, v17

    move-object v15, v3

    move-object v3, v0

    .line 418
    .end local v3    # "deviceDatabaseDir":Ljava/lang/String;
    .end local v17    # "deviceRootDir":Ljava/lang/String;
    .local v14, "deviceRootDir":Ljava/lang/String;
    .local v15, "deviceDatabaseDir":Ljava/lang/String;
    .local v26, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v27, "deviceSharedPrefsDir":Ljava/lang/String;
    move-object/from16 v28, v4

    move-object/from16 v17, v21

    move-object/from16 v4, v24

    .line 418
    .end local v4    # "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "deContext":Landroid/content/Context;
    .local v17, "deContext":Landroid/content/Context;
    .local v28, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v21, v7

    move-object/from16 v7, v28

    .line 418
    .end local v7    # "codeCacheDir":Ljava/lang/String;
    .local v21, "codeCacheDir":Ljava/lang/String;
    move-object/from16 v24, v8

    move-object/from16 v8, p1

    .line 418
    .end local v8    # "cacheDir":Ljava/lang/String;
    .local v24, "cacheDir":Ljava/lang/String;
    move-object/from16 v33, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v33

    move-object/from16 v34, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v34

    invoke-direct/range {v2 .. v8}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 421
    .local v5, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local v6, "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local v20, "deviceCodeCacheDir":Ljava/lang/String;
    .local v22, "libDir":Ljava/lang/String;
    move-object/from16 v2, v19

    move-object/from16 v3, v28

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v19    # "rootDir":Ljava/lang/String;
    .end local v28    # "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "rootDir":Ljava/lang/String;
    .local v3, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v4, "d_r"

    move-object/from16 v7, p0

    move-object v8, v0

    move-object/from16 v29, v2

    move-object v2, v9

    move-object v9, v4

    .line 423
    .end local v9    # "sharedPrefsDir":Ljava/lang/String;
    .local v2, "sharedPrefsDir":Ljava/lang/String;
    .local v29, "rootDir":Ljava/lang/String;
    move-object v4, v10

    move-object v10, v5

    .line 423
    .end local v10    # "databaseDir":Ljava/lang/String;
    .local v4, "databaseDir":Ljava/lang/String;
    move-object/from16 v19, v11

    move-object v11, v6

    .line 423
    .end local v11    # "noBackupDir":Ljava/lang/String;
    .local v19, "noBackupDir":Ljava/lang/String;
    move-object/from16 v30, v2

    move-object v2, v12

    move-object v12, v3

    .line 423
    .end local v12    # "filesDir":Ljava/lang/String;
    .local v2, "filesDir":Ljava/lang/String;
    .local v30, "sharedPrefsDir":Ljava/lang/String;
    move-object/from16 v28, v13

    move-object/from16 v23, v29

    move-object/from16 v13, p1

    .line 423
    .end local v13    # "deviceCacheDir":Ljava/lang/String;
    .end local v29    # "rootDir":Ljava/lang/String;
    .local v23, "rootDir":Ljava/lang/String;
    .local v28, "deviceCacheDir":Ljava/lang/String;
    invoke-direct/range {v7 .. v13}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 426
    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 430
    const-string v9, "f"

    invoke-direct/range {v7 .. v13}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 433
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 436
    const-string v9, "d_f"

    invoke-direct/range {v7 .. v13}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 439
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 443
    const-string v9, "db"

    invoke-direct/range {v7 .. v13}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 446
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v3, v15}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 449
    const-string v9, "d_db"

    invoke-direct/range {v7 .. v13}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 452
    invoke-virtual {v3, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 455
    move-object/from16 v13, v30

    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 456
    .end local v30    # "sharedPrefsDir":Ljava/lang/String;
    .local v13, "sharedPrefsDir":Ljava/lang/String;
    const-string/jumbo v9, "sp"

    move-object/from16 v31, v1

    move-object v1, v13

    move-object/from16 v13, p1

    .line 456
    .end local v13    # "sharedPrefsDir":Ljava/lang/String;
    .local v1, "sharedPrefsDir":Ljava/lang/String;
    .local v31, "deviceFilesDir":Ljava/lang/String;
    invoke-direct/range {v7 .. v13}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 459
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 461
    move-object/from16 v13, v27

    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 462
    .end local v27    # "deviceSharedPrefsDir":Ljava/lang/String;
    .local v13, "deviceSharedPrefsDir":Ljava/lang/String;
    const-string v9, "d_sp"

    move-object/from16 v32, v1

    move-object v1, v13

    move-object/from16 v13, p1

    .line 462
    .end local v13    # "deviceSharedPrefsDir":Ljava/lang/String;
    .local v1, "deviceSharedPrefsDir":Ljava/lang/String;
    .local v32, "sharedPrefsDir":Ljava/lang/String;
    invoke-direct/range {v7 .. v13}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 465
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_3

    .line 475
    move-object/from16 v13, p0

    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v27

    .line 476
    .local v27, "efLocation":Ljava/io/File;
    if-eqz v27, :cond_3

    .line 477
    const-string v9, "ef"

    move-object v7, v13

    move-object v8, v0

    move-object v10, v5

    move-object v11, v6

    move-object v12, v3

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 483
    .end local v27    # "efLocation":Ljava/io/File;
    :cond_3
    return-void

    .line 353
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "filesDir":Ljava/lang/String;
    .end local v3    # "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "databaseDir":Ljava/lang/String;
    .end local v5    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .end local v6    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .end local v14    # "deviceRootDir":Ljava/lang/String;
    .end local v15    # "deviceDatabaseDir":Ljava/lang/String;
    .end local v16    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    .end local v17    # "deContext":Landroid/content/Context;
    .end local v18    # "ceContext":Landroid/content/Context;
    .end local v19    # "noBackupDir":Ljava/lang/String;
    .end local v20    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v21    # "codeCacheDir":Ljava/lang/String;
    .end local v22    # "libDir":Ljava/lang/String;
    .end local v23    # "rootDir":Ljava/lang/String;
    .end local v24    # "cacheDir":Ljava/lang/String;
    .end local v25    # "deviceNoBackupDir":Ljava/lang/String;
    .end local v26    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v28    # "deviceCacheDir":Ljava/lang/String;
    .end local v31    # "deviceFilesDir":Ljava/lang/String;
    .end local v32    # "sharedPrefsDir":Ljava/lang/String;
    .local v1, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    .line 354
    .end local v1    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    const-string v1, "BackupXmlParserLogging"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    const-string v1, "BackupXmlParserLogging"

    const-string v2, "Exception trying to parse fullBackupContent xml file! Aborting full backup."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    :cond_4
    return-void
.end method

.method public onQuotaExceeded(JJ)V
    .locals 0
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    .line 513
    return-void
.end method

.method public abstract onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    long-to-int v0, p2

    invoke-virtual {p0, p1, v0, p4}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 305
    return-void
.end method

.method protected onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 17
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p5

    .line 904
    const/4 v1, 0x0

    .line 910
    .local v1, "basePath":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 911
    const-string v2, "ef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    const-wide/16 v2, -0x1

    .end local p7    # "mode":J
    .local v2, "mode":J
    goto :goto_0

    .line 916
    .end local v2    # "mode":J
    .restart local p7    # "mode":J
    :cond_0
    move-wide/from16 v2, p7

    .end local p7    # "mode":J
    .restart local v2    # "mode":J
    :goto_0
    if-eqz v1, :cond_1

    .line 918
    new-instance v4, Ljava/io/File;

    move-object/from16 v14, p6

    invoke-direct {v4, v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v4

    .line 919
    .local v15, "outFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    .line 920
    .local v12, "outPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 922
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object v8, v15

    move/from16 v9, p4

    move-wide v10, v2

    move-object/from16 v16, v12

    move-wide/from16 v12, p9

    .end local v12    # "outPath":Ljava/lang/String;
    .local v16, "outPath":Ljava/lang/String;
    invoke-virtual/range {v4 .. v13}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .line 923
    return-void

    .line 936
    .end local v15    # "outFile":Ljava/io/File;
    .end local v16    # "outPath":Ljava/lang/String;
    :cond_1
    move-object/from16 v14, p6

    :cond_2
    const/4 v12, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-wide v8, v2

    move-wide/from16 v10, p9

    invoke-static/range {v4 .. v12}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 937
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 13
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "type"    # I
    .param p6, "mode"    # J
    .param p8, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/app/backup/BackupAgent;->isFileEligibleForRestore(Ljava/io/File;)Z

    move-result v2

    .line 806
    .local v2, "accept":Z
    if-eqz v2, :cond_0

    move-object v12, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v12, v3

    :goto_0
    move-object v4, p1

    move-wide v5, p2

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v4 .. v12}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 807
    return-void
.end method

.method public onRestoreFinished()V
    .locals 0

    .line 951
    return-void
.end method
