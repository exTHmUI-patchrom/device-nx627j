.class public Landroid/mtp/MtpStorageManager;
.super Ljava/lang/Object;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpStorageManager$MtpNotifier;,
        Landroid/mtp/MtpStorageManager$MtpObject;,
        Landroid/mtp/MtpStorageManager$MtpOperation;,
        Landroid/mtp/MtpStorageManager$MtpObjectState;,
        Landroid/mtp/MtpStorageManager$MtpObjectObserver;
    }
.end annotation


# static fields
.field private static final IN_IGNORED:I = 0x8000

.field private static final IN_ISDIR:I = 0x40000000

.field private static final IN_ONLYDIR:I = 0x1000000

.field private static final IN_Q_OVERFLOW:I = 0x4000

.field private static final TAG:Ljava/lang/String;

.field public static sDebug:Z


# instance fields
.field private volatile mCheckConsistency:Z

.field private mConsistencyThread:Ljava/lang/Thread;

.field private mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

.field private mNextObjectId:I

.field private mNextStorageId:I

.field private mObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSubdirectories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 573
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

    .line 46
    const-class v0, Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V
    .locals 2
    .param p1, "notifier"    # Landroid/mtp/MtpStorageManager$MtpNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/mtp/MtpStorageManager$MtpNotifier;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p2, "subdirectories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    .line 332
    iput-object p2, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    .line 335
    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    .line 336
    iput v0, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    .line 339
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/mtp/-$$Lambda$MtpStorageManager$HocvlaKIXOtuA3p8uOP9PA7UJtw;

    invoke-direct {v1, p0}, Landroid/mtp/-$$Lambda$MtpStorageManager$HocvlaKIXOtuA3p8uOP9PA7UJtw;-><init>(Landroid/mtp/MtpStorageManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    .line 353
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 355
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager;
    .param p1, "x1"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager;
    .param p1, "x1"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 45
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->handleRemovedObject(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method private declared-synchronized addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 3
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "isDir"    # Z

    monitor-enter p0

    .line 592
    :try_start_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 594
    monitor-exit p0

    return-object v1

    .line 595
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 597
    monitor-exit p0

    return-object v1

    .line 599
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 601
    monitor-exit p0

    return-object v1

    .line 604
    :cond_2
    :try_start_3
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextObjectId()I

    move-result v1

    invoke-direct {v0, p2, v1, p1, p3}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorageManager$MtpObject;Z)V

    .line 605
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 607
    monitor-exit p0

    return-object v0

    .line 591
    .end local v0    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newName":Ljava/lang/String;
    .end local p3    # "isDir":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method private declared-synchronized generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .locals 3
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newId"    # Z

    monitor-enter p0

    .line 1184
    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1185
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1700(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 1186
    if-eqz p2, :cond_0

    .line 1187
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextObjectId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$2100(Landroid/mtp/MtpStorageManager$MtpObject;I)V

    .line 1188
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1191
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$900(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1192
    .local v1, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, v1, p2}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1193
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1192
    .end local v1    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_1
    goto :goto_0

    .line 1194
    :cond_2
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1183
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newId":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method private declared-synchronized generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z
    .locals 2
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "op"    # Landroid/mtp/MtpStorageManager$MtpOperation;

    monitor-enter p0

    .line 1174
    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1175
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1700(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 1176
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$900(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1178
    .local v1, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, v1, p2}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_0

    .line 1180
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1173
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method private declared-synchronized generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 1
    .param p1, "fromObj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "toObj"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 1160
    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1161
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1162
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1700(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 1163
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1700(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1159
    .end local p1    # "fromObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "toObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method private declared-synchronized generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .locals 3
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "succeeded"    # Z
    .param p3, "removeGlobal"    # Z

    monitor-enter p0

    .line 1081
    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$1;->$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState:[I

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 1115
    monitor-exit p0

    return v2

    .line 1106
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1, p3, v2}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 1107
    monitor-exit p0

    return v2

    .line 1108
    :cond_0
    if-eqz p2, :cond_4

    .line 1110
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_0

    .line 1084
    :pswitch_1
    if-eqz p2, :cond_1

    .line 1086
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_0

    .line 1089
    :cond_1
    invoke-direct {p0, p1, p3, v2}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    .line 1090
    monitor-exit p0

    return v2

    .line 1095
    :cond_2
    :try_start_3
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1096
    if-nez p2, :cond_4

    .line 1097
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1099
    .local v0, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, p1, p3, v2}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    .line 1100
    monitor-exit p0

    return v2

    .line 1101
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1102
    .end local v0    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    nop

    .line 1117
    :cond_4
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1080
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "succeeded":Z
    .end local p3    # "removeGlobal":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .locals 7
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "success"    # Z
    .param p3, "addGlobal"    # Z

    monitor-enter p0

    .line 1198
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1199
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    :cond_0
    const/4 v0, 0x1

    .line 1201
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1202
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$900(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1203
    .local v4, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1300(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v5

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v5, v6, :cond_2

    .line 1204
    invoke-direct {p0, v4, p2, p3}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    move v0, v5

    .line 1205
    .end local v4    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_2
    goto :goto_0

    .line 1207
    :cond_3
    if-nez p2, :cond_5

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v3

    :goto_3
    invoke-direct {p0, p1, p2, v1}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    move v2, v3

    nop

    :cond_6
    move v0, v2

    .line 1208
    monitor-exit p0

    return v0

    .line 1197
    .end local v0    # "ret":Z
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "success":Z
    .end local p3    # "addGlobal":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method private declared-synchronized generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .locals 3
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "success"    # Z
    .param p3, "removeGlobal"    # Z

    monitor-enter p0

    .line 1122
    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$1;->$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState:[I

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 1154
    monitor-exit p0

    return v2

    .line 1145
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1, p3, v2}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 1146
    monitor-exit p0

    return v2

    .line 1147
    :cond_0
    if-nez p2, :cond_4

    .line 1149
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_0

    .line 1124
    :pswitch_1
    if-eqz p2, :cond_1

    .line 1126
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_0

    .line 1129
    :cond_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1135
    if-eqz p2, :cond_4

    .line 1137
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1138
    .local v0, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, p1, p3, v2}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 1139
    monitor-exit p0

    return v2

    .line 1140
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1141
    .end local v0    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    nop

    .line 1156
    :cond_4
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1121
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "success":Z
    .end local p3    # "removeGlobal":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .locals 2
    .param p1, "fromObj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "toObj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p3, "success"    # Z

    monitor-enter p0

    .line 1169
    xor-int/lit8 v0, p3, 0x1

    :try_start_0
    invoke-direct {p0, p1, p3, v0}, Landroid/mtp/MtpStorageManager;->generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0

    .line 1170
    .local v0, "ret":Z
    invoke-direct {p0, p2, p3, p3}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 1168
    .end local v0    # "ret":Z
    .end local p1    # "fromObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "toObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p3    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method private declared-synchronized getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;
    .locals 8
    .param p1, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 552
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 556
    :cond_0
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$700(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 557
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 564
    .local v1, "dir":Ljava/nio/file/Path;
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 565
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "Observer is not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    new-instance v2, Landroid/mtp/MtpStorageManager$MtpObjectObserver;

    invoke-direct {v2, p0, p1}, Landroid/mtp/MtpStorageManager$MtpObjectObserver;-><init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$600(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 567
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 568
    :try_start_1
    invoke-static {v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 569
    .local v2, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_2
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 570
    .local v4, "file":Ljava/nio/file/Path;
    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    .line 571
    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    .line 570
    invoke-direct {p0, p1, v5, v6}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    .end local v4    # "file":Ljava/nio/file/Path;
    goto :goto_0

    .line 573
    :cond_2
    if-eqz v2, :cond_3

    :try_start_3
    invoke-static {v0, v2}, Landroid/mtp/MtpStorageManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 578
    .end local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_3
    nop

    .line 579
    const/4 v0, 0x1

    :try_start_4
    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$800(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 579
    .end local v1    # "dir":Ljava/nio/file/Path;
    goto :goto_2

    .line 573
    .restart local v1    # "dir":Ljava/nio/file/Path;
    .restart local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v3

    move-object v4, v0

    goto :goto_1

    .line 568
    :catch_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 573
    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_1
    if-eqz v2, :cond_4

    :try_start_6
    invoke-static {v4, v2}, Landroid/mtp/MtpStorageManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 573
    .end local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catch_1
    move-exception v2

    .line 574
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 576
    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$600(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 577
    monitor-exit p0

    return-object v0

    .line 581
    .end local v1    # "dir":Ljava/nio/file/Path;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    :try_start_8
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$900(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return-object v0

    .line 551
    .end local p1    # "object":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_2
    move-exception p1

    goto :goto_5

    .line 553
    .restart local p1    # "object":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_6
    :goto_3
    :try_start_9
    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find children of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_7

    const-string/jumbo v3, "null"

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 554
    monitor-exit p0

    return-object v0

    .line 551
    .end local p1    # "object":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_5
    monitor-exit p0

    .line 551
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method private getNextObjectId()I
    .locals 5

    .line 483
    iget v0, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    .line 485
    .local v0, "ret":I
    iget v1, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    .line 486
    return v0
.end method

.method private getNextStorageId()I
    .locals 2

    .line 490
    iget v0, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    return v0
.end method

.method private declared-synchronized getObjects(Landroid/mtp/MtpStorageManager$MtpObject;IZ)Ljava/util/stream/Stream;
    .locals 6
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "format"    # I
    .param p3, "rec"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            "IZ)",
            "Ljava/util/stream/Stream<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 523
    :try_start_0
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    .local v0, "children":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_0

    .line 525
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 526
    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Landroid/mtp/-$$Lambda$72U6ffwsZ0Sm2BXYilXSg7hTsO8;->INSTANCE:Landroid/mtp/-$$Lambda$72U6ffwsZ0Sm2BXYilXSg7hTsO8;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 528
    .local v1, "ret":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-eqz p2, :cond_1

    .line 529
    new-instance v2, Landroid/mtp/-$$Lambda$MtpStorageManager$DVPwWM5hkC_B_cgO9AF8IKzObmQ;

    invoke-direct {v2, p2}, Landroid/mtp/-$$Lambda$MtpStorageManager$DVPwWM5hkC_B_cgO9AF8IKzObmQ;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    move-object v1, v2

    .line 531
    :cond_1
    if-eqz p3, :cond_4

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v2, "streamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 536
    .local v4, "o":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 537
    const/4 v5, 0x1

    invoke-direct {p0, v4, p2, v5}, Landroid/mtp/MtpStorageManager;->getObjects(Landroid/mtp/MtpStorageManager$MtpObject;IZ)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v4    # "o":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_2
    goto :goto_0

    .line 539
    :cond_3
    invoke-static {v2}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Landroid/mtp/-$$Lambda$MtpStorageManager$ZX5EBcSdO0MZYnMFDwTJpRFAOd0;->INSTANCE:Landroid/mtp/-$$Lambda$MtpStorageManager$ZX5EBcSdO0MZYnMFDwTJpRFAOd0;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Landroid/mtp/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;->INSTANCE:Landroid/mtp/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Landroid/mtp/-$$Lambda$MtpStorageManager$QdR1YPNkK9RX4bISfNvQAOnGxGE;->INSTANCE:Landroid/mtp/-$$Lambda$MtpStorageManager$QdR1YPNkK9RX4bISfNvQAOnGxGE;

    .line 540
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Landroid/mtp/-$$Lambda$MtpStorageManager$TsWypJRYDhxg01Bfs_tm2d_H9zU;->INSTANCE:Landroid/mtp/-$$Lambda$MtpStorageManager$TsWypJRYDhxg01Bfs_tm2d_H9zU;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/stream/Stream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 542
    .end local v2    # "streamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;>;"
    :cond_4
    monitor-exit p0

    return-object v1

    .line 522
    .end local v0    # "children":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .end local v1    # "ret":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .end local p1    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "format":I
    .end local p3    # "rec":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method private declared-synchronized handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isDir"    # Z

    monitor-enter p0

    .line 645
    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 646
    .local v0, "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 647
    .local v1, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v1, :cond_2

    .line 648
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v2

    .line 649
    .local v2, "state":Landroid/mtp/MtpStorageManager$MtpObjectState;
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1300(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v3

    move-object v0, v3

    .line 650
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v3

    if-eq v3, p3, :cond_0

    sget-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-eq v2, v3, :cond_0

    .line 651
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent directory info! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    invoke-static {v1, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1400(Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    .line 653
    sget-object v3, Landroid/mtp/MtpStorageManager$1;->$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState:[I

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 666
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 664
    :pswitch_0
    monitor-exit p0

    return-void

    .line 659
    :pswitch_1
    :try_start_1
    sget-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 660
    goto :goto_1

    .line 656
    :pswitch_2
    sget-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 657
    goto :goto_1

    .line 666
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected state in add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :goto_1
    sget-boolean v3, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v3, :cond_1

    .line 669
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " transitioned to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in op "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v2    # "state":Landroid/mtp/MtpStorageManager$MtpObjectState;
    :cond_1
    goto :goto_2

    .line 671
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    move-object v1, v2

    .line 672
    if-eqz v1, :cond_b

    .line 673
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectAdded(I)V

    .line 680
    :goto_2
    if-eqz p3, :cond_a

    .line 682
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v0, v2, :cond_3

    .line 683
    monitor-exit p0

    return-void

    .line 686
    :cond_3
    :try_start_2
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v0, v2, :cond_4

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$700(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_4

    .line 687
    monitor-exit p0

    return-void

    .line 689
    :cond_4
    :try_start_3
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 690
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "Observer is not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 691
    monitor-exit p0

    return-void

    .line 693
    :cond_5
    :try_start_4
    new-instance v2, Landroid/mtp/MtpStorageManager$MtpObjectObserver;

    invoke-direct {v2, p0, v1}, Landroid/mtp/MtpStorageManager$MtpObjectObserver;-><init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$600(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 694
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 695
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$800(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 699
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 700
    .local v3, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_6
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    .line 701
    .local v5, "file":Ljava/nio/file/Path;
    sget-boolean v6, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v6, :cond_6

    .line 702
    sget-object v6, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Manually handling event for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_6
    invoke-interface {v5}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    .line 704
    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    .line 703
    invoke-direct {p0, v1, v6, v7}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 705
    .end local v5    # "file":Ljava/nio/file/Path;
    goto :goto_3

    .line 706
    :cond_7
    if-eqz v3, :cond_8

    :try_start_7
    invoke-static {v2, v3}, Landroid/mtp/MtpStorageManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 710
    .end local v3    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_8
    goto :goto_5

    .line 706
    .restart local v3    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_4

    .line 699
    :catch_0
    move-exception v4

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 706
    :catchall_1
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_4
    if-eqz v3, :cond_9

    :try_start_9
    invoke-static {v5, v3}, Landroid/mtp/MtpStorageManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_9
    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 706
    .end local v3    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catch_1
    move-exception v3

    .line 707
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/FileObserver;->stopWatching()V

    .line 709
    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$600(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 712
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_5
    monitor-exit p0

    return-void

    .line 675
    :cond_b
    :try_start_b
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_c

    .line 676
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 677
    :cond_c
    monitor-exit p0

    return-void

    .line 644
    .end local v0    # "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "isDir":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    .line 644
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized handleRemovedObject(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 5
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 715
    :try_start_0
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    .line 716
    .local v0, "state":Landroid/mtp/MtpStorageManager$MtpObjectState;
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1300(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v1

    .line 717
    .local v1, "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    sget-object v2, Landroid/mtp/MtpStorageManager$1;->$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState:[I

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 733
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unexpected object remove for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 722
    :pswitch_0
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-direct {p0, p1, v3, v4}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    .line 723
    goto :goto_1

    .line 719
    :pswitch_1
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 720
    goto :goto_1

    .line 728
    :pswitch_2
    invoke-direct {p0, p1, v3, v3}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 729
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_1

    .line 725
    :cond_1
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 726
    nop

    .line 735
    :cond_2
    :goto_1
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_3

    .line 736
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " transitioned to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in op "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    :cond_3
    monitor-exit p0

    return-void

    .line 714
    .end local v0    # "state":Landroid/mtp/MtpStorageManager$MtpObjectState;
    .end local v1    # "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 2
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 423
    :try_start_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    .line 424
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 423
    :goto_0
    monitor-exit p0

    return v0

    .line 422
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public static synthetic lambda$QdR1YPNkK9RX4bISfNvQAOnGxGE(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$TsWypJRYDhxg01Bfs_tm2d_H9zU()Ljava/util/stream/Stream;
    .locals 1

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$ZX5EBcSdO0MZYnMFDwTJpRFAOd0(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getObjects$1(ILandroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 1
    .param p0, "format"    # I
    .param p1, "o"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 529
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Landroid/mtp/MtpStorageManager;)V
    .locals 2

    .line 340
    :goto_0
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v0, :cond_1

    .line 342
    const-wide/16 v0, 0x3a98

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    nop

    .line 346
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager;->checkConsistency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "Cache is consistent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_0
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "Cache is not consistent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/InterruptedException;
    return-void

    .line 352
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method private declared-synchronized removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .locals 7
    .param p1, "removed"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "removeGlobal"    # Z
    .param p3, "recursive"    # Z

    monitor-enter p0

    .line 619
    :try_start_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 620
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1100(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 621
    .local v0, "ret":Z
    :goto_1
    if-nez v0, :cond_2

    sget-boolean v3, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v3, :cond_2

    .line 622
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove from parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_2
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 624
    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    move v0, v3

    goto :goto_4

    .line 625
    :cond_4
    if-eqz p2, :cond_6

    .line 626
    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    move v0, v3

    .line 628
    :cond_6
    :goto_4
    if-nez v0, :cond_7

    sget-boolean v3, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v3, :cond_7

    .line 629
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove from global cache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_7
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 631
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 632
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->access$600(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 634
    :cond_8
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz p3, :cond_a

    .line 636
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$900(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 637
    .local v3, "children":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 638
    .local v5, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, v5, p2, v2}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_9

    if-eqz v0, :cond_9

    move v6, v2

    goto :goto_6

    :cond_9
    move v6, v1

    :goto_6
    move v0, v6

    .line 639
    .end local v5    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_5

    .line 641
    .end local v3    # "children":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    :cond_a
    monitor-exit p0

    return v0

    .line 618
    .end local v0    # "ret":Z
    .end local p1    # "removed":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "removeGlobal":Z
    .end local p3    # "recursive":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method


# virtual methods
.method public declared-synchronized addMtpStorage(Landroid/os/storage/StorageVolume;)Landroid/mtp/MtpStorage;
    .locals 6
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    monitor-enter p0

    .line 401
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextStorageId()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 402
    .local v0, "storageId":I
    new-instance v2, Landroid/mtp/MtpStorage;

    invoke-direct {v2, p1, v0}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;I)V

    .line 403
    .local v2, "storage":Landroid/mtp/MtpStorage;
    new-instance v3, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v2}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5, v1}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorageManager$MtpObject;Z)V

    move-object v1, v3

    .line 404
    .local v1, "root":Landroid/mtp/MtpStorageManager$MtpObject;
    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    return-object v2

    .line 400
    .end local v0    # "storageId":I
    .end local v1    # "root":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v2    # "storage":Landroid/mtp/MtpStorage;
    .end local p1    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I
    .locals 4
    .param p1, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newParent"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 1049
    :try_start_0
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_0

    .line 1050
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginCopyObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 1053
    monitor-exit p0

    return v2

    .line 1054
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 1055
    monitor-exit p0

    return v2

    .line 1056
    :cond_2
    :try_start_2
    invoke-direct {p0, p2}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 1057
    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 1058
    monitor-exit p0

    return v2

    .line 1059
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    invoke-static {p1, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1800(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 1060
    .local v1, "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {p2, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1061
    invoke-static {v1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$2000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1062
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_4

    .line 1063
    monitor-exit p0

    return v2

    .line 1064
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    .line 1048
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "object":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newParent":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 4
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newParent"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 975
    :try_start_0
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_0

    .line 976
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginMoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 978
    monitor-exit p0

    return v1

    .line 979
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 980
    monitor-exit p0

    return v1

    .line 981
    :cond_2
    :try_start_2
    invoke-direct {p0, p2}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 982
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 984
    monitor-exit p0

    return v1

    .line 985
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v0

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 991
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1800(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 992
    .local v2, "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v2, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$2000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 993
    invoke-static {p2, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 994
    sget-object v3, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-direct {p0, p1, v3}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 995
    invoke-direct {p0, v2, v1}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_0

    .line 994
    :cond_4
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    .line 998
    .end local v2    # "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_5
    :try_start_4
    invoke-static {p1, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1800(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 999
    .local v0, "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$2000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1000
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1001
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1002
    invoke-direct {p0, v0, p1}, Landroid/mtp/MtpStorageManager;->generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    .line 974
    .end local v0    # "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newParent":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 3
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 944
    :try_start_0
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_0

    .line 945
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginRemoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 947
    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 946
    :goto_0
    monitor-exit p0

    return v0

    .line 943
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z
    .locals 3
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newName"    # Ljava/lang/String;

    monitor-enter p0

    .line 891
    :try_start_0
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_0

    .line 892
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginRenameObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 894
    monitor-exit p0

    return v1

    .line 895
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 896
    monitor-exit p0

    return v1

    .line 897
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 899
    monitor-exit p0

    return v1

    .line 901
    :cond_3
    :try_start_3
    invoke-static {p1, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1800(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 902
    .local v0, "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1900(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    .line 903
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 904
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 905
    invoke-direct {p0, v0, p1}, Landroid/mtp/MtpStorageManager;->generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    .line 890
    .end local v0    # "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I
    .locals 3
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "format"    # I

    monitor-enter p0

    .line 856
    :try_start_0
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_0

    .line 857
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginSendObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 859
    monitor-exit p0

    return v1

    .line 860
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 861
    monitor-exit p0

    return v1

    .line 862
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 863
    const/16 v0, 0x3001

    if-ne p3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 864
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_4

    .line 865
    monitor-exit p0

    return v1

    .line 866
    :cond_4
    :try_start_3
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 867
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->ADD:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1700(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 868
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    .line 855
    .end local v0    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "format":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized checkConsistency()Z
    .locals 13

    monitor-enter p0

    .line 770
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    .line 771
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 770
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 772
    .local v0, "objs":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 773
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    const/4 v2, 0x1

    move v3, v2

    .line 774
    .local v3, "ret":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 775
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 776
    .local v4, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1600(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 777
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object doesn\'t exist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v3, 0x0

    .line 780
    :cond_0
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v5

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-eq v5, v6, :cond_1

    .line 781
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v3, 0x0

    .line 784
    :cond_1
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1300(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v5

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-eq v5, v6, :cond_2

    .line 785
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1300(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v3, 0x0

    .line 788
    :cond_2
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_3

    .line 789
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not in map correctly"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v3, 0x0

    .line 792
    :cond_3
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 793
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    invoke-virtual {v5}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    iget-object v6, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    .line 794
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v7

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 795
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Root parent is not in root mapping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v3, 0x0

    .line 798
    :cond_4
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    invoke-virtual {v5}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    iget-object v6, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    .line 799
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v7

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_5

    .line 800
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parent is not in object mapping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v3, 0x0

    .line 803
    :cond_5
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    if-eq v5, v4, :cond_6

    .line 804
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Child does not exist in parent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v3, 0x0

    .line 808
    :cond_6
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 809
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$700(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v5

    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v6

    if-nez v6, :cond_7

    move v6, v2

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-ne v5, v6, :cond_9

    .line 810
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$700(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, ""

    goto :goto_2

    :cond_8
    const-string/jumbo v7, "not "

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " visited but observer is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 810
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v3, 0x0

    .line 814
    :cond_9
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$700(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$900(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 815
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not visited but has children"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 816
    const/4 v3, 0x0

    .line 818
    :cond_a
    :try_start_1
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 818
    .local v5, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v6, 0x0

    .line 819
    :try_start_2
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 820
    .local v7, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/file/Path;

    .line 821
    .local v9, "file":Ljava/nio/file/Path;
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$700(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 822
    invoke-interface {v9}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v10

    invoke-interface {v10}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v10

    if-nez v10, :cond_c

    iget-object v10, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v10, :cond_b

    .line 823
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    .line 824
    invoke-interface {v9}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v11

    invoke-interface {v11}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 825
    :cond_b
    sget-object v10, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File exists in fs but not in children "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v3, 0x0

    .line 828
    :cond_c
    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 829
    .end local v9    # "file":Ljava/nio/file/Path;
    goto :goto_3

    .line 830
    :cond_d
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$900(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 831
    .local v9, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v9}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-interface {v10}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 832
    sget-object v10, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File in children doesn\'t exist in fs "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v3, 0x0

    .line 835
    :cond_e
    iget-object v10, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_f

    .line 836
    sget-object v10, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Child is not in object map "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 837
    const/4 v3, 0x0

    .line 839
    .end local v9    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_f
    goto :goto_4

    .line 840
    .end local v7    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    if-eqz v5, :cond_11

    :try_start_3
    invoke-static {v6, v5}, Landroid/mtp/MtpStorageManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 843
    .end local v5    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_11
    goto :goto_6

    .line 840
    .restart local v5    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v7

    goto :goto_5

    .line 818
    :catch_0
    move-exception v6

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 840
    :goto_5
    if-eqz v5, :cond_12

    :try_start_5
    invoke-static {v6, v5}, Landroid/mtp/MtpStorageManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_12
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 840
    .end local v5    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catch_1
    move-exception v5

    .line 841
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v6, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 842
    const/4 v3, 0x0

    .line 845
    .end local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_6
    goto/16 :goto_0

    .line 846
    :cond_14
    monitor-exit p0

    return v3

    .line 769
    .end local v0    # "objs":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .end local v3    # "ret":Z
    :catchall_1
    move-exception v0

    monitor-exit p0

    .line 769
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    .line 362
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 361
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 364
    .local v0, "objs":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 365
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 368
    .local v2, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 369
    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 370
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->access$600(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 372
    .end local v2    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_0
    goto :goto_0

    .line 375
    :cond_1
    iget-boolean v2, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v2, :cond_2

    .line 376
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    .line 377
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :try_start_1
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    goto :goto_1

    .line 380
    :catch_0
    move-exception v2

    .line 384
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 360
    .end local v0    # "objs":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw v0
.end method

.method public declared-synchronized dump()V
    .locals 6

    monitor-enter p0

    .line 756
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 757
    .local v1, "key":I
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 758
    .local v2, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    invoke-virtual {v5}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_0
    const-string/jumbo v5, "null"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "dir"

    goto :goto_2

    :cond_1
    const-string/jumbo v5, "obj"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$700(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "v"

    goto :goto_3

    :cond_2
    const-string/jumbo v5, "nv"

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 758
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    .end local v1    # "key":I
    .end local v2    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    goto/16 :goto_0

    .line 762
    :cond_3
    monitor-exit p0

    return-void

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 755
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw v0
.end method

.method public declared-synchronized endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .locals 3
    .param p1, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "success"    # Z

    monitor-enter p0

    .line 1074
    :try_start_0
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_0

    .line 1075
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCopyObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1073
    .end local p1    # "object":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "oldParent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newParent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "success"    # Z

    monitor-enter p0

    .line 1015
    :try_start_0
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_0

    .line 1016
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endMoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_0
    invoke-static {p1, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1018
    .local v0, "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {p2, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 1019
    .local v1, "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_0

    .line 1021
    :cond_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v3

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1022
    invoke-virtual {p0, v0, p4}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v3

    .line 1023
    .local v3, "ret":Z
    const/4 v4, 0x1

    invoke-direct {p0, v1, p4, v4}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    move v2, v4

    nop

    :cond_2
    monitor-exit p0

    return v2

    .line 1025
    .end local v3    # "ret":Z
    :cond_3
    if-nez p4, :cond_4

    .line 1028
    move-object v2, v0

    .line 1029
    .local v2, "temp":Landroid/mtp/MtpStorageManager$MtpObject;
    :try_start_1
    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v3

    .line 1030
    .local v3, "oldState":Landroid/mtp/MtpStorageManager$MtpObjectState;
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$2000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1031
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1032
    move-object v0, v1

    .line 1033
    invoke-static {v0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$2000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1034
    invoke-static {v0, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1035
    move-object v1, v2

    .line 1036
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1037
    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1039
    .end local v2    # "temp":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v3    # "oldState":Landroid/mtp/MtpStorageManager$MtpObjectState;
    :cond_4
    invoke-direct {p0, v0, v1, p4}, Landroid/mtp/MtpStorageManager;->generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    .line 1020
    :cond_5
    :goto_0
    monitor-exit p0

    return v2

    .line 1014
    .end local v0    # "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v1    # "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "oldParent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newParent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .locals 7
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "success"    # Z

    monitor-enter p0

    .line 957
    :try_start_0
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_0

    .line 958
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endRemoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    const/4 v0, 0x1

    .line 960
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 961
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$900(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 962
    .local v4, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1300(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v5

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v5, v6, :cond_2

    .line 963
    invoke-virtual {p0, v4, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    move v0, v5

    .line 962
    .end local v4    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_2
    goto :goto_0

    .line 965
    :cond_3
    invoke-direct {p0, p1, p2, v3}, Landroid/mtp/MtpStorageManager;->generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    move v2, v3

    nop

    :cond_4
    monitor-exit p0

    return v2

    .line 956
    .end local v0    # "ret":Z
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "success"    # Z

    monitor-enter p0

    .line 916
    :try_start_0
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_0

    .line 917
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endRenameObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 919
    .local v0, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v0, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 920
    .local v1, "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p3, :cond_1

    .line 923
    move-object v2, v1

    .line 924
    .local v2, "temp":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v3

    .line 925
    .local v3, "oldState":Landroid/mtp/MtpStorageManager$MtpObjectState;
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1900(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    .line 926
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 927
    move-object v1, p1

    .line 928
    invoke-static {v1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1900(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    .line 929
    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 930
    move-object p1, v2

    .line 931
    invoke-static {v0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 932
    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 934
    .end local v2    # "temp":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v3    # "oldState":Landroid/mtp/MtpStorageManager$MtpObjectState;
    :cond_1
    invoke-direct {p0, v1, p1, p3}, Landroid/mtp/MtpStorageManager;->generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 915
    .end local v0    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v1    # "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "oldName":Ljava/lang/String;
    .end local p3    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .locals 3
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "succeeded"    # Z

    monitor-enter p0

    .line 878
    :try_start_0
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_0

    .line 879
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endSendObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 877
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "succeeded":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public flushEvents()V
    .locals 2

    .line 746
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 750
    :goto_0
    return-void
.end method

.method public declared-synchronized getByPath(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 435
    .local v2, "root":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    move-object v0, v2

    .line 437
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    .line 439
    .end local v2    # "root":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_0
    goto :goto_0

    .line 440
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 441
    .local v4, "name":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    .line 443
    :cond_2
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 444
    goto :goto_2

    .line 445
    :cond_3
    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->access$700(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 446
    invoke-direct {p0, v0}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 447
    :cond_4
    invoke-static {v0, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 440
    .end local v4    # "name":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 442
    .restart local v4    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 449
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    monitor-exit p0

    return-object v0

    .line 432
    .end local v0    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 458
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-object v0

    .line 466
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 459
    :cond_2
    :goto_0
    :try_start_2
    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t get root storages with getObject()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    monitor-exit p0

    return-object v0

    .line 457
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized getObjects(III)Ljava/util/stream/Stream;
    .locals 5
    .param p1, "parent"    # I
    .param p2, "format"    # I
    .param p3, "storageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/stream/Stream<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 501
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 502
    .local v0, "recursive":Z
    :goto_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 503
    const/4 p1, 0x0

    .line 504
    :cond_1
    if-ne p3, v1, :cond_3

    .line 506
    if-nez p1, :cond_3

    .line 508
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v1, "streamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;>;"
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 510
    .local v3, "root":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, v3, p2, v0}, Landroid/mtp/MtpStorageManager;->getObjects(Landroid/mtp/MtpStorageManager$MtpObject;IZ)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v3    # "root":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_1

    .line 512
    :cond_2
    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Landroid/mtp/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;->INSTANCE:Landroid/mtp/-$$Lambda$JdUL9ZP9AzcttUlxZCHq6-pfTzU;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Landroid/mtp/-$$Lambda$MtpStorageManager$QdR1YPNkK9RX4bISfNvQAOnGxGE;->INSTANCE:Landroid/mtp/-$$Lambda$MtpStorageManager$QdR1YPNkK9RX4bISfNvQAOnGxGE;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Landroid/mtp/-$$Lambda$MtpStorageManager$TsWypJRYDhxg01Bfs_tm2d_H9zU;->INSTANCE:Landroid/mtp/-$$Lambda$MtpStorageManager$TsWypJRYDhxg01Bfs_tm2d_H9zU;

    .line 513
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    monitor-exit p0

    return-object v2

    .line 500
    .end local v0    # "recursive":Z
    .end local v1    # "streamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;>;"
    .end local p1    # "parent":I
    .end local p2    # "format":I
    .end local p3    # "storageId":I
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 516
    .restart local v0    # "recursive":Z
    .restart local p1    # "parent":I
    .restart local p2    # "format":I
    .restart local p3    # "storageId":I
    :cond_3
    if-nez p1, :cond_4

    :try_start_1
    invoke-virtual {p0, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    .local v1, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_2
    if-nez v1, :cond_5

    .line 518
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 519
    :cond_5
    :try_start_2
    invoke-direct {p0, v1, p2, v0}, Landroid/mtp/MtpStorageManager;->getObjects(Landroid/mtp/MtpStorageManager$MtpObject;IZ)Ljava/util/stream/Stream;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 500
    .end local v0    # "recursive":Z
    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "parent":I
    .end local p2    # "format":I
    .end local p3    # "storageId":I
    :goto_3
    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 3
    .param p1, "id"    # I

    .line 475
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method public declared-synchronized removeMtpStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    monitor-enter p0

    .line 413
    :try_start_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 412
    .end local p1    # "storage":Landroid/mtp/MtpStorage;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method

.method public declared-synchronized setSubdirectories(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "subDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 392
    :try_start_0
    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 391
    .end local p1    # "subDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    throw p1
.end method
