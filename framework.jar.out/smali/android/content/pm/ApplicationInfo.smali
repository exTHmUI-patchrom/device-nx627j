.class public Landroid/content/pm/ApplicationInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ApplicationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ApplicationInfo$DisplayNameComparator;,
        Landroid/content/pm/ApplicationInfo$HiddenApiEnforcementPolicy;,
        Landroid/content/pm/ApplicationInfo$Category;,
        Landroid/content/pm/ApplicationInfo$ApplicationInfoPrivateFlags;
    }
.end annotation


# static fields
.field public static final CATEGORY_AUDIO:I = 0x1

.field public static final CATEGORY_GAME:I = 0x0

.field public static final CATEGORY_IMAGE:I = 0x3

.field public static final CATEGORY_MAPS:I = 0x6

.field public static final CATEGORY_NEWS:I = 0x5

.field public static final CATEGORY_PRODUCTIVITY:I = 0x7

.field public static final CATEGORY_SOCIAL:I = 0x4

.field public static final CATEGORY_UNDEFINED:I = -0x1

.field public static final CATEGORY_VIDEO:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ALLOW_BACKUP:I = 0x8000

.field public static final FLAG_ALLOW_CLEAR_USER_DATA:I = 0x40

.field public static final FLAG_ALLOW_TASK_REPARENTING:I = 0x20

.field public static final FLAG_DEBUGGABLE:I = 0x2

.field public static final FLAG_EXTERNAL_STORAGE:I = 0x40000

.field public static final FLAG_EXTRACT_NATIVE_LIBS:I = 0x10000000

.field public static final FLAG_FACTORY_TEST:I = 0x10

.field public static final FLAG_FULL_BACKUP_ONLY:I = 0x4000000

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x20000000

.field public static final FLAG_HAS_CODE:I = 0x4

.field public static final FLAG_INSTALLED:I = 0x800000

.field public static final FLAG_IS_DATA_ONLY:I = 0x1000000

.field public static final FLAG_IS_GAME:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_KILL_AFTER_RESTORE:I = 0x10000

.field public static final FLAG_LARGE_HEAP:I = 0x100000

.field public static final FLAG_MULTIARCH:I = -0x80000000

.field public static final FLAG_PERSISTENT:I = 0x8

.field public static final FLAG_RESIZEABLE_FOR_SCREENS:I = 0x1000

.field public static final FLAG_RESTORE_ANY_VERSION:I = 0x20000

.field public static final FLAG_STOPPED:I = 0x200000

.field public static final FLAG_SUPPORTS_LARGE_SCREENS:I = 0x800

.field public static final FLAG_SUPPORTS_NORMAL_SCREENS:I = 0x400

.field public static final FLAG_SUPPORTS_RTL:I = 0x400000

.field public static final FLAG_SUPPORTS_SCREEN_DENSITIES:I = 0x2000

.field public static final FLAG_SUPPORTS_SMALL_SCREENS:I = 0x200

.field public static final FLAG_SUPPORTS_XLARGE_SCREENS:I = 0x80000

.field public static final FLAG_SUSPENDED:I = 0x40000000

.field public static final FLAG_SYSTEM:I = 0x1

.field public static final FLAG_TEST_ONLY:I = 0x100

.field public static final FLAG_UPDATED_SYSTEM_APP:I = 0x80

.field public static final FLAG_USES_CLEARTEXT_TRAFFIC:I = 0x8000000

.field public static final FLAG_VM_SAFE_MODE:I = 0x4000

.field public static final HIDDEN_API_ENFORCEMENT_BLACK:I = 0x3

.field public static final HIDDEN_API_ENFORCEMENT_DARK_GREY_AND_BLACK:I = 0x2

.field public static final HIDDEN_API_ENFORCEMENT_DEFAULT:I = -0x1

.field public static final HIDDEN_API_ENFORCEMENT_JUST_WARN:I = 0x1

.field private static final HIDDEN_API_ENFORCEMENT_MAX:I = 0x3

