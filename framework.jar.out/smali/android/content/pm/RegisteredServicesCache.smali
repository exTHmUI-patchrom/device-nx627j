.class public abstract Landroid/content/pm/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,
        Landroid/content/pm/RegisteredServicesCache$UserServices;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final REGISTERED_SERVICES_DIR:Ljava/lang/String; = "registered_services"

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private final mAttributesName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field private final mExternalReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private final mInterfaceName:Ljava/lang/String;

.field private mListener:Landroid/content/pm/RegisteredServicesCacheListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mMetaDataName:Ljava/lang/String;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/XmlSerializerAndParser<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final mServicesLock:Ljava/lang/Object;

.field private final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "metaDataName"    # Ljava/lang/String;
    .param p4, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/XmlSerializerAndParser<",
            "TV;>;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p5, "serializerAndParser":Landroid/content/pm/XmlSerializerAndParser;, "Landroid/content/pm/XmlSerializerAndParser<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 211
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$1;

    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$1;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$2;

    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$2;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$3;

    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$3;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    .line 154
    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    .line 158
    invoke-direct {p0}, Landroid/content/pm/RegisteredServicesCache;->migrateIfNecessaryLocked()V

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    return-void
.end method

.method static synthetic access$100(Landroid/content/pm/RegisteredServicesCache;I)Landroid/util/AtomicFile;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/RegisteredServicesCache;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/pm/RegisteredServicesCache;)Landroid/content/pm/XmlSerializerAndParser;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/RegisteredServicesCache;

    .line 82
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    return-object v0
.end method

