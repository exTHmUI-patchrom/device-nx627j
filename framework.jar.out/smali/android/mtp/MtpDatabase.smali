.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final AUDIO_PROPERTIES:[I

.field private static final DEVICE_PROPERTIES:[I

.field private static final FILE_PROPERTIES:[I

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final IMAGE_PROPERTIES:[I

.field private static final NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final PLAYBACK_FORMATS:[I

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_PROPERTIES:[I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private mDeviceType:I

.field private mManager:Landroid/mtp/MtpStorageManager;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private mNativeContext:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    const-class v0, Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    .line 100
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 101
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 108
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    .line 141
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 155
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 171
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0xdc48

    aput v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 182
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x3811
        0x3812
    .end array-data

    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc41
        0xdc0b
        0xdc44
        0xdce0
        0xdc4e
    .end array-data

    :array_2
    .array-data 4
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    :array_3
    .array-data 4
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
    .end array-data

    :array_4
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
        0xd407
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "subDirectories"    # [Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 230
    new-instance v0, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v0, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 252
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 255
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 256
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 257
    new-instance v0, Landroid/media/MediaScanner;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 258
    new-instance v0, Landroid/mtp/MtpStorageManager;

    new-instance v1, Landroid/mtp/MtpDatabase$2;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$2;-><init>(Landroid/mtp/MtpDatabase;)V

    .line 270
    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager;-><init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 272
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 273
    const-string/jumbo v0, "sys.usb.mtp.device_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    .line 274
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method static synthetic access$002(Landroid/mtp/MtpDatabase;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return p1
.end method

.method static synthetic access$100(Landroid/mtp/MtpDatabase;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;

    .line 68
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$102(Landroid/mtp/MtpDatabase;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;

    .line 68
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method private beginCopyObject(III)I
    .locals 3
    .param p1, "handle"    # I
    .param p2, "newParent"    # I
    .param p3, "newStorage"    # I

    .line 693
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 694
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p2, :cond_0

    .line 695
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 696
    .local v1, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 698
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I

    move-result v2

    return v2

    .line 697
    :cond_2
    :goto_1
    const/16 v2, 0x2009

    return v2
.end method

.method private beginDeleteObject(I)I
    .locals 2
    .param p1, "handle"    # I

    .line 847
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 848
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 849
    const/16 v1, 0x2009

    return v1

    .line 851
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 852
    const/16 v1, 0x2002

    return v1

    .line 854
    :cond_1
    const/16 v1, 0x2001

    return v1
.end method

.method private beginMoveObject(III)I
    .locals 4
    .param p1, "handle"    # I
    .param p2, "newParent"    # I
    .param p3, "newStorage"    # I

    .line 619
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 620
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p2, :cond_0

    .line 621
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 622
    .local v1, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_2

    .line 625
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v2

    .line 626
    .local v2, "allowed":Z
    if-eqz v2, :cond_2

    const/16 v3, 0x2001

    goto :goto_1

    :cond_2
    const/16 v3, 0x2002

    :goto_1
    return v3

    .line 623
    .end local v2    # "allowed":Z
    :cond_3
    :goto_2
    const/16 v2, 0x2009

    return v2
.end method

.method private beginSendObject(Ljava/lang/String;III)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I

    .line 375
    if-nez p3, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 376
    .local v0, "parentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_0
    if-nez v0, :cond_1

    .line 377
    const/4 v1, -0x1

    return v1

    .line 380
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 381
    .local v1, "objPath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p2}, Landroid/mtp/MtpStorageManager;->beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private deleteFromMedia(Ljava/nio/file/Path;Z)V
    .locals 9
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "isDir"    # Z

    .line 889
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 891
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v4, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 895
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 891
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    goto :goto_3

    .line 899
    :cond_0
    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    move-object v0, v1

    .line 900
    .local v0, "whereArgs":[Ljava/lang/String;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v3, "_data=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 901
    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 903
    :try_start_1
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "parentPath":Ljava/lang/String;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v3, "unhide"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 907
    .end local v0    # "whereArgs":[Ljava/lang/String;
    .end local v1    # "parentPath":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 905
    .restart local v0    # "whereArgs":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 906
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unhide/rescan for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 910
    :cond_1
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mediaprovider didn\'t delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 914
    .end local v0    # "whereArgs":[Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_4

    .line 912
    :goto_3
    nop

    .line 913
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from MediaProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private endCopyObject(IZ)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "success"    # Z

    .line 702
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 703
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v0, :cond_6

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 707
    :cond_0
    if-nez p2, :cond_1

    .line 708
    return-void

    .line 710
    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    .line 713
    .local v2, "format":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 714
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v4, "format"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    const-string v4, "_size"

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 717
    const-string v4, "date_modified"

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 719
    :try_start_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 720
    const-string/jumbo v4, "parent"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 722
    :cond_2
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v4

    .line 723
    .local v4, "parentId":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_5

    .line 724
    const-string/jumbo v6, "parent"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    .end local v4    # "parentId":I
    :goto_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 731
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v5

    invoke-virtual {v4, v6}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;)I

    goto :goto_1

    .line 733
    :cond_3
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 734
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_4

    .line 735
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v1, v5, v2}, Landroid/mtp/MtpDatabase;->rescanFile(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_1
    goto :goto_2

    .line 727
    .local v4, "parentId":I
    :cond_5
    return-void

    .line 738
    .end local v4    # "parentId":I
    :catch_0
    move-exception v4

    .line 739
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException in beginSendObject"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 704
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "format":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_6
    :goto_3
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end copy object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void
.end method

.method private endDeleteObject(IZ)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "success"    # Z

    .line 858
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 859
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 860
    return-void

    .line 862
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 863
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end remove object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_1
    if-eqz p2, :cond_2

    .line 865
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/mtp/MtpDatabase;->deleteFromMedia(Ljava/nio/file/Path;Z)V

    .line 866
    :cond_2
    return-void
.end method

.method private endMoveObject(IIIIIZ)V
    .locals 21
    .param p1, "oldParent"    # I
    .param p2, "newParent"    # I
    .param p3, "oldStorage"    # I
    .param p4, "newStorage"    # I
    .param p5, "objId"    # I
    .param p6, "success"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    .line 631
    move/from16 v5, p6

    if-nez v2, :cond_0

    .line 632
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    move/from16 v6, p3

    invoke-virtual {v0, v6}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    move/from16 v6, p3

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, v2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 633
    .local v7, "oldParentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v3, :cond_1

    .line 634
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    move/from16 v8, p4

    invoke-virtual {v0, v8}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_1

    :cond_1
    move/from16 v8, p4

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, v3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    :goto_1
    move-object v9, v0

    .line 635
    .local v9, "newParentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, v4}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 636
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v10

    .line 637
    .local v10, "name":Ljava/lang/String;
    if-eqz v9, :cond_b

    if-eqz v7, :cond_b

    iget-object v11, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 638
    invoke-virtual {v11, v7, v9, v10, v5}, Landroid/mtp/MtpStorageManager;->endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_9

    .line 643
    :cond_2
    iget-object v11, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v11, v4}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v11

    .line 644
    .end local v0    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .local v11, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v5, :cond_a

    if-nez v11, :cond_3

    goto/16 :goto_8

    .line 647
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v12, v0

    .line 648
    .local v12, "values":Landroid/content/ContentValues;
    invoke-virtual {v9}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v13

    .line 649
    .local v13, "path":Ljava/nio/file/Path;
    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v14

    .line 650
    .local v14, "oldPath":Ljava/nio/file/Path;
    const-string v0, "_data"

    invoke-interface {v13}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    .line 652
    const-string/jumbo v0, "parent"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 654
    :cond_4
    invoke-interface {v13}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v0

    .line 655
    .local v0, "parentId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    .line 656
    const-string/jumbo v2, "parent"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    .end local v0    # "parentId":I
    :goto_2
    const/4 v2, 0x0

    .line 665
    .local v2, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v14}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v0, v16

    move-object v15, v0

    .line 667
    .local v15, "whereArgs":[Ljava/lang/String;
    const/4 v0, -0x1

    .line 668
    .restart local v0    # "parentId":I
    :try_start_0
    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v16
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v16, :cond_5

    .line 669
    move/from16 v17, v0

    :try_start_1
    invoke-interface {v14}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    .line 669
    .end local v0    # "parentId":I
    .local v17, "parentId":I
    invoke-direct {v1, v0}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 669
    .end local v17    # "parentId":I
    .restart local v0    # "parentId":I
    goto :goto_3

    .line 687
    .end local v0    # "parentId":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v2

    goto/16 :goto_6

    .line 671
    .restart local v0    # "parentId":I
    :cond_5
    move/from16 v17, v0

    :goto_3
    :try_start_2
    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v16
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v16, :cond_7

    move-object/from16 v18, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 675
    .end local v2    # "c":Landroid/database/Cursor;
    .local v18, "c":Landroid/database/Cursor;
    move/from16 v19, v0

    goto :goto_4

    .line 678
    :cond_6
    :try_start_3
    const-string v2, "format"

    move/from16 v19, v0

    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v0

    .line 678
    .end local v0    # "parentId":I
    .local v19, "parentId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 679
    const-string v0, "_size"

    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 680
    const-string v0, "date_modified"

    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 681
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v2, v1, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 682
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_8

    .line 683
    invoke-interface {v13}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 684
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    move-object/from16 v20, v0

    const/4 v0, 0x2

    .line 684
    .end local v0    # "uri":Landroid/net/Uri;
    .local v20, "uri":Landroid/net/Uri;
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v3

    .line 683
    invoke-direct {v1, v2, v0, v3}, Landroid/mtp/MtpDatabase;->rescanFile(Ljava/lang/String;II)V

    .line 683
    .end local v19    # "parentId":I
    .end local v20    # "uri":Landroid/net/Uri;
    goto :goto_5

    .line 675
    .end local v18    # "c":Landroid/database/Cursor;
    .local v0, "parentId":I
    .restart local v2    # "c":Landroid/database/Cursor;
    :cond_7
    move/from16 v19, v0

    move-object/from16 v18, v2

    .line 675
    .end local v0    # "parentId":I
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v18    # "c":Landroid/database/Cursor;
    .restart local v19    # "parentId":I
    :goto_4
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v2, v1, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v3, "_data=?"

    invoke-virtual {v0, v2, v12, v3, v15}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 689
    .end local v19    # "parentId":I
    :cond_8
    :goto_5
    goto :goto_7

    .line 687
    :catch_1
    move-exception v0

    goto :goto_6

    .line 687
    .end local v18    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    .line 688
    .end local v2    # "c":Landroid/database/Cursor;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "c":Landroid/database/Cursor;
    :goto_6
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException in mMediaProvider.update"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7
    return-void

    .line 659
    .end local v15    # "whereArgs":[Ljava/lang/String;
    .end local v18    # "c":Landroid/database/Cursor;
    .local v0, "parentId":I
    :cond_9
    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {v1, v14, v2}, Landroid/mtp/MtpDatabase;->deleteFromMedia(Ljava/nio/file/Path;Z)V

    .line 660
    return-void

    .line 645
    .end local v0    # "parentId":I
    .end local v12    # "values":Landroid/content/ContentValues;
    .end local v13    # "path":Ljava/nio/file/Path;
    .end local v14    # "oldPath":Ljava/nio/file/Path;
    :cond_a
    :goto_8
    return-void

    .line 639
    .end local v11    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_b
    :goto_9
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "Failed to end move object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method private endSendObject(IZ)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "succeeded"    # Z

    .line 385
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 386
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 391
    :cond_0
    if-eqz p2, :cond_4

    .line 392
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    .line 395
    .local v2, "format":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v4, "format"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const-string v4, "_size"

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    const-string v4, "date_modified"

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 401
    :try_start_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    const-string/jumbo v4, "parent"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v4

    .line 405
    .local v4, "parentId":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 406
    const-string/jumbo v5, "parent"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    .end local v4    # "parentId":I
    :goto_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 414
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 415
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v1, v5, v2}, Landroid/mtp/MtpDatabase;->rescanFile(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    goto :goto_1

    .line 409
    .local v4, "parentId":I
    :cond_3
    return-void

    .line 417
    .end local v4    # "parentId":I
    :catch_0
    move-exception v4

    .line 418
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException in beginSendObject"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "format":I
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    return-void

    .line 387
    :cond_5
    :goto_2
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to successfully end send object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method private findInMedia(Ljava/nio/file/Path;)I
    .locals 10
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 869
    const/4 v0, -0x1

    .line 870
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 872
    .local v1, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 873
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 872
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 874
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 880
    :cond_0
    if-eqz v1, :cond_1

    .line 881
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 880
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 877
    :catch_0
    move-exception v2

    .line 878
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in MediaProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    .end local v2    # "e":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 883
    :cond_1
    :goto_1
    return v0

    .line 880
    :goto_2
    if-eqz v1, :cond_2

    .line 881
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 7
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .line 755
    const/16 v0, 0x5001

    const/16 v1, 0x2001

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5003

    if-eq p1, v0, :cond_2

    const v0, 0xd407

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 785
    const/16 v0, 0x200a

    return v0

    .line 759
    :pswitch_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 761
    .local v3, "length":I
    const/16 v4, 0xff

    if-le v3, v4, :cond_0

    .line 762
    const/16 v3, 0xff

    .line 764
    :cond_0
    invoke-virtual {v0, v2, v3, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 765
    aput-char v2, p3, v3

    .line 766
    return v1

    .line 778
    .end local v0    # "value":Ljava/lang/String;
    .end local v3    # "length":I
    :cond_1
    iget v0, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    .line 779
    return v1

    .line 769
    :cond_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 770
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 771
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v3

    .line 772
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v4

    .line 773
    .local v4, "height":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 774
    .local v5, "imageSize":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 775
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v2, p3, v6

    .line 776
    return v1

    .line 781
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "imageSize":Ljava/lang/String;
    :cond_3
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    .line 782
    const/4 v0, 0x1

    iget v2, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    int-to-long v2, v2

    aput-wide v2, p2, v0

    .line 783
    return v1

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getNumObjects(III)I
    .locals 3
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .line 465
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3, p2, p1}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/stream/Stream;

    move-result-object v0

    .line 467
    .local v0, "objectStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_0

    .line 468
    const/4 v1, -0x1

    return v1

    .line 470
    :cond_0
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 6
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .line 823
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 824
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 825
    const/16 v1, 0x2009

    return v1

    .line 828
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Integer;->min(II)I

    move-result v2

    .line 830
    .local v2, "pathLen":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 831
    aput-char v3, p2, v2

    .line 833
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v4

    aput-wide v4, p3, v3

    .line 834
    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, p3, v3

    .line 835
    const/16 v3, 0x2001

    return v3
.end method

.method private getObjectFormat(I)I
    .locals 2
    .param p1, "handle"    # I

    .line 839
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 840
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 841
    const/4 v1, -0x1

    return v1

    .line 843
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v1

    return v1
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 6
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .line 805
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 806
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 807
    return v1

    .line 809
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    aput v2, p2, v1

    .line 810
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    const/4 v3, 0x1

    aput v2, p2, v3

    .line 811
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    :goto_0
    aput v4, p2, v2

    .line 813
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xff

    invoke-static {v2, v4}, Ljava/lang/Integer;->min(II)I

    move-result v2

    .line 814
    .local v2, "nameLen":I
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 815
    aput-char v1, p3, v2

    .line 817
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v1

    .line 818
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v3

    .line 819
    return v3
.end method

.method private getObjectList(III)[I
    .locals 2
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .line 456
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3, p2, p1}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/stream/Stream;

    move-result-object v0

    .line 458
    .local v0, "objectStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_0

    .line 459
    const/4 v1, 0x0

    return-object v1

    .line 461
    :cond_0
    sget-object v1, Landroid/mtp/-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc;->INSTANCE:Landroid/mtp/-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method private getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .locals 16
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "property"    # I
    .param p4, "groupCode"    # I
    .param p5, "depth"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 476
    if-nez v3, :cond_1

    .line 477
    if-nez p4, :cond_0

    .line 478
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/16 v5, 0x2006

    invoke-direct {v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 480
    :cond_0
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const v5, 0xa807

    invoke-direct {v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 482
    :cond_1
    const/4 v4, -0x1

    move/from16 v5, p5

    if-ne v5, v4, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_3

    .line 484
    :cond_2
    const/4 v1, -0x1

    .line 485
    .end local p1    # "handle":I
    .local v1, "handle":I
    const/4 v5, 0x0

    .line 487
    .end local p5    # "depth":I
    .local v5, "depth":I
    :cond_3
    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_4

    .line 490
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const v6, 0xa808

    invoke-direct {v4, v6}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 492
    :cond_4
    const/4 v7, 0x0

    new-array v8, v7, [Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v8}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 493
    .local v8, "objectStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    const/16 v9, 0x2009

    if-ne v1, v4, :cond_5

    .line 495
    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v10, v7, v2, v4}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/stream/Stream;

    move-result-object v8

    .line 496
    if-nez v8, :cond_8

    .line 497
    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v9}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 499
    :cond_5
    if-eqz v1, :cond_8

    .line 501
    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v10, v1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v10

    .line 502
    .local v10, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v10, :cond_6

    .line 503
    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v9}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 505
    :cond_6
    invoke-virtual {v10}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v11

    if-eq v11, v2, :cond_7

    if-nez v2, :cond_8

    .line 506
    :cond_7
    invoke-static {v10}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 509
    .end local v10    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_8
    if-eqz v1, :cond_9

    if-ne v5, v6, :cond_c

    .line 510
    :cond_9
    if-nez v1, :cond_a

    .line 511
    const/4 v1, -0x1

    .line 514
    :cond_a
    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v10, v1, v2, v4}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/stream/Stream;

    move-result-object v10

    .line 516
    .local v10, "childStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v10, :cond_b

    .line 517
    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v9}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    .line 519
    :cond_b
    invoke-static {v8, v10}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 522
    .end local v10    # "childStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    :cond_c
    new-instance v9, Landroid/mtp/MtpPropertyList;

    const/16 v10, 0x2001

    invoke-direct {v9, v10}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    .line 524
    .local v9, "ret":Landroid/mtp/MtpPropertyList;
    invoke-interface {v8}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 525
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 526
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 527
    .local v12, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-ne v3, v4, :cond_d

    .line 529
    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/mtp/MtpPropertyGroup;

    .line 530
    .local v13, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v13, :cond_e

    .line 531
    invoke-direct {v0, v2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v14

    .line 532
    .local v14, "propertyList":[I
    new-instance v4, Landroid/mtp/MtpPropertyGroup;

    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v7, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v4, v10, v7, v14}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    move-object v13, v4

    .line 534
    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .end local v14    # "propertyList":[I
    nop

    .line 546
    const/4 v7, 0x0

    goto :goto_1

    .line 538
    .end local v13    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_d
    new-array v4, v6, [I

    const/4 v7, 0x0

    aput v3, v4, v7

    .line 539
    .local v4, "propertyList":[I
    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Landroid/mtp/MtpPropertyGroup;

    .line 540
    .restart local v13    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v13, :cond_e

    .line 541
    new-instance v10, Landroid/mtp/MtpPropertyGroup;

    iget-object v14, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v6, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v10, v14, v6, v4}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    move-object v13, v10

    .line 543
    iget-object v6, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .end local v4    # "propertyList":[I
    :cond_e
    :goto_1
    invoke-virtual {v13, v12, v9}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I

    move-result v4

    .line 547
    .local v4, "err":I
    const/16 v6, 0x2001

    if-eq v4, v6, :cond_f

    .line 548
    new-instance v6, Landroid/mtp/MtpPropertyList;

    invoke-direct {v6, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v6

    .line 550
    .end local v4    # "err":I
    .end local v12    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_f
    nop

    .line 524
    move v10, v6

    const/4 v4, -0x1

    const/4 v6, 0x1

    goto :goto_0

    .line 551
    .end local v13    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_10
    return-object v9
.end method

.method private getObjectReferences(I)[I
    .locals 12
    .param p1, "handle"    # I

    .line 918
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 919
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 920
    return-object v1

    .line 922
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result p1

    .line 923
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 924
    return-object v1

    .line 925
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 926
    .local v2, "uri":Landroid/net/Uri;
    move-object v3, v1

    .line 928
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v7, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 929
    if-nez v3, :cond_3

    .line 930
    nop

    .line 945
    if-eqz v3, :cond_2

    .line 946
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 930
    :cond_2
    return-object v1

    .line 932
    :cond_3
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 935
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 936
    .local v5, "refPath":Ljava/lang/String;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v6, v5}, Landroid/mtp/MtpStorageManager;->getByPath(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v6

    .line 937
    .local v6, "refObj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v6, :cond_4

    .line 938
    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    .end local v5    # "refPath":Ljava/lang/String;
    .end local v6    # "refObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_4
    goto :goto_0

    .line 941
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Landroid/mtp/-$$Lambda$MtpDatabase$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Landroid/mtp/-$$Lambda$MtpDatabase$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    if-eqz v3, :cond_6

    .line 946
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 941
    :cond_6
    return-object v5

    .line 945
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 942
    :catch_0
    move-exception v4

    .line 943
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException in getObjectList"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    .end local v4    # "e":Landroid/os/RemoteException;
    if-eqz v3, :cond_7

    .line 946
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 949
    :cond_7
    return-object v1

    .line 945
    :goto_1
    if-eqz v3, :cond_8

    .line 946
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .line 218
    sget-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-object v0
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 2
    .param p1, "format"    # I

    .line 191
    sparse-switch p1, :sswitch_data_0

    .line 213
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    return-object v0

    .line 210
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 211
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 210
    return-object v0

    .line 202
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 203
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 202
    return-object v0

    .line 197
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 198
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 197
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3008 -> :sswitch_2
        0x3009 -> :sswitch_2
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3804 -> :sswitch_0
        0x3807 -> :sswitch_0
        0x380b -> :sswitch_0
        0x3811 -> :sswitch_0
        0x3812 -> :sswitch_0
        0xb901 -> :sswitch_2
        0xb902 -> :sswitch_2
        0xb903 -> :sswitch_2
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .line 222
    sget-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    return-object v0
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 338
    move-object/from16 v2, p1

    const-string v3, "device-properties"

    .line 339
    .local v3, "devicePropertiesName":Ljava/lang/String;
    const-string v0, "device-properties"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 341
    const-string v0, "device-properties"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 343
    .local v5, "databaseFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 346
    const/4 v6, 0x0

    .line 347
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    move-object v7, v0

    .line 349
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v8, "device-properties"

    invoke-virtual {v2, v8, v4, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    .line 350
    .end local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v4, :cond_1

    .line 351
    :try_start_1
    const-string/jumbo v9, "properties"

    const-string v0, "_id"

    const-string v6, "code"

    const-string/jumbo v8, "value"

    filled-new-array {v0, v6, v8}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v4

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 353
    if-eqz v7, :cond_1

    .line 354
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 355
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 356
    const/4 v6, 0x1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, "name":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 359
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_0

    .line 360
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    goto :goto_1

    .line 366
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 363
    :catch_0
    move-exception v0

    move-object v6, v4

    goto :goto_2

    .line 366
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 366
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    move-object v4, v6

    goto :goto_4

    .line 363
    :catch_1
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    sget-object v4, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v8, "failed to migrate device properties"

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 369
    :cond_4
    move-object v4, v6

    .line 369
    .end local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    :goto_3
    const-string v0, "device-properties"

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 369
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "c":Landroid/database/Cursor;
    goto :goto_5

    .line 366
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "c":Landroid/database/Cursor;
    :goto_4
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v0

    .line 371
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_8
    :goto_5
    return-void
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 10
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 555
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 556
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_0

    .line 557
    const/16 v1, 0x2009

    return v1

    .line 559
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 562
    .local v1, "oldPath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, p2}, Landroid/mtp/MtpStorageManager;->beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2002

    if-nez v2, :cond_1

    .line 563
    return v3

    .line 564
    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    .line 565
    .local v2, "newPath":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 567
    .local v4, "success":Z
    :try_start_0
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    .line 568
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    goto :goto_0

    .line 569
    :catch_0
    move-exception v5

    .line 573
    :goto_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v4}, Landroid/mtp/MtpStorageManager;->endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 574
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "Failed to end rename object"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_2
    if-nez v4, :cond_3

    .line 577
    return v3

    .line 581
    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 582
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "_data"

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 587
    .local v5, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v8, "_data=?"

    invoke-virtual {v6, v7, v3, v8, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 590
    goto :goto_1

    .line 588
    :catch_1
    move-exception v6

    .line 589
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v7, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v8, "RemoteException in mMediaProvider.update"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 595
    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    const-string v8, "."

    invoke-interface {v6, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "."

    invoke-interface {v2, v6}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 598
    :try_start_2
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v8, "unhide"

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v7}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 599
    :catch_2
    move-exception v6

    .line 600
    .restart local v6    # "e":Landroid/os/RemoteException;
    sget-object v7, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to unhide/rescan for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_3

    .line 605
    :cond_4
    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ".nomedia"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 606
    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ".nomedia"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 608
    :try_start_3
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v8, "unhide"

    .line 609
    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    .line 608
    invoke-virtual {v6, v8, v9, v7}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 612
    goto :goto_3

    .line 610
    :catch_3
    move-exception v6

    .line 611
    .restart local v6    # "e":Landroid/os/RemoteException;
    sget-object v7, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to unhide/rescan for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    const/16 v6, 0x2001

    return v6
.end method

.method private rescanFile(Ljava/lang/String;II)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I

    .line 426
    const v0, 0xba05

    if-ne p3, v0, :cond_2

    .line 428
    move-object v0, p1

    .line 429
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 430
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 431
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_0
    const-string v2, ".pla"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 438
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 439
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v3, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 443
    const-string/jumbo v3, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    :try_start_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    goto :goto_0

    .line 447
    :catch_0
    move-exception v3

    .line 448
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "lastSlash":I
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 451
    :cond_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;II)V

    .line 453
    :goto_1
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .line 790
    packed-switch p1, :pswitch_data_0

    .line 800
    const/16 v0, 0x200a

    return v0

    .line 794
    :pswitch_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 795
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 796
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    .line 797
    :cond_0
    const/16 v1, 0x2002

    .line 796
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .line 745
    const v0, 0xdc07

    if-eq p2, v0, :cond_0

    .line 750
    const v0, 0xa80a

    return v0

    .line 747
    :cond_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setObjectReferences(I[I)I
    .locals 17
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    move-object/from16 v1, p0

    .line 953
    move-object/from16 v2, p2

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    .line 954
    .local v4, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v4, :cond_0

    .line 955
    const/16 v0, 0x2009

    return v0

    .line 957
    :cond_0
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v3

    .line 958
    .end local p1    # "handle":I
    .local v3, "handle":I
    const/16 v5, 0x2002

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 959
    return v5

    .line 960
    :cond_1
    iget-object v6, v1, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v7, v3

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 961
    .local v6, "uri":Landroid/net/Uri;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v7, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    array-length v8, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_4

    aget v11, v2, v10

    .line 964
    .local v11, "id":I
    iget-object v12, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v12, v11}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v12

    .line 965
    .local v12, "refObj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v12, :cond_2

    .line 966
    goto :goto_1

    .line 967
    :cond_2
    invoke-virtual {v12}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v13

    .line 968
    .local v13, "refHandle":I
    if-ne v13, v0, :cond_3

    .line 969
    goto :goto_1

    .line 970
    :cond_3
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 971
    .local v14, "values":Landroid/content/ContentValues;
    const-string v15, "_id"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 972
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    .end local v11    # "id":I
    .end local v12    # "refObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v13    # "refHandle":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/4 v0, -0x1

    goto :goto_0

    .line 975
    :cond_4
    :try_start_0
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    new-array v8, v9, [Landroid/content/ContentValues;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ContentValues;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_5

    .line 976
    const/16 v0, 0x2001

    return v0

    .line 980
    :cond_5
    goto :goto_2

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v8, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v9, "RemoteException in setObjectReferences"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return v5
.end method


# virtual methods
.method public addStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "storage"    # Landroid/os/storage/StorageVolume;

    .line 318
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->addMtpStorage(Landroid/os/storage/StorageVolume;)Landroid/mtp/MtpStorage;

    move-result-object v0

    .line 319
    .local v0, "mtpStorage":Landroid/mtp/MtpStorage;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 323
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .line 294
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager;->close()V

    .line 295
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 296
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v0}, Landroid/media/MediaScanner;->close()V

    .line 298
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 301
    :cond_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 303
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

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 311
    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 314
    nop

    .line 315
    return-void

    .line 313
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "storage"    # Landroid/os/storage/StorageVolume;

    .line 326
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    .line 327
    .local v0, "mtpStorage":Landroid/mtp/MtpStorage;
    if-nez v0, :cond_0

    .line 328
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 333
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->removeMtpStorage(Landroid/mtp/MtpStorage;)V

    .line 334
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .locals 4
    .param p1, "server"    # Landroid/mtp/MtpServer;

    .line 278
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    .line 281
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 286
    :goto_0
    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    :cond_0
    return-void
.end method