.field public static final HIDDEN_API_ENFORCEMENT_NONE:I = 0x0

.field public static final METADATA_PRELOADED_FONTS:Ljava/lang/String; = "preloaded_fonts"

.field public static final PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE:I = 0x400

.field public static final PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION:I = 0x1000

.field public static final PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE:I = 0x800

.field public static final PRIVATE_FLAG_BACKUP_IN_FOREGROUND:I = 0x2000

.field public static final PRIVATE_FLAG_CANT_SAVE_STATE:I = 0x2

.field public static final PRIVATE_FLAG_DEFAULT_TO_DEVICE_PROTECTED_STORAGE:I = 0x20

.field public static final PRIVATE_FLAG_DIRECT_BOOT_AWARE:I = 0x40

.field public static final PRIVATE_FLAG_FORWARD_LOCK:I = 0x4

.field public static final PRIVATE_FLAG_HAS_DOMAIN_URLS:I = 0x10

.field public static final PRIVATE_FLAG_HIDDEN:I = 0x1

.field public static final PRIVATE_FLAG_INSTANT:I = 0x80

.field public static final PRIVATE_FLAG_ISOLATED_SPLIT_LOADING:I = 0x8000

.field public static final PRIVATE_FLAG_OEM:I = 0x20000

.field public static final PRIVATE_FLAG_PARTIALLY_DIRECT_BOOT_AWARE:I = 0x100

.field public static final PRIVATE_FLAG_PRIVILEGED:I = 0x8

.field public static final PRIVATE_FLAG_PRODUCT:I = 0x80000

.field public static final PRIVATE_FLAG_REQUIRED_FOR_SYSTEM_USER:I = 0x200

.field public static final PRIVATE_FLAG_SIGNED_WITH_PLATFORM_KEY:I = 0x100000

.field public static final PRIVATE_FLAG_STATIC_SHARED_LIBRARY:I = 0x4000

.field public static final PRIVATE_FLAG_VENDOR:I = 0x40000

.field public static final PRIVATE_FLAG_VIRTUAL_PRELOAD:I = 0x10000


# instance fields
.field public appComponentFactory:Ljava/lang/String;

.field public backupAgentName:Ljava/lang/String;

.field public category:I

.field public classLoaderName:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public compatibleWidthLimitDp:I

.field public compileSdkVersion:I

.field public compileSdkVersionCodename:Ljava/lang/String;

.field public credentialProtectedDataDir:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public dataDir:Ljava/lang/String;

.field public descriptionRes:I

.field public deviceProtectedDataDir:Ljava/lang/String;

.field public enabled:Z

.field public enabledSetting:I

.field public flags:I

.field public fullBackupContent:I

.field public hiddenUntilInstalled:Z

.field public installLocation:I

.field public isOnDelete:Z

.field public largestWidthLimitDp:I

.field public longVersionCode:J

.field private mHiddenApiPolicy:I

.field public manageSpaceActivityName:Ljava/lang/String;

.field public maxAspectRatio:F

.field public minSdkVersion:I

.field public nativeLibraryDir:Ljava/lang/String;

.field public nativeLibraryRootDir:Ljava/lang/String;

.field public nativeLibraryRootRequiresIsa:Z

.field public networkSecurityConfigRes:I

.field public overrideDensity:I

.field public overrideRes:I

.field public permission:Ljava/lang/String;

.field public primaryCpuAbi:Ljava/lang/String;

.field public privateFlags:I

.field public processName:Ljava/lang/String;

.field public publicSourceDir:Ljava/lang/String;

.field public requiresSmallestWidthDp:I

