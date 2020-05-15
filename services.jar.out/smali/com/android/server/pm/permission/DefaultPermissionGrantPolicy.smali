.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;,
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    }
.end annotation


# static fields
.field private static final ACTION_TRACK:Ljava/lang/String; = "com.android.fitness.TRACK"

.field private static final ATTR_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FLAGS:I = 0xc2000

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_READ_DEFAULT_PERMISSION_EXCEPTIONS:I = 0x1

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"

.field private static final TAG_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final TAG_EXCEPTIONS:Ljava/lang/String; = "exceptions"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mGrantExceptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsInternalVersion:Z

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mLock:Ljava/lang/Object;

.field private mPackgePermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParseDone:Z

.field private final mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

.field private final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 115
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 117
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 128
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 135
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 141
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 146
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 152
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 162
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 167
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 172
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 177
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    .param p4, "permissionManager"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 207
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPackgePermissions:Landroid/util/ArrayMap;

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mParseDone:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mIsInternalVersion:Z

    .line 215
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 216
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 228
    iput-object p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    .line 229
    iput-object p4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 230
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "x1"    # Landroid/util/ArrayMap;

    .line 98
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 98
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1611
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getDefaultPermissionFiles()[Ljava/io/File;
    .locals 6

    .line 1463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1464
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/default-permissions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1465
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1466
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1468
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1469
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1470
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1472
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1473
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1474
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1476
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1477
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1478
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1481
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.embedded"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1482
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v5, "etc/default-permissions"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1483
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1484
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1487
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    new-array v2, v4, [Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    :goto_0
    return-object v2
.end method

.method private getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1240
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1241
    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1242
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 1243
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 1245
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1181
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1182
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1181
    const v3, 0xc2000

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1184
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1187
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1188
    return-object v1

    .line 1190
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 1185
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1195
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1195
    const v2, 0xc2000

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/content/pm/PackageManagerInternal;->queryIntentServices(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v0

    .line 1197
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1198
    return-object v1

    .line 1200
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1201
    .local v2, "handlerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1202
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1203
    .local v4, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1205
    .local v5, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1

    .line 1206
    return-object v5

    .line 1201
    .end local v4    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v5    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1209
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 1214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v0, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    array-length v2, p1

    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v2, :cond_2

    aget-object v11, p1, v10

    .line 1220
    .local v11, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1223
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const v6, 0xc2000

    const/4 v8, 0x0

    .line 1224
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1222
    move-object v4, v1

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1225
    .local v3, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    .line 1226
    goto :goto_1

    .line 1229
    :cond_0
    invoke-direct {p0, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1230
    .local v4, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1

    .line 1231
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    .end local v3    # "homeActivity":Landroid/content/pm/ResolveInfo;
    .end local v4    # "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1235
    :cond_2
    return-object v0
.end method

.method private getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1249
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method private getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1253
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1254
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1255
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    nop

    :cond_0
    return-object v1

    .line 1257
    :cond_1
    return-object v1
.end method

.method private grantAllRuntimePermissions(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 408
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting all runtime permissions for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 410
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 411
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 412
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_0

    .line 413
    goto :goto_0

    .line 415
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V

    .line 416
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_0

    .line 417
    :cond_1
    return-void
.end method

.method private grantDefaultPermissionExceptions(I)V
    .locals 11
    .param p1, "userId"    # I

    .line 1429
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1431
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1436
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1437
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1439
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    const/4 v0, 0x0

    .line 1442
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1443
    .local v1, "exceptionCount":I
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1444
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1445
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1446
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1447
    .local v6, "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1448
    .local v7, "permissionGrantCount":I
    move-object v8, v3

    move v3, v2

    .local v3, "j":I
    .local v8, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    if-ge v3, v7, :cond_2

    .line 1449
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1450
    .local v9, "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    if-nez v8, :cond_1

    .line 1451
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v10

    goto :goto_2

    .line 1453
    :cond_1
    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 1455
    :goto_2
    iget-object v10, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1456
    iget-boolean v10, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    invoke-direct {p0, v5, v8, v10, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1448
    .end local v9    # "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1443
    .end local v3    # "j":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    .end local v7    # "permissionGrantCount":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-object v3, v8

    goto :goto_0

    .line 1460
    .end local v0    # "i":I
    .end local v8    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 1439
    .end local v1    # "exceptionCount":I
    .end local v3    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1056
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to sim call manager for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1059
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1061
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 978
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 980
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 981
    .local v0, "isPhonePermFixed":Z
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 983
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 984
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 985
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 986
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 988
    .end local v0    # "isPhonePermFixed":Z
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 992
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 994
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 995
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 996
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 997
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 998
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1000
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "useOpenWifiPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1004
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1007
    :cond_0
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 93
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 441
    move/from16 v2, p1

    const-string v0, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting permissions to default platform handlers for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 452
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 453
    .local v0, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 454
    .local v4, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 455
    .local v5, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v6, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 456
    .local v6, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v7, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 457
    .local v7, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v8, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 458
    .local v8, "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v9, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 459
    .local v9, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    if-eqz v4, :cond_0

    .line 462
    invoke-interface {v4, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 463
    .local v10, "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 464
    invoke-interface {v0, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 465
    .local v11, "locationPackageNames":[Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_2

    .line 466
    invoke-interface {v5, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 467
    .local v12, "smsAppPackageNames":[Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_3

    .line 468
    invoke-interface {v6, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 469
    .local v13, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_3
    if-eqz v7, :cond_4

    .line 470
    invoke-interface {v7, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 471
    .local v14, "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_4
    if-eqz v8, :cond_5

    .line 472
    invoke-interface {v8, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 473
    .local v15, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    :goto_5
    if-eqz v9, :cond_6

    .line 474
    const-string v3, "com.android.contacts"

    invoke-interface {v9, v3, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    .line 475
    .local v3, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_6
    if-eqz v9, :cond_7

    .line 476
    move-object/from16 v17, v0

    const-string v0, "com.android.calendar"

    .line 476
    .end local v0    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v17, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    invoke-interface {v9, v0, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 476
    .end local v17    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v0    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_7
    move-object/from16 v17, v0

    .line 476
    .end local v0    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v17    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    const/4 v0, 0x0

    .line 479
    .local v0, "calendarSyncAdapterPackages":[Ljava/lang/String;
    :goto_7
    move-object/from16 v18, v4

    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 479
    .end local v4    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v18, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v19, v5

    const/4 v5, 0x2

    .line 479
    .end local v5    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v19, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, "installerPackageName":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 482
    .local v5, "installerPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v20, v4

    const/4 v4, 0x1

    .line 482
    .end local v4    # "installerPackageName":Ljava/lang/String;
    .local v20, "installerPackageName":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 483
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 484
    move-object/from16 v21, v6

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 484
    .end local v6    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v21, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    invoke-direct {v1, v5, v6, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_8

    .line 488
    .end local v21    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v6    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_8
    move-object/from16 v21, v6

    .line 488
    .end local v6    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v21    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :goto_8
    iget-object v6, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v4, 0x3

    invoke-virtual {v6, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "verifierPackageName":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 491
    .local v6, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v22, v4

    .line 491
    .end local v4    # "verifierPackageName":Ljava/lang/String;
    .local v22, "verifierPackageName":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 492
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 493
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v23, v5

    const/4 v5, 0x1

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 494
    .end local v5    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .local v23, "installerPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 495
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_9

    .line 499
    .end local v23    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_9
    move-object/from16 v23, v5

    .line 499
    .end local v5    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v23    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_9
    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, "setupWizardPackageName":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 502
    .local v5, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_a

    .line 503
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 504
    move-object/from16 v24, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 504
    .end local v4    # "setupWizardPackageName":Ljava/lang/String;
    .local v24, "setupWizardPackageName":Ljava/lang/String;
    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 505
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 506
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 507
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_a

    .line 511
    .end local v24    # "setupWizardPackageName":Ljava/lang/String;
    .restart local v4    # "setupWizardPackageName":Ljava/lang/String;
    :cond_a
    move-object/from16 v24, v4

    .line 511
    .end local v4    # "setupWizardPackageName":Ljava/lang/String;
    .restart local v24    # "setupWizardPackageName":Ljava/lang/String;
    :goto_a
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v25, v5

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    .line 511
    .end local v5    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .local v25, "setupPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v4, "cameraIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 514
    .local v5, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_b

    .line 515
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 516
    move-object/from16 v26, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 516
    .end local v4    # "cameraIntent":Landroid/content/Intent;
    .local v26, "cameraIntent":Landroid/content/Intent;
    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 517
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 518
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_b

    .line 522
    .end local v26    # "cameraIntent":Landroid/content/Intent;
    .restart local v4    # "cameraIntent":Landroid/content/Intent;
    :cond_b
    move-object/from16 v26, v4

    .line 522
    .end local v4    # "cameraIntent":Landroid/content/Intent;
    .restart local v26    # "cameraIntent":Landroid/content/Intent;
    :goto_b
    const-string/jumbo v4, "media"

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 524
    .local v4, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_c

    .line 525
    move-object/from16 v27, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 525
    .end local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .local v27, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v28, v6

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 526
    .end local v6    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .local v28, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_c

    .line 530
    .end local v27    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v28    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :cond_c
    move-object/from16 v27, v5

    move-object/from16 v28, v6

    const/4 v6, 0x1

    .line 530
    .end local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v27    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v28    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :goto_c
    const-string v5, "downloads"

    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 532
    .local v5, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_d

    .line 533
    move-object/from16 v29, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 533
    .end local v4    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .local v29, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v5, v4, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_d

    .line 537
    .end local v29    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    :cond_d
    move-object/from16 v29, v4

    .line 537
    .end local v4    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v29    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    :goto_d
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v4, "downloadsUiIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 540
    .local v6, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_e

    .line 541
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 542
    move-object/from16 v30, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 542
    .end local v4    # "downloadsUiIntent":Landroid/content/Intent;
    .local v30, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v31, v5

    const/4 v5, 0x1

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 542
    .end local v5    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .local v31, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_e

    .line 546
    .end local v30    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v31    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v5    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_e
    move-object/from16 v30, v4

    move-object/from16 v31, v5

    const/4 v5, 0x1

    .line 546
    .end local v4    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v5    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v30    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v31    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    :goto_e
    const-string v4, "com.android.externalstorage.documents"

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 548
    .local v4, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_f

    .line 549
    move-object/from16 v32, v6

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 549
    .end local v6    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .local v32, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v4, v6, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_f

    .line 553
    .end local v32    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    :cond_f
    move-object/from16 v32, v6

    .line 553
    .end local v6    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v32    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    :goto_f
    const-string v6, "com.android.defcontainer"

    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 555
    .local v6, "containerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_10

    .line 556
    move-object/from16 v33, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 556
    .end local v4    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .local v33, "storagePackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_10

    .line 560
    .end local v33    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    :cond_10
    move-object/from16 v33, v4

    .line 560
    .end local v4    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v33    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    :goto_10
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.credentials.INSTALL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v4, "certInstallerIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 563
    .local v5, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_11

    .line 564
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 565
    move-object/from16 v34, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 565
    .end local v4    # "certInstallerIntent":Landroid/content/Intent;
    .local v34, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v35, v6

    const/4 v6, 0x1

    invoke-direct {v1, v5, v4, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 565
    .end local v6    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .local v35, "containerPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_11

    .line 569
    .end local v34    # "certInstallerIntent":Landroid/content/Intent;
    .end local v35    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v6    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_11
    move-object/from16 v34, v4

    move-object/from16 v35, v6

    .line 569
    .end local v4    # "certInstallerIntent":Landroid/content/Intent;
    .end local v6    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v34    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v35    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_11
    if-nez v13, :cond_13

    .line 570
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .local v4, "dialerIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 573
    .local v6, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_12

    .line 574
    invoke-direct {v1, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 576
    .end local v4    # "dialerIntent":Landroid/content/Intent;
    .end local v6    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_12
    nop

    .line 586
    move-object/from16 v37, v5

    goto :goto_13

    .line 577
    :cond_13
    array-length v4, v13

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v4, :cond_15

    move/from16 v36, v4

    aget-object v4, v13, v6

    .line 578
    .local v4, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v37, v5

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 579
    .local v5, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .local v37, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_14

    .line 580
    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 577
    .end local v4    # "dialerAppPackageName":Ljava/lang/String;
    .end local v5    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_14
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v36

    move-object/from16 v5, v37

    goto :goto_12

    .line 586
    .end local v37    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .local v5, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_15
    move-object/from16 v37, v5

    .line 586
    .end local v5    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v37    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_13
    if-eqz v14, :cond_17

    .line 587
    array-length v4, v14

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_17

    aget-object v6, v14, v5

    .line 588
    .local v6, "simCallManagerPackageName":Ljava/lang/String;
    nop

    .line 589
    move/from16 v38, v4

    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 590
    .local v4, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_16

    .line 591
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V

    .line 587
    .end local v4    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "simCallManagerPackageName":Ljava/lang/String;
    :cond_16
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v38

    goto :goto_14

    .line 598
    :cond_17
    if-eqz v15, :cond_19

    .line 599
    array-length v4, v15

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_19

    aget-object v6, v15, v5

    .line 600
    .local v6, "useOpenWifiPackageName":Ljava/lang/String;
    nop

    .line 601
    move/from16 v39, v4

    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 602
    .local v4, "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_18

    .line 603
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 599
    .end local v4    # "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "useOpenWifiPackageName":Ljava/lang/String;
    :cond_18
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v39

    goto :goto_15

    .line 610
    :cond_19
    if-nez v12, :cond_1b

    .line 611
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v4, "smsIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 615
    .local v5, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1a

    .line 616
    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 618
    .end local v4    # "smsIntent":Landroid/content/Intent;
    .end local v5    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1a
    goto :goto_17

    .line 619
    :cond_1b
    array-length v4, v12

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_1d

    aget-object v6, v12, v5

    .line 620
    .local v6, "smsPackageName":Ljava/lang/String;
    move/from16 v40, v4

    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 621
    .local v4, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1c

    .line 622
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 619
    .end local v4    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "smsPackageName":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v40

    goto :goto_16

    .line 628
    :cond_1d
    :goto_17
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v4, "cbrIntent":Landroid/content/Intent;
    nop

    .line 630
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 631
    .local v5, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1e

    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 632
    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 636
    :cond_1e
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v41, v4

    const-string v4, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    .line 636
    .end local v4    # "cbrIntent":Landroid/content/Intent;
    .local v41, "cbrIntent":Landroid/content/Intent;
    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 637
    .local v4, "carrierProvIntent":Landroid/content/Intent;
    nop

    .line 638
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 639
    .local v6, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1f

    .line 640
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 641
    move-object/from16 v42, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 641
    .end local v4    # "carrierProvIntent":Landroid/content/Intent;
    .local v42, "carrierProvIntent":Landroid/content/Intent;
    move-object/from16 v43, v5

    const/4 v5, 0x0

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 641
    .end local v5    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .local v43, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_18

    .line 645
    .end local v42    # "carrierProvIntent":Landroid/content/Intent;
    .end local v43    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "carrierProvIntent":Landroid/content/Intent;
    .restart local v5    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1f
    move-object/from16 v42, v4

    move-object/from16 v43, v5

    .line 645
    .end local v4    # "carrierProvIntent":Landroid/content/Intent;
    .end local v5    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v42    # "carrierProvIntent":Landroid/content/Intent;
    .restart local v43    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    :goto_18
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v4, "calendarIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 649
    .local v5, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_20

    .line 650
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_20

    .line 651
    move-object/from16 v44, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 651
    .end local v4    # "calendarIntent":Landroid/content/Intent;
    .local v44, "calendarIntent":Landroid/content/Intent;
    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 652
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_19

    .line 656
    .end local v44    # "calendarIntent":Landroid/content/Intent;
    .restart local v4    # "calendarIntent":Landroid/content/Intent;
    :cond_20
    move-object/from16 v44, v4

    .line 656
    .end local v4    # "calendarIntent":Landroid/content/Intent;
    .restart local v44    # "calendarIntent":Landroid/content/Intent;
    :goto_19
    const-string v4, "com.android.calendar"

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 658
    .local v4, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_21

    .line 659
    move-object/from16 v45, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 659
    .end local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .local v45, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 660
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v46, v6

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 662
    .end local v6    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .local v46, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_1a

    .line 666
    .end local v45    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v46    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    :cond_21
    move-object/from16 v45, v5

    move-object/from16 v46, v6

    .line 666
    .end local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v45    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v46    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    :goto_1a
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 668
    .local v5, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 669
    .local v6, "calendarSyncAdapterCount":I
    const/16 v16, 0x0

    .line 669
    .local v16, "i":I
    :goto_1b
    move/from16 v47, v16

    .line 669
    .end local v16    # "i":I
    .local v47, "i":I
    move-object/from16 v48, v0

    move/from16 v0, v47

    if-ge v0, v6, :cond_23

    .line 670
    .end local v47    # "i":I
    .local v0, "i":I
    .local v48, "calendarSyncAdapterPackages":[Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v49, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 671
    .local v4, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .local v49, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_22

    .line 672
    move-object/from16 v50, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 672
    .end local v5    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v50, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 672
    .end local v4    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    goto :goto_1c

    .line 669
    .end local v50    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v5    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_22
    move-object/from16 v50, v5

    .line 669
    .end local v5    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v50    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :goto_1c
    add-int/lit8 v16, v0, 0x1

    .line 669
    .end local v0    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v0, v48

    move-object/from16 v4, v49

    move-object/from16 v5, v50

    goto :goto_1b

    .line 677
    .end local v16    # "i":I
    .end local v49    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v50    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v4, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_23
    move-object/from16 v49, v4

    move-object/from16 v50, v5

    .line 677
    .end local v4    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v49    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v50    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "contactsIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 681
    .local v4, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_24

    .line 682
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 683
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 684
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 688
    :cond_24
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 690
    .local v5, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    move-object/from16 v51, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 691
    .local v0, "contactsSyncAdapterCount":I
    .local v51, "contactsIntent":Landroid/content/Intent;
    const/16 v16, 0x0

    .line 691
    .restart local v16    # "i":I
    :goto_1d
    move/from16 v52, v16

    .line 691
    .end local v16    # "i":I
    .local v52, "i":I
    move-object/from16 v53, v3

    move/from16 v3, v52

    if-ge v3, v0, :cond_26

    .line 692
    .end local v52    # "i":I
    .local v3, "i":I
    .local v53, "contactsSyncAdapterPackages":[Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v54, v0

    move-object/from16 v0, v16

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 693
    .local v0, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .local v54, "contactsSyncAdapterCount":I
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_25

    .line 694
    move-object/from16 v55, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 694
    .end local v4    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .local v55, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 694
    .end local v0    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    goto :goto_1e

    .line 691
    .end local v55    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_25
    move-object/from16 v55, v4

    .line 691
    .end local v4    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v55    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    :goto_1e
    add-int/lit8 v16, v3, 0x1

    .line 691
    .end local v3    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v3, v53

    move/from16 v0, v54

    move-object/from16 v4, v55

    goto :goto_1d

    .line 699
    .end local v16    # "i":I
    .end local v54    # "contactsSyncAdapterCount":I
    .end local v55    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .local v0, "contactsSyncAdapterCount":I
    .restart local v4    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_26
    move/from16 v54, v0

    move-object/from16 v55, v4

    .line 699
    .end local v0    # "contactsSyncAdapterCount":I
    .end local v4    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v54    # "contactsSyncAdapterCount":I
    .restart local v55    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    const-string v0, "com.android.contacts"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 701
    .local v0, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_27

    .line 702
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 704
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 706
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 710
    :cond_27
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    .local v3, "deviceProvisionIntent":Landroid/content/Intent;
    nop

    .line 713
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 714
    .local v4, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_28

    .line 715
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_28

    .line 716
    move-object/from16 v56, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 716
    .end local v0    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .local v56, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_1f

    .line 720
    .end local v56    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    :cond_28
    move-object/from16 v56, v0

    .line 720
    .end local v0    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v56    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    :goto_1f
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v57, v3

    const-string v3, "android.intent.action.MAIN"

    .line 720
    .end local v3    # "deviceProvisionIntent":Landroid/content/Intent;
    .local v57, "deviceProvisionIntent":Landroid/content/Intent;
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    .local v0, "mapsIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_MAPS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 724
    .local v3, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_29

    .line 725
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_29

    .line 726
    move-object/from16 v58, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 726
    .end local v0    # "mapsIntent":Landroid/content/Intent;
    .local v58, "mapsIntent":Landroid/content/Intent;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_20

    .line 730
    .end local v58    # "mapsIntent":Landroid/content/Intent;
    .restart local v0    # "mapsIntent":Landroid/content/Intent;
    :cond_29
    move-object/from16 v58, v0

    .line 730
    .end local v0    # "mapsIntent":Landroid/content/Intent;
    .restart local v58    # "mapsIntent":Landroid/content/Intent;
    :goto_20
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v59, v3

    const-string v3, "android.intent.action.MAIN"

    .line 730
    .end local v3    # "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .local v59, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v0, "galleryIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_GALLERY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 734
    .local v3, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_2a

    .line 735
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_2a

    .line 736
    move-object/from16 v60, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 736
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    .local v60, "galleryIntent":Landroid/content/Intent;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_21

    .line 740
    .end local v60    # "galleryIntent":Landroid/content/Intent;
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    :cond_2a
    move-object/from16 v60, v0

    .line 740
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    .restart local v60    # "galleryIntent":Landroid/content/Intent;
    :goto_21
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v61, v3

    const-string v3, "android.intent.action.MAIN"

    .line 740
    .end local v3    # "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .local v61, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, "emailIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 744
    .local v3, "emailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_2b

    .line 745
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_2b

    .line 746
    move-object/from16 v62, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 746
    .end local v0    # "emailIntent":Landroid/content/Intent;
    .local v62, "emailIntent":Landroid/content/Intent;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 747
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_22

    .line 751
    .end local v62    # "emailIntent":Landroid/content/Intent;
    .restart local v0    # "emailIntent":Landroid/content/Intent;
    :cond_2b
    move-object/from16 v62, v0

    .line 751
    .end local v0    # "emailIntent":Landroid/content/Intent;
    .restart local v62    # "emailIntent":Landroid/content/Intent;
    :goto_22
    const/4 v0, 0x0

    .line 752
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v63, v0

    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 752
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v63, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v64, v3

    const/4 v3, 0x4

    .line 752
    .end local v3    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .local v64, "emailPackage":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v0, :cond_2c

    .line 755
    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 757
    .end local v63    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v3, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v63, v3

    .line 757
    .end local v3    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v63    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2c
    if-nez v63, :cond_2d

    .line 758
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v65, v0

    const-string v0, "android.intent.action.MAIN"

    .line 758
    .end local v0    # "defaultBrowserPackage":Ljava/lang/String;
    .local v65, "defaultBrowserPackage":Ljava/lang/String;
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 759
    .local v0, "browserIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v63

    .line 763
    .end local v0    # "browserIntent":Landroid/content/Intent;
    move-object/from16 v0, v63

    goto :goto_23

    .line 763
    .end local v65    # "defaultBrowserPackage":Ljava/lang/String;
    .local v0, "defaultBrowserPackage":Ljava/lang/String;
    :cond_2d
    move-object/from16 v65, v0

    move-object/from16 v0, v63

    .line 763
    .end local v63    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v65    # "defaultBrowserPackage":Ljava/lang/String;
    :goto_23
    if-eqz v0, :cond_2e

    .line 764
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 765
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 769
    :cond_2e
    if-eqz v10, :cond_31

    .line 770
    array-length v3, v10

    move-object/from16 v66, v0

    const/4 v0, 0x0

    .line 770
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v66, "browserPackage":Landroid/content/pm/PackageParser$Package;
    :goto_24
    if-ge v0, v3, :cond_30

    move/from16 v67, v3

    aget-object v3, v10, v0

    .line 771
    .local v3, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v68, v4

    invoke-direct {v1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 773
    .local v4, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .local v68, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_2f

    .line 774
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_2f

    .line 775
    move-object/from16 v69, v3

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 775
    .end local v3    # "voiceInteractPackageName":Ljava/lang/String;
    .local v69, "voiceInteractPackageName":Ljava/lang/String;
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 777
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 779
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 781
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 783
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 785
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 770
    .end local v4    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v69    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v67

    move-object/from16 v4, v68

    goto :goto_24

    .line 791
    .end local v68    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .local v4, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    :cond_30
    move-object/from16 v68, v4

    .line 791
    .end local v4    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v68    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_25

    .line 791
    .end local v66    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v68    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    :cond_31
    move-object/from16 v66, v0

    move-object/from16 v68, v4

    .line 791
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v66    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v68    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    :goto_25
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 793
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, "globalSearchIntent":Landroid/content/Intent;
    nop

    .line 795
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 797
    .local v3, "globalSearchPickerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_32

    .line 798
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 799
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v70, v0

    const/4 v0, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 801
    .end local v0    # "globalSearchIntent":Landroid/content/Intent;
    .local v70, "globalSearchIntent":Landroid/content/Intent;
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 807
    .end local v3    # "globalSearchPickerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v70    # "globalSearchIntent":Landroid/content/Intent;
    :cond_32
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, "voiceRecoIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 811
    .local v3, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_33

    .line 812
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 813
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 817
    :cond_33
    if-eqz v11, :cond_36

    .line 818
    array-length v4, v11

    move-object/from16 v71, v0

    const/4 v0, 0x0

    .line 818
    .end local v0    # "voiceRecoIntent":Landroid/content/Intent;
    .local v71, "voiceRecoIntent":Landroid/content/Intent;
    :goto_26
    if-ge v0, v4, :cond_35

    move-object/from16 v72, v3

    aget-object v3, v11, v0

    .line 819
    .local v3, "packageName":Ljava/lang/String;
    .local v72, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    move/from16 v73, v4

    invoke-direct {v1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 820
    .local v4, "locationPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_34

    .line 821
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_34

    .line 822
    move-object/from16 v74, v3

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 822
    .end local v3    # "packageName":Ljava/lang/String;
    .local v74, "packageName":Ljava/lang/String;
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 823
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 824
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 825
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 826
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 827
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v75, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 829
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v75, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 830
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 831
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 831
    .end local v4    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v74    # "packageName":Ljava/lang/String;
    goto :goto_27

    .line 818
    .end local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_34
    move-object/from16 v75, v5

    .line 818
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :goto_27
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v72

    move/from16 v4, v73

    move-object/from16 v5, v75

    goto :goto_26

    .line 837
    .end local v72    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v3, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_35
    move-object/from16 v72, v3

    move-object/from16 v75, v5

    .line 837
    .end local v3    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v72    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    goto :goto_28

    .line 837
    .end local v71    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v72    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v0    # "voiceRecoIntent":Landroid/content/Intent;
    .restart local v3    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_36
    move-object/from16 v71, v0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    .line 837
    .end local v0    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v3    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v71    # "voiceRecoIntent":Landroid/content/Intent;
    .restart local v72    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :goto_28
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, "musicIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    new-instance v3, Ljava/io/File;

    const-string v4, "foo.mp3"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "audio/mpeg"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 843
    .local v3, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_37

    .line 844
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 845
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 849
    :cond_37
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 850
    .local v4, "homeIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    const-string v5, "android.intent.category.LAUNCHER_APP"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 854
    .local v5, "homePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_38

    .line 855
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_38

    .line 856
    move-object/from16 v76, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 856
    .end local v0    # "musicIntent":Landroid/content/Intent;
    .local v76, "musicIntent":Landroid/content/Intent;
    move-object/from16 v77, v3

    const/4 v3, 0x0

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 856
    .end local v3    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .local v77, "musicPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_29

    .line 860
    .end local v76    # "musicIntent":Landroid/content/Intent;
    .end local v77    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "musicIntent":Landroid/content/Intent;
    .restart local v3    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    :cond_38
    move-object/from16 v76, v0

    move-object/from16 v77, v3

    const/4 v3, 0x0

    .line 860
    .end local v0    # "musicIntent":Landroid/content/Intent;
    .end local v3    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v76    # "musicIntent":Landroid/content/Intent;
    .restart local v77    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    :goto_29
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v78, v4

    const-string v4, "android.hardware.type.watch"

    .line 860
    .end local v4    # "homeIntent":Landroid/content/Intent;
    .local v78, "homeIntent":Landroid/content/Intent;
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 862
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .local v0, "wearHomeIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME_MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 868
    .local v3, "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_39

    .line 869
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 870
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v79, v0

    const/4 v0, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 872
    .end local v0    # "wearHomeIntent":Landroid/content/Intent;
    .local v79, "wearHomeIntent":Landroid/content/Intent;
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v0, 0x1

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 873
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 875
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_2a

    .line 880
    .end local v79    # "wearHomeIntent":Landroid/content/Intent;
    .restart local v0    # "wearHomeIntent":Landroid/content/Intent;
    :cond_39
    move-object/from16 v79, v0

    .line 880
    .end local v0    # "wearHomeIntent":Landroid/content/Intent;
    .restart local v79    # "wearHomeIntent":Landroid/content/Intent;
    :goto_2a
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.fitness.TRACK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    .local v0, "trackIntent":Landroid/content/Intent;
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 883
    .local v4, "trackPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_3a

    .line 884
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_3a

    .line 885
    move-object/from16 v80, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 885
    .end local v0    # "trackIntent":Landroid/content/Intent;
    .local v80, "trackIntent":Landroid/content/Intent;
    move-object/from16 v81, v3

    const/4 v3, 0x0

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 886
    .end local v3    # "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    .local v81, "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 891
    .end local v4    # "trackPackage":Landroid/content/pm/PackageParser$Package;
    .end local v79    # "wearHomeIntent":Landroid/content/Intent;
    .end local v80    # "trackIntent":Landroid/content/Intent;
    .end local v81    # "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    :cond_3a
    const-string v0, "com.android.printspooler"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 893
    .local v0, "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_3b

    .line 894
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 895
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 899
    :cond_3b
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 900
    .local v3, "emergencyInfoIntent":Landroid/content/Intent;
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 902
    .local v4, "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_3c

    .line 903
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_3c

    .line 904
    move-object/from16 v82, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 904
    .end local v0    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .local v82, "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v83, v3

    const/4 v3, 0x1

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 905
    .end local v3    # "emergencyInfoIntent":Landroid/content/Intent;
    .local v83, "emergencyInfoIntent":Landroid/content/Intent;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_2b

    .line 909
    .end local v82    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v83    # "emergencyInfoIntent":Landroid/content/Intent;
    .restart local v0    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "emergencyInfoIntent":Landroid/content/Intent;
    :cond_3c
    move-object/from16 v82, v0

    move-object/from16 v83, v3

    .line 909
    .end local v0    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "emergencyInfoIntent":Landroid/content/Intent;
    .restart local v82    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v83    # "emergencyInfoIntent":Landroid/content/Intent;
    :goto_2b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    .local v0, "nfcTagIntent":Landroid/content/Intent;
    const-string/jumbo v3, "vnd.android.cursor.item/ndef_msg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 913
    .local v3, "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3d

    .line 914
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_3d

    .line 915
    move-object/from16 v84, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 915
    .end local v0    # "nfcTagIntent":Landroid/content/Intent;
    .local v84, "nfcTagIntent":Landroid/content/Intent;
    move-object/from16 v85, v4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 916
    .end local v4    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .local v85, "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_2c

    .line 920
    .end local v84    # "nfcTagIntent":Landroid/content/Intent;
    .end local v85    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v4    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    :cond_3d
    move-object/from16 v84, v0

    move-object/from16 v85, v4

    .line 920
    .end local v0    # "nfcTagIntent":Landroid/content/Intent;
    .end local v4    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .restart local v84    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v85    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    :goto_2c
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "storageManagerIntent":Landroid/content/Intent;
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 923
    .local v4, "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_3e

    .line 924
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_3e

    .line 925
    move-object/from16 v86, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 925
    .end local v0    # "storageManagerIntent":Landroid/content/Intent;
    .local v86, "storageManagerIntent":Landroid/content/Intent;
    move-object/from16 v87, v3

    const/4 v3, 0x1

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 925
    .end local v3    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .local v87, "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_2d

    .line 929
    .end local v86    # "storageManagerIntent":Landroid/content/Intent;
    .end local v87    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "storageManagerIntent":Landroid/content/Intent;
    .restart local v3    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    :cond_3e
    move-object/from16 v86, v0

    move-object/from16 v87, v3

    .line 929
    .end local v0    # "storageManagerIntent":Landroid/content/Intent;
    .end local v3    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v86    # "storageManagerIntent":Landroid/content/Intent;
    .restart local v87    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    :goto_2d
    const-string v0, "com.android.companiondevicemanager"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 931
    .local v0, "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_3f

    .line 932
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 933
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v88, v4

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_2e

    .line 938
    :cond_3f
    move-object/from16 v88, v4

    .line 938
    .end local v4    # "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .local v88, "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    :goto_2e
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v3, "ringtonePickerIntent":Landroid/content/Intent;
    nop

    .line 940
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 941
    .local v4, "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_40

    .line 942
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_40

    .line 943
    move-object/from16 v89, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 943
    .end local v0    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .local v89, "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v90, v3

    const/4 v3, 0x1

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 943
    .end local v3    # "ringtonePickerIntent":Landroid/content/Intent;
    .local v90, "ringtonePickerIntent":Landroid/content/Intent;
    goto :goto_2f

    .line 948
    .end local v89    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v90    # "ringtonePickerIntent":Landroid/content/Intent;
    .restart local v0    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "ringtonePickerIntent":Landroid/content/Intent;
    :cond_40
    move-object/from16 v89, v0

    move-object/from16 v90, v3

    .line 948
    .end local v0    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ringtonePickerIntent":Landroid/content/Intent;
    .restart local v89    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v90    # "ringtonePickerIntent":Landroid/content/Intent;
    :goto_2f
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 949
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "textClassifierPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 951
    nop

    .line 952
    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 953
    .local v3, "textClassifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_41

    .line 954
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_41

    .line 955
    move-object/from16 v91, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 955
    .end local v0    # "textClassifierPackageName":Ljava/lang/String;
    .local v91, "textClassifierPackageName":Ljava/lang/String;
    move-object/from16 v92, v4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 956
    .end local v4    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .local v92, "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 957
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 958
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 959
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 959
    .end local v3    # "textClassifierPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_30

    .line 965
    .end local v91    # "textClassifierPackageName":Ljava/lang/String;
    .end local v92    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "textClassifierPackageName":Ljava/lang/String;
    .restart local v4    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_41
    move-object/from16 v91, v0

    move-object/from16 v92, v4

    .line 965
    .end local v0    # "textClassifierPackageName":Ljava/lang/String;
    .end local v4    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v91    # "textClassifierPackageName":Ljava/lang/String;
    .restart local v92    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_30
    const-string v0, "com.android.sharedstoragebackup"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 967
    .local v0, "sharedStorageBackupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_42

    .line 968
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 971
    :cond_42
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    if-eqz v3, :cond_43

    .line 972
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    invoke-interface {v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;->onDefaultRuntimePermissionsGranted(I)V

    .line 974
    :cond_43
    return-void

    .line 459
    .end local v0    # "sharedStorageBackupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "homePackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "calendarSyncAdapterCount":I
    .end local v7    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v8    # "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v9    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v10    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v11    # "locationPackageNames":[Ljava/lang/String;
    .end local v12    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v13    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v14    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v15    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v17    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v18    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v19    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v20    # "installerPackageName":Ljava/lang/String;
    .end local v21    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v22    # "verifierPackageName":Ljava/lang/String;
    .end local v23    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v24    # "setupWizardPackageName":Ljava/lang/String;
    .end local v25    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v26    # "cameraIntent":Landroid/content/Intent;
    .end local v27    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v28    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v29    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v30    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v31    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v32    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v33    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v34    # "certInstallerIntent":Landroid/content/Intent;
    .end local v35    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v37    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v41    # "cbrIntent":Landroid/content/Intent;
    .end local v42    # "carrierProvIntent":Landroid/content/Intent;
    .end local v43    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v44    # "calendarIntent":Landroid/content/Intent;
    .end local v45    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v46    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v48    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v49    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v50    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v51    # "contactsIntent":Landroid/content/Intent;
    .end local v53    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v54    # "contactsSyncAdapterCount":I
    .end local v55    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v56    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v57    # "deviceProvisionIntent":Landroid/content/Intent;
    .end local v58    # "mapsIntent":Landroid/content/Intent;
    .end local v59    # "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v60    # "galleryIntent":Landroid/content/Intent;
    .end local v61    # "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v62    # "emailIntent":Landroid/content/Intent;
    .end local v64    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .end local v65    # "defaultBrowserPackage":Ljava/lang/String;
    .end local v66    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v68    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .end local v71    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v72    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v76    # "musicIntent":Landroid/content/Intent;
    .end local v77    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .end local v78    # "homeIntent":Landroid/content/Intent;
    .end local v82    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v83    # "emergencyInfoIntent":Landroid/content/Intent;
    .end local v84    # "nfcTagIntent":Landroid/content/Intent;
    .end local v85    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .end local v86    # "storageManagerIntent":Landroid/content/Intent;
    .end local v87    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .end local v88    # "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .end local v89    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v90    # "ringtonePickerIntent":Landroid/content/Intent;
    .end local v91    # "textClassifierPackageName":Ljava/lang/String;
    .end local v92    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private grantNubiaDefaultPermissions(I)V
    .locals 14
    .param p1, "userId"    # I

    .line 286
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to [all non-priv sys] platform components for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 288
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 290
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_0

    .line 291
    goto :goto_0

    .line 293
    :cond_0
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 294
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 295
    .local v4, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 296
    .local v5, "permissionCount":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 297
    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 298
    .local v8, "permission":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 299
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 300
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 303
    .end local v7    # "i":I
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 304
    iget-boolean v7, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mParseDone:Z

    if-nez v7, :cond_3

    .line 306
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseDefaultPermissionManifest()V

    .line 307
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mParseDone:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 310
    :catch_0
    move-exception v7

    .line 311
    .local v7, "ioe":Ljava/io/IOException;
    const-string v8, "DefaultPermGrantPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Granting permissions not found default manifest.xml for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", exception :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "ioe":Ljava/io/IOException;
    goto :goto_3

    .line 308
    :catch_1
    move-exception v7

    .line 309
    .local v7, "xe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "DefaultPermGrantPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Granting permissions parse manifest.xml error for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " exceptin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v7    # "xe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    nop

    .line 315
    :cond_3
    :goto_3
    iget-boolean v7, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mParseDone:Z

    if-eqz v7, :cond_a

    .line 316
    const-string v7, "DefaultPermGrantPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Granting permissions parse done for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 318
    .local v7, "permsFixed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPackgePermissions:Landroid/util/ArrayMap;

    iget-object v9, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 319
    .local v8, "whileListPermission":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_6

    .line 325
    :cond_4
    const-string v9, "DefaultPermGrantPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Granting permissions to package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", from default permission file."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move v9, v6

    .local v9, "i":I
    :goto_4
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 327
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 328
    .local v10, "perm":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 329
    const-string v11, "android.permission.WRITE_SMS"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 330
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v11

    const/16 v12, 0xf

    iget-object v13, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12, v13, v2, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_5

    .line 331
    :cond_5
    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 332
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v10    # "perm":Ljava/lang/String;
    :cond_6
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 335
    .end local v9    # "i":I
    :cond_7
    invoke-direct {p0, v3, v7, v6, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .end local v7    # "permsFixed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "whileListPermission":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_7

    .line 320
    .restart local v7    # "permsFixed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "whileListPermission":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    :goto_6
    const-string v6, "DefaultPermGrantPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Granting permissions to package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v9, "com.google"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 322
    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 337
    .end local v7    # "permsFixed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "whileListPermission":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    :goto_7
    goto :goto_8

    .line 338
    :cond_a
    const-string v6, "DefaultPermGrantPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Granting permissions parse error for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 342
    :cond_b
    const-string v6, "DefaultPermGrantPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Granting permissions to package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", permission was empty."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v4    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "permissionCount":I
    :goto_8
    goto :goto_9

    .line 345
    :cond_c
    const-string v4, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Granting permissions to package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", not grant."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_9
    goto/16 :goto_0

    .line 348
    :cond_d
    return-void
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 424
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to platform components for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 426
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 427
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 428
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_1

    .line 429
    goto :goto_0

    .line 431
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 433
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 434
    goto :goto_0

    .line 436
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V

    .line 437
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_0

    .line 438
    :cond_3
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1262
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1263
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1267
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1268
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .locals 17
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "ignoreSystemPackage"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1317
    move/from16 v8, p5

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    return-void

    .line 1321
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1322
    .local v2, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1330
    .local v3, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p4, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1331
    iget-object v4, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1332
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1333
    .local v4, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_2

    .line 1334
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1335
    return-void

    .line 1337
    :cond_1
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1338
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v3, v5

    .line 1339
    iget-object v2, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1344
    .end local v2    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .local v9, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    move-object v9, v2

    move-object v10, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 1345
    .local v11, "grantablePermissionCount":I
    const/4 v12, 0x0

    move v2, v12

    .local v2, "i":I
    :goto_0
    move v13, v2

    .end local v2    # "i":I
    .local v13, "i":I
    if-ge v13, v11, :cond_9

    .line 1346
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 1350
    .local v7, "permission":Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1351
    goto :goto_3

    .line 1354
    :cond_3
    move-object/from16 v6, p2

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1355
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7, v3, v8}, Landroid/content/pm/PackageManagerInternal;->getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 1364
    .local v14, "flags":I
    if-eqz v14, :cond_5

    if-eqz p4, :cond_4

    goto :goto_1

    .line 1390
    :cond_4
    move-object/from16 v16, v7

    goto :goto_2

    .line 1368
    :cond_5
    :goto_1
    and-int/lit8 v2, v14, 0x4

    if-eqz v2, :cond_6

    .line 1369
    goto :goto_3

    .line 1372
    :cond_6
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v7, v8, v12}, Landroid/content/pm/PackageManagerInternal;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1379
    const/16 v2, 0x20

    .line 1380
    .local v2, "newFlags":I
    if-eqz p3, :cond_7

    .line 1381
    or-int/lit8 v2, v2, 0x10

    .line 1384
    .end local v2    # "newFlags":I
    .local v15, "newFlags":I
    :cond_7
    move v15, v2

    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v3, v7

    move v5, v15

    move v6, v15

    move-object/from16 v16, v7

    move v7, v8

    .end local v7    # "permission":Ljava/lang/String;
    .local v16, "permission":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1390
    .end local v15    # "newFlags":I
    :goto_2
    and-int/lit8 v2, v14, 0x20

    if-eqz v2, :cond_8

    and-int/lit8 v2, v14, 0x10

    if-eqz v2, :cond_8

    if-nez p3, :cond_8

    .line 1397
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v3, v16

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1345
    .end local v14    # "flags":I
    .end local v16    # "permission":Ljava/lang/String;
    :cond_8
    :goto_3
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "i":I
    .local v2, "i":I
    goto :goto_0

    .line 1402
    .end local v2    # "i":I
    :cond_9
    return-void
.end method

.method private grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 392
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 393
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 394
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 395
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_0

    .line 396
    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 399
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    goto :goto_0

    .line 402
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 403
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 405
    :cond_3
    return-void
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1405
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    .line 1406
    return v1

    .line 1408
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1409
    return v2

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1412
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1413
    .local v0, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    .line 1414
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    .line 1415
    return v2

    .line 1417
    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    .line 1418
    return v2

    .line 1420
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v3

    .line 1422
    .local v3, "systemPackageName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1423
    .local v4, "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, v4, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v7, 0x4

    .line 1424
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 1423
    :cond_4
    move v1, v2

    goto :goto_1

    .line 1424
    :cond_5
    :goto_0
    nop

    .line 1423
    :goto_1
    return v1
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1526
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1528
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1529
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1530
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1531
    goto :goto_0

    .line 1533
    :cond_2
    const-string v1, "exceptions"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1534
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_0

    .line 1536
    :cond_3
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1539
    :cond_4
    return-void
.end method

.method private parseDefaultPermissionManifest()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/defaultPermission.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "path":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 353
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 354
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 356
    const/4 v3, 0x0

    .line 357
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 358
    .local v4, "permissionName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 359
    .local v5, "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "true"

    .line 360
    .local v6, "fix":Ljava/lang/String;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 361
    .local v7, "eventType":I
    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 362
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, "tagName":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    .line 364
    const-string/jumbo v9, "package"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 365
    const-string/jumbo v9, "name"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    iget-object v9, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPackgePermissions:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    check-cast v5, Landroid/util/ArrayMap;

    .line 367
    if-nez v5, :cond_3

    .line 368
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v9

    .line 369
    iget-object v9, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPackgePermissions:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 371
    :cond_0
    const-string/jumbo v9, "permission"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 372
    const-string/jumbo v9, "name"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    const-string v9, "fix"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    if-eqz v6, :cond_2

    const-string/jumbo v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 377
    :cond_1
    const-string v9, "false"

    invoke-virtual {v5, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 375
    :cond_2
    :goto_1
    const-string/jumbo v9, "true"

    invoke-virtual {v5, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 382
    .end local v8    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 383
    :cond_4
    return-void
.end method

.method private parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1543
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1545
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1545
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1546
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_7

    .line 1547
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1548
    goto :goto_0

    .line 1550
    :cond_2
    const-string v1, "exception"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1551
    const/4 v1, 0x0

    const-string/jumbo v3, "package"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 1554
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1555
    .local v3, "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    if-nez v3, :cond_5

    .line 1557
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1558
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v4, :cond_3

    .line 1559
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1561
    goto :goto_0

    .line 1565
    :cond_3
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1566
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1569
    goto :goto_0

    .line 1571
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 1572
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_5
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 1576
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    goto :goto_0

    .line 1577
    :cond_6
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exceptions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1580
    :cond_7
    return-void
.end method

.method private parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1584
    .local p2, "outPackageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1586
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1586
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 1587
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1588
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 1589
    goto :goto_0

    .line 1592
    :cond_2
    const-string/jumbo v1, "permission"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1593
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1594
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1595
    const-string v3, "DefaultPermGrantPolicy"

    const-string v4, "Mandatory name attribute missing for permission tag"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1597
    goto :goto_0

    .line 1600
    :cond_3
    const-string v3, "fixed"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1602
    .local v3, "fixed":Z
    new-instance v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v4, v1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;Z)V

    .line 1603
    .local v4, "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "fixed":Z
    .end local v4    # "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    goto :goto_0

    .line 1605
    :cond_4
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exception>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1608
    :cond_5
    return-void
.end method

.method private readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation

    .line 1492
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    .line 1493
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1494
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v2

    .line 1497
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1500
    .local v2, "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 1501
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1502
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1502
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    goto :goto_3

    .line 1506
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1507
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default permissions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    goto :goto_3

    .line 1511
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1510
    .local v5, "str":Ljava/io/InputStream;
    nop

    .line 1513
    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1514
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1515
    invoke-direct {p0, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1516
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1518
    .end local v5    # "str":Ljava/io/InputStream;
    goto :goto_3

    .line 1516
    .restart local v5    # "str":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    goto :goto_1

    .line 1510
    :catch_0
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1516
    :goto_1
    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :goto_2
    throw v7
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v5    # "str":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    .line 1517
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "DefaultPermGrantPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1500
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1521
    :cond_4
    return-object v2
.end method

.method private revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1272
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    return-void

    .line 1275
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1277
    .local v0, "revokablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1279
    .local v2, "permission":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1280
    goto :goto_0

    .line 1283
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, p4}, Landroid/content/pm/PackageManagerInternal;->getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 1287
    .local v9, "flags":I
    and-int/lit8 v3, v9, 0x20

    if-nez v3, :cond_2

    .line 1288
    goto :goto_0

    .line 1291
    :cond_2
    and-int/lit8 v3, v9, 0x4

    if-eqz v3, :cond_3

    .line 1292
    goto :goto_0

    .line 1297
    :cond_3
    and-int/lit8 v3, v9, 0x10

    if-eqz v3, :cond_4

    if-nez p3, :cond_4

    .line 1298
    goto :goto_0

    .line 1300
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p4, v5}, Landroid/content/pm/PackageManagerInternal;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1310
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v6, 0x20

    const/4 v7, 0x0

    move-object v4, v2

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1312
    .end local v2    # "permission":Ljava/lang/String;
    .end local v9    # "flags":I
    goto :goto_0

    .line 1313
    :cond_5
    return-void
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(I)V

    .line 280
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantNubiaDefaultPermissions(I)V

    .line 282
    return-void
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1142
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to active LUI app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    if-nez p1, :cond_0

    .line 1144
    return-void

    .line 1146
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1147
    .local v0, "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1148
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1149
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1151
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1168
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default browser for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    if-nez p1, :cond_0

    .line 1170
    return-void

    .line 1172
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1173
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1174
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1175
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1177
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1026
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default dialer app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    if-nez p1, :cond_0

    .line 1028
    return-void

    .line 1030
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1031
    .local v0, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1032
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1033
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1034
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1035
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1036
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1037
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1039
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1064
    if-nez p1, :cond_0

    .line 1065
    return-void

    .line 1067
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1068
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1069
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V

    .line 1071
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1010
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default sms app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    if-nez p1, :cond_0

    .line 1012
    return-void

    .line 1014
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1015
    .local v0, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1017
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1018
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1019
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1020
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1021
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1023
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1042
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    if-nez p1, :cond_0

    .line 1044
    return-void

    .line 1046
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1047
    .local v0, "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1048
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1049
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1052
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1074
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    if-nez p1, :cond_0

    .line 1076
    return-void

    .line 1078
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1079
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1080
    .local v3, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_1

    .line 1081
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1082
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1083
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1084
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1078
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "carrierPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1087
    :cond_2
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1090
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    if-nez p1, :cond_0

    .line 1092
    return-void

    .line 1094
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1095
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1096
    .local v3, "imsServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_1

    .line 1097
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1098
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1099
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1100
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1101
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1102
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1094
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "imsServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1105
    :cond_2
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1109
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled data services for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    if-nez p1, :cond_0

    .line 1111
    return-void

    .line 1113
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1114
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1115
    .local v3, "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_1

    .line 1116
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1119
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1120
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1113
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1123
    :cond_2
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1127
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    if-nez p1, :cond_0

    .line 1129
    return-void

    .line 1131
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1132
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1133
    .local v3, "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_1

    .line 1134
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1135
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1136
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1131
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1139
    :cond_2
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1154
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    if-nez p1, :cond_0

    .line 1156
    return-void

    .line 1158
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1159
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1160
    .local v3, "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_1

    .line 1161
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1162
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1158
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1165
    :cond_2
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 421
    return-void
.end method

.method public setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 252
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 234
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 258
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 246
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 248
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

.method public setSyncAdapterPackagesProvider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 270
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
