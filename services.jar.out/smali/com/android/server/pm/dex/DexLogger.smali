.class public Lcom/android/server/pm/dex/DexLogger;
.super Ljava/lang/Object;
.source "DexLogger.java"

# interfaces
.implements Lcom/android/server/pm/dex/DexManager$Listener;


# static fields
.field private static final DCL_SUBTAG:Ljava/lang/String; = "dcl"

.field private static final SNET_TAG:I = 0x534e4554

.field private static final TAG:Ljava/lang/String; = "DexLogger"


# instance fields
.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "pms"    # Landroid/content/pm/IPackageManager;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "installLock"    # Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/dex/DexLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 64
    iput-object p2, p0, Lcom/android/server/pm/dex/DexLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 65
    iput-object p3, p0, Lcom/android/server/pm/dex/DexLogger;->mInstallLock:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public static getListener(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)Lcom/android/server/pm/dex/DexManager$Listener;
    .locals 1
    .param p0, "pms"    # Landroid/content/pm/IPackageManager;
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/android/server/pm/dex/DexLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/dex/DexLogger;-><init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public onReconcileSecondaryDexFile(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Ljava/lang/String;I)V
    .locals 11
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p3, "dexPath"    # Ljava/lang/String;
    .param p4, "storageFlags"    # I

    .line 74
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 76
    .local v6, "ownerUid":I
    const/4 v7, 0x0

    .line 77
    .local v7, "hash":[B
    iget-object v8, p0, Lcom/android/server/pm/dex/DexLogger;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/dex/DexLogger;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object v1, p3

    move v3, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v7    # "hash":[B
    .local v0, "hash":[B
    nop

    .line 85
    move-object v7, v0

    goto :goto_0

    .end local v0    # "hash":[B
    .restart local v7    # "hash":[B
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_1
    const-string v1, "DexLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got InstallerException when hashing dex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-nez v7, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "dexFileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "message":Ljava/lang/String;
    array-length v2, v7

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_1
    invoke-virtual {p0, v6, v1}, Lcom/android/server/pm/dex/DexLogger;->writeDclEvent(ILjava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v2

    .line 101
    .local v2, "otherPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 102
    .local v3, "otherUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 104
    .local v5, "otherPackageName":Ljava/lang/String;
    :try_start_2
    iget-object v8, p0, Lcom/android/server/pm/dex/DexLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v9, 0x0

    .line 105
    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v10

    .line 104
    invoke-interface {v8, v5, v9, v10}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    .line 106
    .local v8, "otherUid":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    if-eq v8, v6, :cond_2

    .line 107
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    .end local v8    # "otherUid":I
    :cond_2
    goto :goto_2

    .line 109
    :catch_1
    move-exception v8

    .line 112
    .end local v5    # "otherPackageName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 113
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 114
    .local v5, "otherUid":I
    invoke-virtual {p0, v5, v1}, Lcom/android/server/pm/dex/DexLogger;->writeDclEvent(ILjava/lang/String;)V

    .line 115
    .end local v5    # "otherUid":I
    goto :goto_3

    .line 117
    .end local v2    # "otherPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "otherUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    return-void

    .line 85
    .end local v0    # "dexFileName":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    :goto_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method writeDclEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dcl"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 122
    return-void
.end method