.field public resourceDirs:[Ljava/lang/String;

.field public scanPublicSourceDir:Ljava/lang/String;

.field public scanSourceDir:Ljava/lang/String;

.field public seInfo:Ljava/lang/String;

.field public seInfoUser:Ljava/lang/String;

.field public secondaryCpuAbi:Ljava/lang/String;

.field public secondaryNativeLibraryDir:Ljava/lang/String;

.field public sharedLibraryFiles:[Ljava/lang/String;

.field public sourceDir:Ljava/lang/String;

.field public splitClassLoaderNames:[Ljava/lang/String;

.field public splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public splitNames:[Ljava/lang/String;

.field public splitPublicSourceDirs:[Ljava/lang/String;

.field public splitSourceDirs:[Ljava/lang/String;

.field public storageUuid:Ljava/util/UUID;

.field public targetSandboxVersion:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public targetSdkVersion:I

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public uid:I

.field public versionCode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public volumeUuid:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1570
    new-instance v0, Landroid/content/pm/ApplicationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1429
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 139
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 145
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->isOnDelete:Z

    .line 451
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 673
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->overrideRes:I

    .line 679
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    .line 687
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 695
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 703
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 977
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 983
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 989
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1022
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1200
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 1430
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/ApplicationInfo;

    .line 1433
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 139
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 145
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->isOnDelete:Z

    .line 451
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 673
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->overrideRes:I

    .line 679
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    .line 687
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 695
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 703
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 977
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 983
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 989
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1022
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1200
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 1434
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 1435
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 1436
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1437
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1438
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1439
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1440
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1441
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->overrideRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->overrideRes:I

    .line 1442
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    .line 1443
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 1444
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 1445
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1446
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 1447
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 1448
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 1449
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 1450
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1451
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1452
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1453
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 1454
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 1455
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1456
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 1457
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 1458
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 1459
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 1460
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1461
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1462
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 1463
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 1464
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 1465
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 1466
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1467
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1468
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1469
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1470
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1471
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1472
    iget-wide v0, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1473
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1474
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 1475
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1476
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 1477
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 1478
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 1479
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1480
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 1481
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 1482
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->category:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1483
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 1484
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 1485
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1486
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 1487
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 1488
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 1489
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 1490
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 1491
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1582
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 139
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 145
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->isOnDelete:Z

    .line 451
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 673
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->overrideRes:I

    .line 679
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    .line 687
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 695
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 703
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 977
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 983
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 989
    const/4 v2, -0x1

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1022
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1200
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 1583
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 1584
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 1585
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1586
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1589
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->overrideRes:I

    .line 1591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    .line 1592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 1593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 1594
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1596
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 1597
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-static {v2}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 1599
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 1600
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 1601
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1602
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1603
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1604
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 1605
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 1606
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1607
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 1608
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 1609
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 1610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 1611
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1612
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1613
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 1614
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 1615
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 1616
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 1617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1619
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1623
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 1626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 1628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 1630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 1631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 1632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 1633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 1635
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 1636
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 1638
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 1639
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 1640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 1641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    nop

    :cond_3
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 1642
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/ApplicationInfo$1;

    .line 58
    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getCategoryTitle(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I

    .line 1117
    packed-switch p1, :pswitch_data_0

    .line 1135
    const/4 v0, 0x0

    return-object v0

    .line 1133
    :pswitch_0
    const v0, 0x1040082

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1131
    :pswitch_1
    const v0, 0x1040080

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1129
    :pswitch_2
    const v0, 0x1040081

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1127
    :pswitch_3
    const v0, 0x1040083

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1125
    :pswitch_4
    const v0, 0x104007f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1123
    :pswitch_5
    const v0, 0x1040084

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1121
    :pswitch_6
    const v0, 0x104007d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1119
    :pswitch_7
    const v0, 0x104007e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAllowedToUseHiddenApis()Z
    .locals 1

    .line 1717
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1718
    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;->isPackageWhitelistedForHiddenApis()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1717
    :goto_1
    return v0
.end method

.method private isPackageUnavailable(Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 1796
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    .line 1797
    :catch_0
    move-exception v1

    .line 1798
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isPackageWhitelistedForHiddenApis()Z
    .locals 2

    .line 1713
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getHiddenApiWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValidHiddenApiEnforcementPolicy(I)Z
    .locals 1
    .param p0, "policy"    # I

    .line 1197
    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public canOverrideRes()I
    .locals 1

    .line 1941
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->overrideRes:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 1500
    const/4 v0, 0x0

    return v0
.end method

.method public disableCompatibilityMode()V
    .locals 2

    .line 1671
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x83e00

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1674
    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1203
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 1204
    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpFlags"    # I

    .line 1208
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1209
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1212
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1215
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1216
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "taskAffinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1219
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " privateFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1220
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " theme=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1221
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1219
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1222
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_3

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requiresSmallestWidthDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " compatibleWidthLimitDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " largestWidthLimitDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1227
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sourceDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "publicSourceDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1231
    :cond_4
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "splitSourceDirs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1234
    :cond_5
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 1235
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "splitPublicSourceDirs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1238
    :cond_6
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resourceDirs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1241
    :cond_7
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "seinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "seinfoUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1245
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1246
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_9

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceProtectedDataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "credentialProtectedDataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1249
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sharedLibraryFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1253
    :cond_9
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "classLoaderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1256
    :cond_a
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "splitClassLoaderNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1260
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " minSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " targetSandboxVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1265
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_14

    .line 1266
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "manageSpaceActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1269
    :cond_c
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v0, :cond_d

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "description=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1272
    :cond_d
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    if-eqz v0, :cond_e

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uiOptions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1275
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "supportsRtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_f
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1276
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-lez v0, :cond_10

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fullBackupContent=@xml/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1279
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fullBackupContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-gez v1, :cond_11

    const-string v1, "false"

    goto :goto_1

    :cond_11
    const-string/jumbo v1, "true"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1279
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1282
    :goto_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    if-eqz v0, :cond_12

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "networkSecurityConfigRes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 1284
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1283
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1286
    :cond_12
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1289
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HiddenApiEnforcementPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1291
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1292
    return-void
.end method

.method protected getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 1919
    return-object p0
.end method

.method public getBaseCodePath()Ljava/lang/String;
    .locals 1

    .line 1936
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseResourcePath()Ljava/lang/String;
    .locals 1

    .line 1939
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 1

    .line 1935
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getHiddenApiEnforcementPolicy()I
    .locals 2

    .line 1725
    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;->isAllowedToUseHiddenApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    const/4 v0, 0x0

    return v0

    .line 1728
    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1729
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    return v0

    .line 1731
    :cond_1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    .line 1732
    const/4 v0, 0x3

    return v0

    .line 1734
    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public getOverrideDensity()I
    .locals 1

    .line 1924
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    return v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .line 1938
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitCodePaths()[Ljava/lang/String;
    .locals 1

    .line 1937
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSplitResourcePaths()[Ljava/lang/String;
    .locals 1

    .line 1940
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public hasCode()Z
    .locals 1

    .line 1403
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRtlSupport()Z
    .locals 2

    .line 1398
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1690
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1692
    const-string v0, "android"

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1694
    return-void

    .line 1697
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1698
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1699
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1700
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1701
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1702
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1704
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 1706
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_0

    .line 1708
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1710
    :goto_0
    return-void
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .locals 1

    .line 1804
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectBootAware()Z
    .locals 1

    .line 1810
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncryptionAware()Z
    .locals 1

    .line 1815
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isDirectBootAware()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPartiallyDirectBootAware()Z

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

.method public isExternal()Z
    .locals 2

    .line 1820
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExternalAsec()Z
    .locals 1

    .line 1825
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForwardLocked()Z
    .locals 1

    .line 1830
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstantApp()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1839
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInternal()Z
    .locals 2

    .line 1844
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOem()Z
    .locals 2

    .line 1849
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPartiallyDirectBootAware()Z
    .locals 1

    .line 1854
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivilegedApp()Z
    .locals 1

    .line 1865
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProduct()Z
    .locals 2

    .line 1896
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequiredForSystemUser()Z
    .locals 1

    .line 1870
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSignedWithPlatformKey()Z
    .locals 2

    .line 1859
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStaticSharedLibrary()Z
    .locals 1

    .line 1875
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemApp()Z
    .locals 2

    .line 1881
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUpdatedSystemApp()Z
    .locals 1

    .line 1886
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVendor()Z
    .locals 2

    .line 1891
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVirtualPreload()Z
    .locals 2

    .line 1903
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 1786
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1787
    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;->isPackageUnavailable(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108080b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1791
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 1656
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1658
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1659
    return-object v0

    .line 1662
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public maybeUpdateHiddenApiEnforcementPolicy(II)V
    .locals 2
    .param p1, "policyPreP"    # I
    .param p2, "policyP"    # I

    .line 1762
    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;->isPackageWhitelistedForHiddenApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    return-void

    .line 1765
    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 1766
    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->setHiddenApiEnforcementPolicy(I)V

    goto :goto_0

    .line 1767
    :cond_1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_2

    .line 1768
    invoke-virtual {p0, p2}, Landroid/content/pm/ApplicationInfo;->setHiddenApiEnforcementPolicy(I)V

    .line 1771
    :cond_2
    :goto_0
    return-void
.end method

.method public requestsIsolatedSplitLoading()Z
    .locals 2

    .line 1912
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBaseCodePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 1928
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-void
.end method

.method public setBaseResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseResourcePath"    # Ljava/lang/String;

    .line 1931
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-void
.end method

.method public setCodePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "codePath"    # Ljava/lang/String;

    .line 1927
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    return-void
.end method

.method public setHiddenApiEnforcementPolicy(I)V
    .locals 3
    .param p1, "policy"    # I

    .line 1742
    invoke-static {p1}, Landroid/content/pm/ApplicationInfo;->isValidHiddenApiEnforcementPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 1746
    return-void

    .line 1743
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid API enforcement policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOverrideRes(I)V
    .locals 0
    .param p1, "overrideResolution"    # I

    .line 1933
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->overrideRes:I

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .line 1930
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    return-void
.end method

.method public setSplitCodePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "splitCodePaths"    # [Ljava/lang/String;

    .line 1929
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    return-void
.end method

.method public setSplitResourcePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "splitResourcePaths"    # [Ljava/lang/String;

    .line 1932
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(J)V
    .locals 1
    .param p1, "newVersionCode"    # J

    .line 1777
    iput-wide p1, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 1778
    long-to-int v0, p1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 1779
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1494
    return-object v0
.end method

.method public usesCompatibilityMode()Z
    .locals 2

    .line 1682
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x83e00

    and-int/2addr v0, v1

    if-nez v0, :cond_0

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 1505
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1506
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1508
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1510
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1511
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1512
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->overrideRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1515
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 1519
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1521
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 1523
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    :goto_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1528
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1532
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 1533
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1534
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1536
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1538
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1539
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1541
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1542
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1544
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1545
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1546
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1547
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1549
    iget-wide v0, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1550
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1553
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1555
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1557
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1563
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1564
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1566
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1568
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 18
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1296
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1297
    .local v2, "token":J
    const-wide v4, 0x10b00000001L

    invoke-super {v0, v1, v4, v5}, Landroid/content/pm/PackageItemInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1298
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    const-wide v5, 0x10900000002L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1299
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-wide v7, 0x10900000003L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1300
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v7, 0x10500000004L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1301
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const-wide v9, 0x10500000005L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1302
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const-wide v11, 0x10500000006L

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1303
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    const-wide v11, 0x10500000007L

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1304
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-wide v11, 0x10900000008L

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1305
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v4, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-wide v13, 0x10900000009L

    if-nez v4, :cond_0

    .line 1306
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1308
    :cond_0
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    const-wide v13, 0x2090000000aL

    const/16 v16, 0x0

    if-nez v4, :cond_1

    .line 1309
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v15, v4

    move/from16 v11, v16

    :goto_0
    if-ge v11, v15, :cond_1

    aget-object v12, v4, v11

    .line 1310
    .local v12, "dir":Ljava/lang/String;
    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1309
    .end local v12    # "dir":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1313
    :cond_1
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 1314
    invoke-static {v4, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1315
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    array-length v11, v4

    move/from16 v12, v16

    :goto_1
    if-ge v12, v11, :cond_2

    aget-object v15, v4, v12

    .line 1316
    .local v15, "dir":Ljava/lang/String;
    const-wide v13, 0x2090000000bL

    invoke-virtual {v1, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1315
    .end local v15    # "dir":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    const-wide v13, 0x2090000000aL

    goto :goto_1

    .line 1319
    :cond_2
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1320
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    array-length v11, v4

    move/from16 v12, v16

    :goto_2
    if-ge v12, v11, :cond_3

    aget-object v13, v4, v12

    .line 1321
    .local v13, "dir":Ljava/lang/String;
    const-wide v14, 0x2090000000cL

    invoke-virtual {v1, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1320
    .end local v13    # "dir":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1324
    :cond_3
    const-wide v11, 0x1090000000dL

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1325
    const-wide v11, 0x1090000000eL

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1326
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1327
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    array-length v11, v4

    move/from16 v12, v16

    :goto_3
    if-ge v12, v11, :cond_4

    aget-object v13, v4, v12

    .line 1328
    .local v13, "name":Ljava/lang/String;
    const-wide v14, 0x2090000000fL

    invoke-virtual {v1, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1327
    .end local v13    # "name":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1332
    :cond_4
    const-wide v11, 0x10b00000010L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1333
    .local v11, "versionToken":J
    const-wide v13, 0x10800000001L

    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1334
    const-wide v13, 0x10500000002L

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1335
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-wide v13, 0x10500000003L

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1336
    iget-wide v13, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1337
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1338
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1340
    and-int/lit8 v13, p4, 0x1

    if-eqz v13, :cond_f

    .line 1341
    const-wide v13, 0x10b00000011L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1342
    .local v13, "detailToken":J
    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v15, :cond_5

    .line 1343
    const-wide v9, 0x10900000001L

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v1, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1345
    :cond_5
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1346
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1348
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1350
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const-wide v6, 0x10500000005L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1352
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 1353
    const-wide v5, 0x10900000006L

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1354
    const-wide v5, 0x10900000007L

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1356
    :cond_6
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const-wide v6, 0x10900000008L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1358
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    const-wide v6, 0x10900000009L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1360
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 1361
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v6, v5

    move/from16 v7, v16

    :goto_4
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 1362
    .local v8, "f":Ljava/lang/String;
    const-wide v9, 0x2090000000aL

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1361
    .end local v8    # "f":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1365
    :cond_7
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 1366
    const-wide v5, 0x1090000000bL

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1369
    :cond_8
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v5, :cond_9

    .line 1370
    const-wide v5, 0x1050000000cL

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1372
    :cond_9
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    if-eqz v5, :cond_a

    .line 1373
    const-wide v5, 0x1050000000dL

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1375
    :cond_a
    const-wide v5, 0x1080000000eL

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1376
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-lez v5, :cond_b

    .line 1377
    const-wide v5, 0x1090000000fL

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@xml/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_7

    .line 1379
    :cond_b
    const-wide v5, 0x10800000010L

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v7, :cond_c

    const/16 v16, 0x1

    :goto_5
    move/from16 v7, v16

    goto :goto_6

    :cond_c
    goto :goto_5

    :goto_6
    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1381
    :goto_7
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    if-eqz v5, :cond_d

    .line 1382
    const-wide v5, 0x10500000011L

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1385
    :cond_d
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_e

    .line 1386
    const-wide v5, 0x10500000012L

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1388
    :cond_e
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1390
    .end local v13    # "detailToken":J
    :cond_f
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1391
    return-void
.end method