.method private containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;TV;)Z"
        }
    .end annotation

    .line 620
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .local p2, "type":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 621
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    const/4 v2, 0x1

    return v2

    .line 620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z
    .locals 4
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;TV;I)Z"
        }
    .end annotation

    .line 630
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .local p2, "type":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 631
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 632
    .local v2, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v3, p3, :cond_0

    .line 633
    const/4 v3, 0x1

    return v3

    .line 630
    .end local v2    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private containsUid([II)Z
    .locals 1
    .param p1, "changedUids"    # [I
    .param p2, "uid"    # I

    .line 616
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    if-eqz p1, :cond_1

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private createFileForUser(I)Landroid/util/AtomicFile;
    .locals 4
    .param p1, "userId"    # I

    .line 855
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 856
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registered_services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 857
    .local v1, "userFile":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method private findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v0

    return-object v0
.end method

.method private findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "loadFromFileIfNew"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 117
    .local v0, "services":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    if-nez v0, :cond_0

    .line 118
    new-instance v1, Landroid/content/pm/RegisteredServicesCache$UserServices;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/pm/RegisteredServicesCache$UserServices;-><init>(Landroid/content/pm/RegisteredServicesCache$1;)V

    move-object v0, v1

    .line 119
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUser(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 124
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 125
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v3

    .line 126
    .local v3, "file":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    nop

    .line 132
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v2, v4

    .line 133
    invoke-direct {p0, v2}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "file":Landroid/util/AtomicFile;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    goto :goto_2

    .line 137
    .restart local v1    # "user":Landroid/content/pm/UserInfo;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "file":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 134
    :catch_0
    move-exception v4

    .line 135
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading persistent services for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 137
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 143
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "file":Landroid/util/AtomicFile;
    :cond_0
    :goto_2
    return-object v0
.end method

.method private generateServicesMap([II)V
    .locals 17
    .param p1, "changedUids"    # [I
    .param p2, "userId"    # I

    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 475
    move/from16 v3, p2

    iget-object v4, v1, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 476
    :try_start_0
    invoke-direct {v1, v3}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v0

    move-object v5, v0

    .line 477
    .local v5, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v0, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 478
    .local v8, "cacheInvalid":Z
    if-eqz v8, :cond_1

    .line 479
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 482
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 483
    .local v9, "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    invoke-virtual {v1, v3}, Landroid/content/pm/RegisteredServicesCache;->queryIntentServices(I)Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    .line 485
    .local v10, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    .line 492
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v8, :cond_2

    :try_start_1
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 493
    invoke-direct {v1, v2, v0}, Landroid/content/pm/RegisteredServicesCache;->containsUid([II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 498
    goto :goto_1

    .line 506
    :catch_0
    move-exception v0

    goto :goto_2

    .line 500
    :cond_2
    invoke-virtual {v1, v12}, Landroid/content/pm/RegisteredServicesCache;->parseServiceInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    .line 501
    .local v0, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    if-nez v0, :cond_3

    .line 502
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to load service info "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    goto :goto_1

    .line 505
    :cond_3
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    .end local v0    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    goto :goto_3

    .line 506
    :goto_2
    nop

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to load service info "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_3
    goto :goto_1

    .line 511
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .local v0, "changes":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 513
    .local v11, "changed":Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 523
    .local v13, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    iget-object v14, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    iget-object v15, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 524
    .local v14, "previousUid":Ljava/lang/Integer;
    if-nez v14, :cond_6

    .line 528
    const/4 v11, 0x1

    .line 529
    iget-object v15, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    iget-object v6, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v15, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v6, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    iget-object v15, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    iget v7, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-boolean v6, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->mPersistentServicesFileDidNotExist:Z

    if-eqz v6, :cond_5

    if-nez v8, :cond_8

    .line 532
    :cond_5
    iget-object v6, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v3, v7}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    goto :goto_5

    .line 534
    :cond_6
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v6, v7, :cond_7

    .line 538
    iget-object v6, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    iget-object v7, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v6, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 539
    :cond_7
    iget v6, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v1, v6}, Landroid/content/pm/RegisteredServicesCache;->inSystemImage(I)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 540
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v1, v9, v6, v7}, Landroid/content/pm/RegisteredServicesCache;->containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_6

    .line 561
    .end local v13    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v14    # "previousUid":Ljava/lang/Integer;
    :cond_8
    :goto_5
    move v6, v11

    const/4 v11, 0x0

    goto :goto_7

    .line 550
    .restart local v13    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .restart local v14    # "previousUid":Ljava/lang/Integer;
    :cond_9
    :goto_6
    const/4 v6, 0x1

    .line 551
    .end local v11    # "changed":Z
    .local v6, "changed":Z
    iget-object v7, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    iget-object v11, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v7, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v7, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    iget-object v11, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    iget v15, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v7, v13, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {v1, v7, v3, v11}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    .line 561
    .end local v13    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v14    # "previousUid":Ljava/lang/Integer;
    :goto_7
    nop

    .line 513
    move v11, v6

    goto :goto_4

    .line 563
    .end local v6    # "changed":Z
    .restart local v11    # "changed":Z
    :cond_a
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 564
    .local v6, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    iget-object v7, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 567
    .local v12, "v1":Ljava/lang/Object;, "TV;"
    invoke-direct {v1, v9, v12}, Landroid/content/pm/RegisteredServicesCache;->containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    iget-object v13, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 568
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v1, v2, v13}, Landroid/content/pm/RegisteredServicesCache;->containsUid([II)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 569
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v12    # "v1":Ljava/lang/Object;, "TV;"
    :cond_b
    goto :goto_8

    .line 572
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 576
    .restart local v12    # "v1":Ljava/lang/Object;, "TV;"
    const/4 v11, 0x1

    .line 577
    iget-object v13, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v13, v5, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const/4 v13, 0x1

    invoke-direct {v1, v12, v3, v13}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    .line 580
    .end local v12    # "v1":Ljava/lang/Object;, "TV;"
    goto :goto_9

    .line 600
    :cond_d
    if-eqz v11, :cond_e

    .line 601
    invoke-virtual {v1, v3}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    .line 602
    invoke-direct {v1, v5, v3}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V

    .line 604
    .end local v0    # "changes":Ljava/lang/StringBuilder;
    .end local v5    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    .end local v6    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    .end local v8    # "cacheInvalid":Z
    .end local v9    # "serviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .end local v10    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "changed":Z
    :cond_e
    monitor-exit v4

    .line 605
    return-void

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private migrateIfNecessaryLocked()V
    .locals 10

    .line 720
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-nez v0, :cond_0

    .line 721
    return-void

    .line 723
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 724
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "registered_services"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 725
    .local v1, "syncDir":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 726
    .local v2, "oldFile":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 728
    .local v3, "oldFileExists":Z
    if-eqz v3, :cond_3

    .line 729
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xml.migrated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 731
    .local v4, "marker":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 735
    const/4 v5, 0x0

    .line 737
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    move-object v5, v6

    .line 738
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 739
    invoke-direct {p0, v5}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :goto_0
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 744
    goto :goto_1

    .line 743
    :catchall_0
    move-exception v6

    goto :goto_4

    .line 740
    :catch_0
    move-exception v6

    .line 741
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "PackageManager"

    const-string v8, "Error reading persistent services, starting from scratch"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 746
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 747
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 748
    .local v8, "userServices":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    if-eqz v8, :cond_1

    .line 753
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v9}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V

    .line 755
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "userServices":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_1
    goto :goto_2

    .line 756
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 759
    goto :goto_3

    .line 757
    :catch_1
    move-exception v6

    .line 758
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v7, "PackageManager"

    const-string v8, "Migration failed"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 762
    .end local v4    # "marker":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 743
    .restart local v4    # "marker":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .line 765
    .end local v4    # "marker":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_5
    return-void
.end method

.method private notifyListener(Ljava/lang/Object;IZ)V
    .locals 9
    .param p2, "userId"    # I
    .param p3, "removed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IZ)V"
        }
    .end annotation

    .line 287
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "type":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    .line 289
    .local v0, "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    move-object v7, v1

    .line 290
    .local v7, "handler":Landroid/os/Handler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    if-nez v0, :cond_0

    .line 292
    return-void

    .line 295
    :cond_0
    move-object v3, v0

    .line 296
    .local v3, "listener2":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    new-instance v8, Landroid/content/pm/RegisteredServicesCache$4;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/RegisteredServicesCache$4;-><init>(Landroid/content/pm/RegisteredServicesCache;Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void

    .line 290
    .end local v0    # "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    .end local v3    # "listener2":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    .end local v7    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private readPersistentServicesLocked(Ljava/io/InputStream;)V
    .locals 12
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 689
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 690
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 691
    .local v1, "eventType":I
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 693
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 695
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "services"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 697
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 699
    :cond_1
    if-ne v1, v3, :cond_3

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 700
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 701
    const-string/jumbo v5, "service"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 702
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    invoke-interface {v5, v0}, Landroid/content/pm/XmlSerializerAndParser;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v5

    .line 703
    .local v5, "service":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_2

    .line 704
    goto :goto_1

    .line 706
    :cond_2
    const/4 v6, 0x0

    const-string/jumbo v7, "uid"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 707
    .local v6, "uidString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 708
    .local v7, "uid":I
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 709
    .local v8, "userId":I
    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v9

    .line 711
    .local v9, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v10, v9, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .end local v5    # "service":Ljava/lang/Object;, "TV;"
    .end local v6    # "uidString":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "userId":I
    .end local v9    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 715
    if-ne v1, v2, :cond_1

    .line 717
    :cond_4
    :goto_1
    return-void
.end method

.method private writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;I)V"
        }
    .end annotation

    .line 771
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-nez v0, :cond_0

    .line 772
    return-void

    .line 803
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 804
    .local v0, "localPersistentServices":Ljava/util/Map;, "Ljava/util/Map<TV;Ljava/lang/Integer;>;"
    iget-object v1, p1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 806
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/content/pm/RegisteredServicesCache$5;

    invoke-direct {v2, p0, p2, v0}, Landroid/content/pm/RegisteredServicesCache$5;-><init>(Landroid/content/pm/RegisteredServicesCache;ILjava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 835
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "userId"    # I

    .line 252
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    invoke-direct {p0, p4}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 254
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisteredServicesCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " services"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 257
    .local v3, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    .end local v3    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    goto :goto_0

    .line 260
    :cond_0
    const-string v2, "RegisteredServicesCache: services not loaded"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_1
    monitor-exit v0

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllServices(I)Ljava/util/Collection;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;"
        }
    .end annotation

    .line 348
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 351
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 352
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 354
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 355
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 354
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 356
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBindInstantServiceAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 404
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string v2, "getBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 410
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-boolean v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->mBindInstantServiceAllowed:Z

    monitor-exit v0

    return v2

    .line 411
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getDataDirectory()Ljava/io/File;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 867
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Landroid/content/pm/RegisteredServicesCacheListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;"
        }
    .end annotation

    .line 266
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    monitor-exit p0

    return-object v0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getPersistentServices(I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 872
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "type":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 336
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 337
    const/4 v2, 0x0

    invoke-direct {p0, v2, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 339
    :cond_0
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    monitor-exit v0

    return-object v2

    .line 340
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getUser(I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 851
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getUserSystemDirectory(I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 862
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getUsers()Ljava/util/List;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 846
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected handlePackageEvent(Landroid/content/Intent;I)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 184
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 189
    .local v1, "isRemoval":Z
    :goto_1
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 191
    .local v4, "replacing":Z
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    goto :goto_4

    .line 195
    :cond_2
    const/4 v5, 0x0

    .line 198
    .local v5, "uids":[I
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 199
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 202
    :cond_3
    const-string v6, "android.intent.extra.UID"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 203
    .local v6, "uid":I
    if-lez v6, :cond_5

    .line 204
    new-array v2, v2, [I

    aput v6, v2, v3

    move-object v5, v2

    .end local v6    # "uid":I
    goto :goto_3

    .line 200
    :cond_4
    :goto_2
    const-string v2, "android.intent.extra.changed_uid_list"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 207
    :cond_5
    :goto_3
    invoke-direct {p0, v5, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 209
    .end local v5    # "uids":[I
    :goto_4
    return-void
.end method

.method protected inSystemImage(I)Z
    .locals 8
    .param p1, "callerUid"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 430
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "packages":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 432
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 434
    .local v4, "name":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 435
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 436
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 437
    return v7

    .line 441
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    nop

    .line 432
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 439
    .restart local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 440
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1

    .line 444
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public invalidateCache(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 241
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 246
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 247
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    .line 248
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onServicesChangedLocked(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 609
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    return-void
.end method

.method protected onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 839
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 841
    monitor-exit v0

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TV;"
        }
    .end annotation
.end method

.method protected parseServiceInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 10
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 644
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 648
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    move-object v4, v3

    .line 650
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v4, v5

    .line 651
    if-eqz v4, :cond_5

    .line 655
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 658
    .local v5, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_0

    const/4 v6, 0x2

    if-eq v7, v6, :cond_0

    .end local v7    # "type":I
    goto :goto_0

    .line 662
    .restart local v7    # "type":I
    :cond_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 663
    .local v6, "nodeName":Ljava/lang/String;
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 668
    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8, v9, v5}, Landroid/content/pm/RegisteredServicesCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    .local v8, "v":Ljava/lang/Object;, "TV;"
    if-nez v8, :cond_2

    .line 671
    nop

    .line 679
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 671
    :cond_1
    return-object v3

    .line 673
    :cond_2
    :try_start_1
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 674
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    invoke-direct {v9, v8, v3, v1}, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/pm/ComponentInfo;Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 674
    :cond_3
    return-object v9

    .line 664
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v8    # "v":Ljava/lang/Object;, "TV;"
    :cond_4
    :try_start_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Meta-data does not start with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " tag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 652
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_5
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " meta-data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 675
    :catch_0
    move-exception v3

    .line 676
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load resources for pacakge "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 679
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v3
.end method

.method protected queryIntentServices(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 449
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 450
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const v1, 0xc0080

    .line 453
    .local v1, "flags":I
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 454
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v3

    .line 455
    .local v3, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-boolean v4, v3, Landroid/content/pm/RegisteredServicesCache$UserServices;->mBindInstantServiceAllowed:Z

    if-eqz v4, :cond_0

    .line 456
    const/high16 v4, 0x800000

    or-int/2addr v1, v4

    .line 458
    .end local v3    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 458
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setBindInstantServiceAllowed(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "allowed"    # Z

    .line 418
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v2, "setBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 424
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iput-boolean p2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->mBindInstantServiceAllowed:Z

    .line 425
    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 272
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, "listener":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    if-nez p2, :cond_0

    .line 273
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p2, v0

    .line 275
    :cond_0
    monitor-enter p0

    .line 276
    :try_start_0
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    .line 277
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    .line 278
    monitor-exit p0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateServices(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 364
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 367
    .local v1, "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 368
    monitor-exit v0

    return-void

    .line 370
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v1    # "user":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    move-object v1, v2

    .line 371
    .local v1, "allServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "updatedUids":Landroid/util/IntArray;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 374
    .local v3, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    int-to-long v4, v4

    .line 375
    .local v4, "versionCode":J
    iget-object v6, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 376
    .local v6, "pkg":Ljava/lang/String;
    const/4 v7, 0x0

    .line 378
    .local v7, "newAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v8

    .line 381
    goto :goto_1

    .line 379
    :catch_0
    move-exception v8

    .line 383
    :goto_1
    if-eqz v7, :cond_1

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->versionCode:I

    int-to-long v8, v8

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3

    .line 388
    :cond_1
    if-nez v0, :cond_2

    .line 389
    new-instance v8, Landroid/util/IntArray;

    invoke-direct {v8}, Landroid/util/IntArray;-><init>()V

    move-object v0, v8

    .line 391
    :cond_2
    iget v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v0, v8}, Landroid/util/IntArray;->add(I)V

    .line 393
    .end local v3    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v4    # "versionCode":J
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "newAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    goto :goto_0

    .line 394
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 395
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    .line 396
    .local v2, "updatedUidsArray":[I
    invoke-direct {p0, v2, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 398
    .end local v2    # "updatedUidsArray":[I
    :cond_5
    return-void

    .line 371
    .end local v0    # "updatedUids":Landroid/util/IntArray;
    .end local v1    # "allServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
