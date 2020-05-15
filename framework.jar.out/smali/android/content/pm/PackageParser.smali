.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$SigningDetails;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$ParseFlags;,
        Landroid/content/pm/PackageParser$CallbackImpl;,
        Landroid/content/pm/PackageParser$Callback;,
        Landroid/content/pm/PackageParser$CachedComponentArgs;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$SplitPermissionInfo;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;
    }
.end annotation


# static fields
.field public static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final APK_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field private static final CHILD_PACKAGE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field private static final LOG_PARSE_TIMINGS:Z

.field private static final LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field private static final LOG_UNSAFE_BROADCASTS:Z = false

.field private static final METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field private static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field private static final MULTI_PACKAGE_APK_ENABLED:Z

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = -0x80000000

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x20

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field private static final PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final PARSE_ENFORCE_CODE:I = 0x40

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final PARSE_FORCE_SDK:I = 0x80

.field public static final PARSE_FORWARD_LOCK:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final PARSE_MUST_BE_APK:I = 0x1

.field private static final PROPERTY_CHILD_PACKAGES_ENABLED:Ljava/lang/String; = "persist.sys.child_packages_enabled"

.field private static final RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field private static final RIGID_PARSER:Z = false

.field private static final SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SDK_CODENAMES:[Ljava/lang/String;

.field private static final SDK_VERSION:I

.field public static final SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static final TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field private static final TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field private static final TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field private static final TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field private static final TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field private static final TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field private static final TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field private static final TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field private static final TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field private static final TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field private static final TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field private static final TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field private static final TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field private static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field private static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field private static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field private static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static final TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field public static final sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sCompatibilityModeEnabled:Z

.field private static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;

.field private mCallback:Landroid/content/pm/PackageParser$Callback;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 156
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    .line 162
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.child_packages_enabled"

    .line 163
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    .line 214
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    .line 216
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "application"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-m"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-23"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-configuration"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-feature"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "feature-group"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-sdk"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "instrumentation"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-gl-texture"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "compatible-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-input"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "eat-comment"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 240
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    .line 242
    sget-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    const/4 v0, 0x2

    new-array v3, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v4, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-direct {v4, v5, v6, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v4, v3, v1

    sput-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 296
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    new-instance v4, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2711

    invoke-direct {v4, v5, v6, v7}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v4, v3, v2

    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v4, "android.permission.READ_CONTACTS"

    const-string v5, "android.permission.READ_CALL_LOG"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-direct {v2, v4, v5, v6}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v2, v3, v1

    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v4, "android.permission.WRITE_CONTACTS"

    const-string v5, "android.permission.WRITE_CALL_LOG"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v6}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v2, v3, v0

    sput-object v3, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 326
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 330
    sput-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 861
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$1;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 548
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 549
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 550
    return-void
.end method

.method static synthetic access$400(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "x1"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/content/res/TypedArray;
    .param p5, "x5"    # Z
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # I
    .param p10, "x10"    # I
    .param p11, "x11"    # I

    .line 152
    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/String;
    .param p5, "x5"    # [Ljava/lang/String;

    .line 152
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 2571
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 2572
    .local v1, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 2573
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2574
    .end local v1    # "a":Landroid/content/pm/PackageParser$Activity;
    goto :goto_0

    .line 2575
    :cond_0
    return-void
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    .line 2896
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2900
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2901
    .local v1, "cls":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2902
    .local v0, "c":C
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_1

    .line 2903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2905
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    .line 2906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2907
    .local v3, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2908
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2909
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2911
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_2
    return-object v1

    .line 2897
    .end local v0    # "c":C
    .end local v1    # "cls":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty class name in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 2898
    const/4 v0, 0x0

    return-object v0
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "procSeq"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2916
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2917
    .local v0, "proc":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2918
    .local v2, "c":C
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    const/16 v5, 0x3a

    if-ne v2, v5, :cond_2

    .line 2919
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 2920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": must be at least two characters"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2922
    return-object v4

    .line 2924
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2925
    .local v3, "subName":Ljava/lang/String;
    invoke-static {v3, v1, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 2926
    .local v5, "nameError":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 2927
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p3, v1

    .line 2929
    return-object v4

    .line 2931
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2933
    .end local v3    # "subName":Ljava/lang/String;
    .end local v5    # "nameError":Ljava/lang/String;
    :cond_2
    invoke-static {v0, v3, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 2934
    .local v3, "nameError":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string/jumbo v5, "system"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2935
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v1

    .line 2937
    return-object v4

    .line 2939
    :cond_3
    return-object v0
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .line 2945
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2946
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    .line 2948
    :cond_1
    if-eqz p4, :cond_4

    .line 2949
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    .line 2949
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 2950
    aget-object v1, p4, v0

    .line 2951
    .local v1, "sp":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 2949
    .end local v1    # "sp":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2952
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object p0

    .line 2956
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_5

    goto :goto_3

    .line 2959
    :cond_5
    const-string/jumbo v0, "process"

    invoke-static {p0, p2, v0, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2957
    :cond_6
    :goto_3
    return-object p1
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2964
    if-nez p2, :cond_0

    .line 2965
    return-object p1

    .line 2967
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2968
    const/4 v0, 0x0

    return-object v0

    .line 2970
    :cond_1
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V
    .locals 7
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "parsed"    # Landroid/content/pm/PackageParser$Package;

    .line 1183
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1184
    return-void

    .line 1188
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "cacheKey":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1191
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1192
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1193
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete cache file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_1
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageParser;->toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 1199
    .local v2, "cacheEntry":[B
    if-nez v2, :cond_2

    .line 1200
    return-void

    .line 1203
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 1204
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1205
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1208
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1205
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    goto :goto_0

    .line 1203
    :catch_0
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1205
    :goto_0
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_6
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 1206
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_7
    const-string v4, "PackageParser"

    const-string v5, "Error writing cache entry."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1207
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 1211
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v1    # "cacheFile":Ljava/io/File;
    .end local v2    # "cacheEntry":[B
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_2
    goto :goto_3

    .line 1209
    :catch_3
    move-exception v0

    .line 1210
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PackageParser"

    const-string v2, "Error saving package cache."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1212
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method private checkOverlayRequiredSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .line 2547
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2560
    :cond_0
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2561
    .local v0, "currValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 2548
    .end local v0    # "currValue":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 2556
    :cond_3
    return v2

    .line 2550
    :cond_4
    :goto_1
    const-string v0, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling overlay - incomplete property :\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue to be specified."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    return v1
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "state"    # Landroid/content/pm/PackageUserState;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 647
    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v1, p2, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v1, :cond_0

    .line 650
    return v2

    .line 655
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    .line 656
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x402000

    and-int/2addr v1, p0

    if-nez v1, :cond_2

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 655
    :goto_1
    return v2
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    .locals 7
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1518
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1520
    .local v0, "apkPath":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1521
    .local v1, "minSignatureScheme":I
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isStaticSharedLibrary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1523
    const/4 v1, 0x2

    .line 1526
    :cond_0
    if-eqz p2, :cond_1

    .line 1528
    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->plsCertsNoVerifyOnlyCerts(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    .local v2, "verified":Landroid/content/pm/PackageParser$SigningDetails;
    goto :goto_0

    .line 1531
    .end local v2    # "verified":Landroid/content/pm/PackageParser$SigningDetails;
    :cond_1
    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    .line 1537
    .restart local v2    # "verified":Landroid/content/pm/PackageParser$SigningDetails;
    :goto_0
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v4, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v3, v4, :cond_2

    .line 1538
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_1

    .line 1540
    :cond_2
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v4, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1546
    :goto_1
    return-void

    .line 1541
    :cond_3
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x68

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has mismatched certificates"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1490
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V

    .line 1491
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1492
    .local v0, "childCount":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1493
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1494
    .local v2, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1492
    .end local v2    # "childPkg":Landroid/content/pm/PackageParser$Package;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1496
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 5
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1500
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1502
    const-string v0, "collectCertificates"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1504
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V

    .line 1506
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1508
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1512
    .end local v0    # "i":I
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1513
    nop

    .line 1514
    return-void

    .line 1512
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "minVers"    # I
    .param p1, "minCode"    # Ljava/lang/String;
    .param p2, "platformSdkVersion"    # I
    .param p3, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p4, "outError"    # [Ljava/lang/String;

    .line 2679
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2680
    if-gt p0, p2, :cond_0

    .line 2681
    return p0

    .line 2685
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires newer sdk version #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (current version is #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    .line 2687
    return v0

    .line 2692
    :cond_1
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2693
    const/16 v0, 0x2710

    return v0

    .line 2697
    :cond_2
    array-length v2, p3

    if-lez v2, :cond_3

    .line 2698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires development platform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (current platform is any of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    goto :goto_0

    .line 2702
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires development platform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but this is a release platform."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    .line 2705
    :goto_0
    return v0
.end method

.method public static computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 3
    .param p0, "targetVers"    # I
    .param p1, "targetCode"    # Ljava/lang/String;
    .param p2, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;
    .param p4, "forceCurrentDev"    # Z

    .line 2614
    if-nez p1, :cond_0

    .line 2615
    return p0

    .line 2620
    :cond_0
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_1

    goto :goto_1

    .line 2625
    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires development platform "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (current platform is any of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_0

    .line 2630
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires development platform "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this is a release platform."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    .line 2633
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 2621
    :cond_3
    :goto_1
    const/16 v0, 0x2710

    return v0
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 5
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 7399
    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 7402
    return v0

    .line 7404
    :cond_0
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7405
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 7406
    .local v1, "enabled":Z
    :goto_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v3, v1, :cond_2

    .line 7407
    return v0

    .line 7410
    .end local v1    # "enabled":Z
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 7411
    .local v1, "suspended":Z
    :goto_1
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v3, v1, :cond_4

    .line 7412
    return v0

    .line 7414
    :cond_4
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v3, :cond_5

    goto :goto_2

    .line 7417
    :cond_5
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v3, :cond_6

    .line 7418
    return v0

    .line 7420
    :cond_6
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4

    if-eq v3, v4, :cond_7

    .line 7421
    return v0

    .line 7423
    :cond_7
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_9

    if-nez p3, :cond_8

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v3, :cond_9

    .line 7425
    :cond_8
    return v0

    .line 7427
    :cond_9
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_a

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 7429
    return v0

    .line 7431
    :cond_a
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 7432
    return v0

    .line 7434
    :cond_b
    return v2

    .line 7415
    :cond_c
    :goto_2
    return v0
.end method

.method public static fromCacheEntryStatic([B)Landroid/content/pm/PackageParser$Package;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1069
    .local v0, "p":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1070
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1072
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;-><init>(Landroid/os/Parcel;)V

    .line 1073
    .local v1, "helper":Landroid/content/pm/PackageParserCacheHelper$ReadHelper;
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->startAndInstall()V

    .line 1075
    new-instance v2, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Landroid/os/Parcel;)V

    .line 1077
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    sget-object v3, Landroid/content/pm/PackageParser;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1081
    return-object v2
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7674
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7675
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7676
    return-object v0

    .line 7680
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object p0, v0

    .line 7681
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7682
    return-object p0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7657
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7658
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7659
    return-object v0

    .line 7661
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7662
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7663
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 7666
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 7667
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 7668
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7669
    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7532
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7533
    :cond_0
    invoke-static {p1, p2, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7534
    return-object v0

    .line 7538
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    move-object p0, v0

    .line 7539
    invoke-virtual {p0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 7540
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v0, :cond_2

    .line 7541
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 7543
    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7545
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7546
    return-object p0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .line 7439
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7494
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7495
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 7498
    :cond_1
    invoke-static {p1, p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 7508
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7509
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 7513
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 7514
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 7515
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_4

    .line 7516
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 7518
    :cond_4
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_5

    .line 7519
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 7521
    :cond_5
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_6

    .line 7522
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 7524
    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7526
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7527
    return-object v0

    .line 7496
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7
    :goto_1
    return-object v0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .param p0, "i"    # Landroid/content/pm/PackageParser$Instrumentation;
    .param p1, "flags"    # I

    .line 7922
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7923
    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    .line 7924
    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object v0

    .line 7926
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 7927
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 7928
    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 10
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 635
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 636
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 635
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 22
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    .line 668
    move/from16 v4, p9

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v3, v5}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_d

    .line 671
    :cond_0
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 672
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 673
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 674
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 675
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 676
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 677
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 678
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 679
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 680
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 681
    invoke-static {v0, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 682
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 683
    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->isStub:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 684
    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 685
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-nez v7, :cond_1

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_2

    .line 687
    :cond_1
    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 689
    :cond_2
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 690
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 691
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 692
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 693
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 694
    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 695
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 696
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 697
    move-wide/from16 v9, p3

    iput-wide v9, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 698
    move-wide/from16 v11, p5

    iput-wide v11, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 699
    and-int/lit16 v7, v1, 0x100

    if-eqz v7, :cond_3

    .line 700
    move-object/from16 v7, p1

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->gids:[I

    goto :goto_0

    .line 702
    :cond_3
    move-object/from16 v7, p1

    :goto_0
    and-int/lit16 v13, v1, 0x4000

    if-eqz v13, :cond_9

    .line 703
    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    .line 704
    .local v13, "N":I
    :goto_1
    if-lez v13, :cond_5

    .line 705
    new-array v15, v13, [Landroid/content/pm/ConfigurationInfo;

    iput-object v15, v5, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 706
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 708
    :cond_5
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 709
    .end local v13    # "N":I
    .local v6, "N":I
    :goto_2
    if-lez v6, :cond_7

    .line 710
    new-array v13, v6, [Landroid/content/pm/FeatureInfo;

    iput-object v13, v5, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 711
    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 713
    :cond_7
    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    if-eqz v13, :cond_8

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    :goto_3
    move v6, v13

    .line 714
    if-lez v6, :cond_9

    .line 715
    new-array v13, v6, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v13, v5, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 716
    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 719
    .end local v6    # "N":I
    :cond_9
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_c

    .line 720
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 721
    .restart local v6    # "N":I
    if-lez v6, :cond_c

    .line 722
    const/4 v13, 0x0

    .line 723
    .local v13, "num":I
    new-array v15, v6, [Landroid/content/pm/ActivityInfo;

    .line 724
    .local v15, "res":[Landroid/content/pm/ActivityInfo;
    move v14, v13

    const/4 v13, 0x0

    .local v13, "i":I
    .local v14, "num":I
    :goto_4
    if-ge v13, v6, :cond_b

    .line 725
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Activity;

    .line 726
    .local v8, "a":Landroid/content/pm/PackageParser$Activity;
    move/from16 v17, v6

    iget-object v6, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .end local v6    # "N":I
    .local v17, "N":I
    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 727
    add-int/lit8 v6, v14, 0x1

    .local v6, "num":I
    invoke-static {v8, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    aput-object v18, v15, v14

    .line 724
    .end local v8    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v14    # "num":I
    move v14, v6

    .end local v6    # "num":I
    .restart local v14    # "num":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v17

    const/4 v8, 0x1

    goto :goto_4

    .line 730
    .end local v13    # "i":I
    .end local v17    # "N":I
    .local v6, "N":I
    :cond_b
    move/from16 v17, v6

    .end local v6    # "N":I
    .restart local v17    # "N":I
    invoke-static {v15, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ActivityInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 733
    .end local v14    # "num":I
    .end local v15    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v17    # "N":I
    :cond_c
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_f

    .line 734
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 735
    .restart local v6    # "N":I
    if-lez v6, :cond_f

    .line 736
    const/4 v8, 0x0

    .line 737
    .local v8, "num":I
    new-array v13, v6, [Landroid/content/pm/ActivityInfo;

    .line 738
    .local v13, "res":[Landroid/content/pm/ActivityInfo;
    move v14, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .restart local v14    # "num":I
    :goto_5
    if-ge v8, v6, :cond_e

    .line 739
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Activity;

    .line 740
    .local v15, "a":Landroid/content/pm/PackageParser$Activity;
    move/from16 v19, v6

    iget-object v6, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .end local v6    # "N":I
    .local v19, "N":I
    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 741
    add-int/lit8 v6, v14, 0x1

    .local v6, "num":I
    invoke-static {v15, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    aput-object v17, v13, v14

    .line 738
    .end local v14    # "num":I
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    move v14, v6

    .end local v6    # "num":I
    .restart local v14    # "num":I
    :cond_d
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v19

    goto :goto_5

    .line 744
    .end local v8    # "i":I
    .end local v19    # "N":I
    .local v6, "N":I
    :cond_e
    move/from16 v19, v6

    .end local v6    # "N":I
    .restart local v19    # "N":I
    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ActivityInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 747
    .end local v13    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v14    # "num":I
    .end local v19    # "N":I
    :cond_f
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_12

    .line 748
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 749
    .restart local v6    # "N":I
    if-lez v6, :cond_12

    .line 750
    const/4 v8, 0x0

    .line 751
    .local v8, "num":I
    new-array v13, v6, [Landroid/content/pm/ServiceInfo;

    .line 752
    .local v13, "res":[Landroid/content/pm/ServiceInfo;
    move v14, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .restart local v14    # "num":I
    :goto_6
    if-ge v8, v6, :cond_11

    .line 753
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Service;

    .line 754
    .local v15, "s":Landroid/content/pm/PackageParser$Service;
    move/from16 v20, v6

    iget-object v6, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .end local v6    # "N":I
    .local v20, "N":I
    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 755
    add-int/lit8 v6, v14, 0x1

    .local v6, "num":I
    invoke-static {v15, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    aput-object v17, v13, v14

    .line 752
    .end local v14    # "num":I
    .end local v15    # "s":Landroid/content/pm/PackageParser$Service;
    move v14, v6

    .end local v6    # "num":I
    .restart local v14    # "num":I
    :cond_10
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v20

    goto :goto_6

    .line 758
    .end local v8    # "i":I
    .end local v20    # "N":I
    .local v6, "N":I
    :cond_11
    move/from16 v20, v6

    .end local v6    # "N":I
    .restart local v20    # "N":I
    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ServiceInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 761
    .end local v13    # "res":[Landroid/content/pm/ServiceInfo;
    .end local v14    # "num":I
    .end local v20    # "N":I
    :cond_12
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_15

    .line 762
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 763
    .restart local v6    # "N":I
    if-lez v6, :cond_15

    .line 764
    const/4 v8, 0x0

    .line 765
    .local v8, "num":I
    new-array v13, v6, [Landroid/content/pm/ProviderInfo;

    .line 766
    .local v13, "res":[Landroid/content/pm/ProviderInfo;
    move v14, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .restart local v14    # "num":I
    :goto_7
    if-ge v8, v6, :cond_14

    .line 767
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Provider;

    .line 768
    .local v15, "pr":Landroid/content/pm/PackageParser$Provider;
    move/from16 v21, v6

    iget-object v6, v15, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .end local v6    # "N":I
    .local v21, "N":I
    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 769
    add-int/lit8 v6, v14, 0x1

    .local v6, "num":I
    invoke-static {v15, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v17

    aput-object v17, v13, v14

    .line 766
    .end local v14    # "num":I
    .end local v15    # "pr":Landroid/content/pm/PackageParser$Provider;
    move v14, v6

    .end local v6    # "num":I
    .restart local v14    # "num":I
    :cond_13
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v21

    goto :goto_7

    .line 772
    .end local v8    # "i":I
    .end local v21    # "N":I
    .local v6, "N":I
    :cond_14
    move/from16 v21, v6

    .end local v6    # "N":I
    .restart local v21    # "N":I
    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ProviderInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 775
    .end local v13    # "res":[Landroid/content/pm/ProviderInfo;
    .end local v14    # "num":I
    .end local v21    # "N":I
    :cond_15
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_16

    .line 776
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 777
    .restart local v6    # "N":I
    if-lez v6, :cond_16

    .line 778
    new-array v8, v6, [Landroid/content/pm/InstrumentationInfo;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 779
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_8
    if-ge v8, v6, :cond_16

    .line 780
    iget-object v13, v5, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 781
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Instrumentation;

    .line 780
    invoke-static {v14, v1}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v14

    aput-object v14, v13, v8

    .line 779
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 785
    .end local v6    # "N":I
    .end local v8    # "i":I
    :cond_16
    and-int/lit16 v6, v1, 0x1000

    if-eqz v6, :cond_19

    .line 786
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 787
    .restart local v6    # "N":I
    if-lez v6, :cond_17

    .line 788
    new-array v8, v6, [Landroid/content/pm/PermissionInfo;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 789
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    if-ge v8, v6, :cond_17

    .line 790
    iget-object v13, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Permission;

    invoke-static {v14, v1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v14

    aput-object v14, v13, v8

    .line 789
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 793
    .end local v8    # "i":I
    :cond_17
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 794
    if-lez v6, :cond_19

    .line 795
    new-array v8, v6, [Ljava/lang/String;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 796
    new-array v8, v6, [I

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 797
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_a
    if-ge v8, v6, :cond_19

    .line 798
    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 799
    .local v13, "perm":Ljava/lang/String;
    iget-object v14, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object v13, v14, v8

    .line 801
    iget-object v14, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v8

    const/16 v16, 0x1

    or-int/lit8 v15, v15, 0x1

    aput v15, v14, v8

    .line 802
    if-eqz v2, :cond_18

    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 803
    iget-object v14, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v8

    or-int/lit8 v15, v15, 0x2

    aput v15, v14, v8

    .line 797
    .end local v13    # "perm":Ljava/lang/String;
    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 809
    .end local v6    # "N":I
    .end local v8    # "i":I
    :cond_19
    and-int/lit8 v6, v1, 0x40

    if-eqz v6, :cond_1b

    .line 810
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 813
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/pm/Signature;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 814
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    const/4 v13, 0x0

    aget-object v8, v8, v13

    aput-object v8, v6, v13

    goto :goto_b

    .line 815
    :cond_1a
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 817
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, v6, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    .line 818
    .local v6, "numberOfSigs":I
    new-array v8, v6, [Landroid/content/pm/Signature;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 819
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v13, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v14, 0x0

    invoke-static {v8, v14, v13, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    .end local v6    # "numberOfSigs":I
    :cond_1b
    :goto_b
    const/high16 v6, 0x8000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_1d

    .line 825
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v8, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v6, v8, :cond_1c

    .line 827
    new-instance v6, Landroid/content/pm/SigningInfo;

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v6, v8}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_c

    .line 829
    :cond_1c
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 832
    :cond_1d
    :goto_c
    return-object v5

    .line 669
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1e
    :goto_d
    move-object/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const/4 v6, 0x0

    return-object v6
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    .line 7562
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7563
    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    .line 7564
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object v0

    .line 7566
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 7567
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 7568
    return-object v0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .param p0, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p1, "flags"    # I

    .line 7551
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7552
    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    .line 7553
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object v0

    .line 7555
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 7556
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 7557
    return-object v0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7841
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7842
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7843
    return-object v0

    .line 7845
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_3

    .line 7848
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7849
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object v0

    .line 7852
    :cond_3
    new-instance v1, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 7853
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 7854
    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_4

    .line 7855
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 7857
    :cond_4
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7858
    return-object v1
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 2
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7747
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7748
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7749
    return-object v0

    .line 7751
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7752
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7753
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 7756
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 7757
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 7758
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7759
    return-object v0
.end method

.method public static getActivityConfigChanges(II)I
    .locals 1
    .param p0, "configChanges"    # I
    .param p1, "recreateOnConfigChanges"    # I

    .line 4596
    not-int v0, p1

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p0

    return v0
.end method

.method private getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .locals 2
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 1142
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1143
    return-object v1

    .line 1146
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "cacheKey":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1151
    .local v2, "cacheFile":Ljava/io/File;
    :try_start_0
    invoke-static {p1, v2}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1152
    return-object v1

    .line 1155
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 1156
    .local v3, "bytes":[B
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageParser;->fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1157
    .local v4, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v5, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v5, :cond_3

    .line 1158
    iget-object v5, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    iget-object v6, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/content/pm/PackageParser$Callback;->getOverlayApks(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1159
    .local v5, "overlayApks":[Ljava/lang/String;
    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    .line 1160
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 1162
    .local v8, "overlayApk":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v2}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_2

    .line 1163
    return-object v1

    .line 1160
    .end local v8    # "overlayApk":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1168
    .end local v5    # "overlayApks":[Ljava/lang/String;
    :cond_3
    return-object v4

    .line 1169
    .end local v3    # "bytes":[B
    .end local v4    # "p":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v3

    .line 1170
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "PackageParser"

    const-string v5, "Error reading package cache: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1174
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1175
    return-object v1
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 3890
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_5

    .line 3891
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 3892
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3893
    .local v2, "countActivities":I
    move v3, v0

    .local v3, "n":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 3894
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    .line 3895
    .local v4, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 3896
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_1

    .end local v4    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    goto :goto_4

    .line 3897
    .restart local v4    # "activity":Landroid/content/pm/PackageParser$Activity;
    .restart local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3898
    .local v6, "countFilters":I
    move v7, v0

    .local v7, "m":I
    :goto_1
    if-ge v7, v6, :cond_6

    .line 3899
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3900
    .local v8, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    goto :goto_2

    .line 3901
    .restart local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    goto :goto_2

    .line 3902
    .restart local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_3
    const-string v9, "http"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "https"

    .line 3903
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    .line 3898
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3904
    .restart local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_5
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 3893
    .end local v4    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "countFilters":I
    .end local v7    # "m":I
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3908
    .end local v3    # "n":I
    :cond_7
    return v0

    .line 3890
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    .end local v2    # "countActivities":I
    :cond_8
    :goto_5
    return v0
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 618
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isApkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 622
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 2
    .param p0, "state"    # Landroid/content/pm/PackageUserState;

    .line 662
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method private static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "cacheFile"    # Ljava/io/File;

    .line 1115
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 1116
    .local v1, "pkg":Landroid/system/StructStat;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 1117
    .local v2, "cache":Landroid/system/StructStat;
    iget-wide v3, v1, Landroid/system/StructStat;->st_mtime:J

    iget-wide v5, v2, Landroid/system/StructStat;->st_mtime:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 1118
    .end local v1    # "pkg":Landroid/system/StructStat;
    .end local v2    # "cache":Landroid/system/StructStat;
    :catch_0
    move-exception v1

    .line 1129
    .local v1, "ee":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    if-eq v2, v3, :cond_1

    .line 1130
    const-string v2, "Error while stating package cache : "

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    :cond_1
    return v0
.end method

.method private isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/pm/PackageParser$IntentInfo;

    .line 5321
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SEND"

    .line 5322
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SENDTO"

    .line 5323
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 5324
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5321
    :goto_1
    return v0
.end method

.method static synthetic lambda$parseBaseApplication$0(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .locals 2
    .param p0, "a1"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "a2"    # Landroid/content/pm/PackageParser$Activity;

    .line 3863
    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseBaseApplication$1(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .locals 2
    .param p0, "r1"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "r2"    # Landroid/content/pm/PackageParser$Activity;

    .line 3866
    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseBaseApplication$2(Landroid/content/pm/PackageParser$Service;Landroid/content/pm/PackageParser$Service;)I
    .locals 2
    .param p0, "s1"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "s2"    # Landroid/content/pm/PackageParser$Service;

    .line 3869
    iget v0, p1, Landroid/content/pm/PackageParser$Service;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static newConfiguredAssetManager()Landroid/content/res/AssetManager;
    .locals 20

    .line 1549
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 1550
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 1552
    return-object v0
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 25
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .param p7, "receiver"    # Z
    .param p8, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    move-object/from16 v2, p6

    .line 4146
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4148
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_0

    .line 4149
    new-instance v0, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x2c

    const/16 v15, 0x17

    const/16 v16, 0x1e

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v18, 0x7

    const/16 v19, 0x11

    const/16 v20, 0x5

    move-object v8, v0

    move-object v9, v6

    move-object/from16 v17, v10

    move-object v10, v3

    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4162
    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_1

    const-string v8, "<receiver>"

    goto :goto_0

    :cond_1
    const-string v8, "<activity>"

    :goto_0
    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4163
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4164
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4166
    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v0, v9, v10}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v9, v0

    .line 4167
    .local v9, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v10, 0x0

    aget-object v0, v3, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    .line 4168
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4169
    return-object v11

    .line 4172
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 4173
    .local v12, "setExported":Z
    if-eqz v12, :cond_3

    .line 4174
    iget-object v13, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v13, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4177
    :cond_3
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4179
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v13, 0x1a

    iget-object v14, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4182
    const/16 v0, 0x1b

    const/16 v13, 0x400

    invoke-virtual {v1, v0, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 4185
    .local v14, "parentName":Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 4186
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v14, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4187
    .local v0, "parentClassName":Ljava/lang/String;
    aget-object v15, v3, v10

    if-nez v15, :cond_4

    .line 4188
    iget-object v15, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, v15, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_1

    .line 4190
    :cond_4
    const-string v15, "PackageParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " specified invalid parentActivityName "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    const/4 v10, 0x0

    aput-object v11, v3, v10

    .line 4197
    .end local v0    # "parentClassName":Ljava/lang/String;
    :cond_5
    :goto_1
    const/4 v13, 0x4

    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 4198
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 4199
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v15, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto :goto_3

    .line 4201
    :cond_6
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_7
    move-object v15, v11

    :goto_2
    iput-object v15, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4204
    :goto_3
    const/16 v10, 0x8

    const/16 v15, 0x400

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 4207
    iget-object v15, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v11, v10, v0, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v15, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4210
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v11, 0x30

    .line 4211
    const/4 v15, 0x0

    invoke-virtual {v1, v11, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 4213
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4214
    const/16 v10, 0x9

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_8

    .line 4216
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v15, v11

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4219
    :cond_8
    const/16 v10, 0xa

    const/4 v15, 0x0

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/4 v15, 0x2

    if-eqz v10, :cond_9

    .line 4220
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v11, v15

    iput v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4223
    :cond_9
    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 4224
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v15, v13

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4227
    :cond_a
    const/16 v10, 0x15

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4228
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v11, v11, 0x80

    iput v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4231
    :cond_b
    const/16 v10, 0x12

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 4232
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v16, 0x8

    or-int/lit8 v15, v15, 0x8

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4235
    :cond_c
    const/16 v10, 0xc

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v11, 0x10

    if-eqz v10, :cond_d

    .line 4236
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v15, v11

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4239
    :cond_d
    const/16 v10, 0xd

    const/4 v15, 0x0

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v15, 0x20

    if-eqz v10, :cond_e

    .line 4240
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v13, v15

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4243
    :cond_e
    const/16 v10, 0x13

    iget-object v13, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v13, v15

    if-eqz v13, :cond_f

    const/4 v13, 0x1

    goto :goto_4

    :cond_f
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4245
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v13, v13, 0x40

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4248
    :cond_10
    const/16 v10, 0x16

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4249
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v13, v13, 0x100

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4252
    :cond_11
    const/16 v10, 0x1d

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_12

    const/16 v10, 0x27

    .line 4253
    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 4254
    :cond_12
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v15, 0x400

    or-int/2addr v13, v15

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4257
    :cond_13
    const/16 v10, 0x18

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 4258
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v13, v13, 0x800

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4261
    :cond_14
    const/16 v10, 0x36

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 4262
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v15, 0x20000000

    or-int/2addr v13, v15

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4265
    :cond_15
    if-nez p7, :cond_1f

    .line 4266
    const/16 v13, 0x19

    move/from16 v15, p8

    invoke-virtual {v1, v13, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 4268
    iget-object v13, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v13, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x200

    iput v10, v13, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4271
    :cond_16
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v13, 0xe

    const/4 v11, 0x0

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4273
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v13, 0x21

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v10, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 4276
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v11, 0x22

    .line 4278
    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    move-result v13

    .line 4276
    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v10, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4279
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4280
    const/4 v11, 0x0

    const/16 v13, 0x10

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v21, v0

    const/16 v0, 0x2f

    .line 4281
    .end local v0    # "str":Ljava/lang/String;
    .local v21, "str":Ljava/lang/String;
    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 4279
    invoke-static {v13, v0}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v0

    iput v0, v10, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4282
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x14

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4285
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x20

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4289
    const/16 v0, 0x1f

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4290
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, -0x80000000

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4293
    :cond_17
    const/16 v0, 0x23

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4294
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x2000

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4297
    :cond_18
    const/16 v0, 0x24

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4298
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x1000

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4301
    :cond_19
    const/16 v0, 0x25

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4302
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x4000

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4305
    :cond_1a
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0xf

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4309
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v7, v0, v1, v6}, Landroid/content/pm/PackageParser;->setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V

    .line 4311
    const/16 v0, 0x29

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4313
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v13, 0x400000

    or-int/2addr v10, v13

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4316
    :cond_1b
    const/16 v0, 0x35

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4317
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v13, 0x40000

    or-int/2addr v10, v13

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4320
    :cond_1c
    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 4321
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v10

    const/4 v13, 0x4

    if-ne v10, v13, :cond_1d

    .line 4323
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v9, v0}, Landroid/content/pm/PackageParser$Activity;->access$200(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4327
    :cond_1d
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x26

    .line 4328
    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4330
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v11, 0x2a

    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v10, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v11, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    .line 4334
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x2b

    .line 4335
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4337
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x2e

    .line 4338
    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 4340
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x31

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 4343
    const/16 v0, 0x33

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4344
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, 0x800000

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4347
    :cond_1e
    const/16 v0, 0x34

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4348
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, 0x1000000

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_5

    .line 4352
    .end local v21    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1f
    move/from16 v15, p8

    move-object/from16 v21, v0

    .line 4352
    .end local v0    # "str":Ljava/lang/String;
    .restart local v21    # "str":Ljava/lang/String;
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4353
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v10, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4355
    const/16 v0, 0x1c

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4356
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, 0x40000000    # 2.0f

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4359
    :cond_20
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v11, 0x0

    const/16 v13, 0x2a

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v10, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v13, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    .line 4364
    :cond_21
    :goto_5
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v0, :cond_22

    .line 4365
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v10, v10, 0x100

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4370
    :cond_22
    const/16 v0, 0x2d

    .line 4371
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 4372
    .local v11, "visibleToEphemeral":Z
    const/high16 v10, 0x100000

    if-eqz v11, :cond_23

    .line 4373
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v13, v10

    iput v13, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4374
    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 4377
    :cond_23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4379
    if-eqz p7, :cond_24

    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v13, 0x2

    and-int/2addr v0, v13

    if-eqz v0, :cond_24

    .line 4383
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v13, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v13, :cond_24

    .line 4384
    const-string v0, "Heavy-weight applications can not have receivers in main process"

    const/4 v13, 0x0

    aput-object v0, v3, v13

    goto :goto_6

    .line 4388
    :cond_24
    const/4 v13, 0x0

    :goto_6
    aget-object v0, v3, v13

    if-eqz v0, :cond_25

    .line 4389
    const/4 v0, 0x0

    return-object v0

    .line 4392
    :cond_25
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 4394
    .local v0, "outerDepth":I
    :goto_7
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    move/from16 v22, v13

    .line 4394
    .local v22, "type":I
    const/4 v10, 0x1

    if-eq v13, v10, :cond_3d

    const/4 v13, 0x3

    move/from16 v10, v22

    if-ne v10, v13, :cond_27

    .line 4396
    .end local v22    # "type":I
    .local v10, "type":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v0, :cond_26

    goto :goto_8

    .line 4501
    :cond_26
    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object v2, v4

    move-object v1, v5

    move-object v8, v6

    move-object/from16 v18, v21

    move-object v4, v3

    goto/16 :goto_12

    .line 4397
    :cond_27
    :goto_8
    const/4 v13, 0x3

    if-eq v10, v13, :cond_3c

    const/4 v13, 0x4

    if-ne v10, v13, :cond_28

    .line 4398
    nop

    .line 4392
    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object v2, v4

    move-object v1, v5

    move-object v8, v6

    move-object/from16 v18, v21

    const/4 v0, 0x0

    move-object v4, v3

    .line 4392
    .end local v0    # "outerDepth":I
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "type":I
    .end local v21    # "str":Ljava/lang/String;
    .local v18, "str":Ljava/lang/String;
    .local v19, "outerDepth":I
    .local v20, "sa":Landroid/content/res/TypedArray;
    :goto_9
    const/high16 v3, 0x100000

    goto/16 :goto_11

    .line 4401
    .end local v18    # "str":Ljava/lang/String;
    .end local v19    # "outerDepth":I
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v10    # "type":I
    .restart local v21    # "str":Ljava/lang/String;
    :cond_28
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    move/from16 v23, v0

    const-string v0, "intent-filter"

    .line 4401
    .end local v0    # "outerDepth":I
    .local v23, "outerDepth":I
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4402
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    move-object v13, v0

    .line 4403
    .local v13, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v18, v21

    move/from16 v19, v23

    move-object v0, v7

    .line 4403
    .end local v21    # "str":Ljava/lang/String;
    .end local v23    # "outerDepth":I
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v19    # "outerDepth":I
    move-object/from16 v20, v1

    move-object v1, v5

    .line 4403
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    move-object v2, v4

    move/from16 v3, v16

    move/from16 v4, v17

    move-object v5, v13

    move-object v8, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 4405
    const/4 v0, 0x0

    return-object v0

    .line 4407
    :cond_29
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v0

    if-nez v0, :cond_2a

    .line 4408
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No actions in intent filter at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4410
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4408
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 4412
    :cond_2a
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v0

    iget v1, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 4413
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4416
    :goto_a
    if-eqz v11, :cond_2b

    .line 4417
    nop

    .line 4420
    const/4 v0, 0x1

    goto :goto_b

    .line 4418
    :cond_2b
    if-nez p7, :cond_2c

    invoke-direct {v7, v13}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4419
    nop

    .line 4420
    const/4 v0, 0x2

    goto :goto_b

    :cond_2c
    const/4 v0, 0x0

    .line 4421
    .local v0, "visibility":I
    :goto_b
    invoke-virtual {v13, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4422
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4423
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4425
    :cond_2d
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4426
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4440
    .end local v0    # "visibility":I
    .end local v13    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2e
    nop

    .line 4392
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    const/4 v0, 0x0

    goto/16 :goto_9

    .line 4440
    .end local v18    # "str":Ljava/lang/String;
    .end local v19    # "outerDepth":I
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "str":Ljava/lang/String;
    .restart local v23    # "outerDepth":I
    :cond_2f
    move-object/from16 v20, v1

    move-object v8, v6

    move-object/from16 v18, v21

    move/from16 v19, v23

    .line 4440
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v21    # "str":Ljava/lang/String;
    .end local v23    # "outerDepth":I
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v19    # "outerDepth":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    if-nez p7, :cond_37

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preferred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 4441
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    move-object v13, v0

    .line 4442
    .restart local v13    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v5, v13

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 4444
    const/4 v0, 0x0

    return-object v0

    .line 4446
    :cond_30
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v0

    if-nez v0, :cond_31

    .line 4447
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No actions in preferred at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4449
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4447
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4451
    :cond_31
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v0, :cond_32

    .line 4452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 4454
    :cond_32
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4457
    :goto_c
    if-eqz v11, :cond_33

    .line 4458
    nop

    .line 4461
    const/4 v0, 0x1

    goto :goto_d

    .line 4459
    :cond_33
    if-nez p7, :cond_34

    invoke-direct {v7, v13}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4460
    nop

    .line 4461
    const/4 v0, 0x2

    goto :goto_d

    :cond_34
    const/4 v0, 0x0

    .line 4462
    .restart local v0    # "visibility":I
    :goto_d
    invoke-virtual {v13, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4463
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 4464
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_e

    .line 4466
    :cond_35
    const/high16 v3, 0x100000

    :goto_e
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 4467
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x200000

    or-int/2addr v2, v4

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4469
    .end local v0    # "visibility":I
    .end local v13    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_36
    nop

    .line 4392
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto :goto_f

    .line 4469
    :cond_37
    const/high16 v3, 0x100000

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 4470
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    invoke-direct {v7, v1, v2, v0, v4}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_38

    .line 4472
    const/4 v0, 0x0

    return-object v0

    .line 4392
    .end local v10    # "type":I
    :cond_38
    :goto_f
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 4474
    .restart local v10    # "type":I
    :cond_39
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    const/4 v0, 0x0

    if-nez p7, :cond_3a

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "layout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 4475
    invoke-direct {v7, v1, v2, v9}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    goto/16 :goto_11

    .line 4478
    :cond_3a
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Problem in package "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    if-eqz p7, :cond_3b

    .line 4480
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <receiver>: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4482
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4480
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 4484
    :cond_3b
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <activity>: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4486
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4484
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    :goto_10
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4489
    goto :goto_11

    .line 4392
    .end local v10    # "type":I
    .end local v18    # "str":Ljava/lang/String;
    .end local v19    # "outerDepth":I
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v0, "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "str":Ljava/lang/String;
    :cond_3c
    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object v2, v4

    move-object v1, v5

    move-object v8, v6

    move-object/from16 v18, v21

    const/4 v0, 0x0

    move-object v4, v3

    const/high16 v3, 0x100000

    .line 4392
    .end local v0    # "outerDepth":I
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v21    # "str":Ljava/lang/String;
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v19    # "outerDepth":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :goto_11
    move-object v5, v1

    move v10, v3

    move-object v3, v4

    move-object v6, v8

    move-object/from16 v21, v18

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v8, p4

    const/4 v13, 0x0

    move-object v4, v2

    move-object/from16 v2, p6

    goto/16 :goto_7

    .line 4501
    .end local v18    # "str":Ljava/lang/String;
    .end local v19    # "outerDepth":I
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "str":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_3d
    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object v2, v4

    move-object v1, v5

    move-object v8, v6

    move-object/from16 v18, v21

    move/from16 v10, v22

    move-object v4, v3

    .line 4501
    .end local v0    # "outerDepth":I
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v21    # "str":Ljava/lang/String;
    .end local v22    # "type":I
    .restart local v10    # "type":I
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v19    # "outerDepth":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :goto_12
    if-nez v12, :cond_3f

    .line 4502
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3e

    const/4 v3, 0x1

    goto :goto_13

    :cond_3e
    const/4 v3, 0x0

    :goto_13
    iput-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4505
    :cond_3f
    return-object v9
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;
    .locals 32
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    .line 4646
    move-object/from16 v2, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4649
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/16 v0, 0x400

    const/4 v8, 0x7

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    .line 4652
    .local v8, "targetActivity":Ljava/lang/String;
    const/16 v21, 0x0

    const/4 v15, 0x0

    if-nez v8, :cond_0

    .line 4653
    const-string v0, "<activity-alias> does not specify android:targetActivity"

    aput-object v0, v3, v15

    .line 4654
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4655
    return-object v21

    .line 4658
    :cond_0
    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v8, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4660
    .end local v8    # "targetActivity":Ljava/lang/String;
    .local v14, "targetActivity":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 4661
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4662
    return-object v21

    .line 4665
    :cond_1
    iget-object v8, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v8, :cond_2

    .line 4666
    new-instance v13, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xb

    const/16 v18, 0x8

    const/16 v19, 0xa

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x4

    move-object v8, v13

    move-object v9, v6

    move-object/from16 v24, v10

    move-object v10, v3

    move-object v0, v13

    move/from16 v13, v16

    move-object/from16 v26, v14

    move/from16 v14, v17

    .end local v14    # "targetActivity":Ljava/lang/String;
    .local v26, "targetActivity":Ljava/lang/String;
    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v24

    move/from16 v18, v20

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4677
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v8, "<activity-alias>"

    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_0

    .line 4680
    .end local v26    # "targetActivity":Ljava/lang/String;
    .restart local v14    # "targetActivity":Ljava/lang/String;
    :cond_2
    move-object/from16 v26, v14

    .line 4680
    .end local v14    # "targetActivity":Ljava/lang/String;
    .restart local v26    # "targetActivity":Ljava/lang/String;
    :goto_0
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4681
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4683
    const/4 v0, 0x0

    .line 4685
    .local v0, "target":Landroid/content/pm/PackageParser$Activity;
    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4686
    .local v9, "NA":I
    const/4 v10, 0x0

    .line 4686
    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_4

    .line 4687
    iget-object v11, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Activity;

    .line 4688
    .local v11, "t":Landroid/content/pm/PackageParser$Activity;
    iget-object v12, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v13, v26

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 4688
    .end local v26    # "targetActivity":Ljava/lang/String;
    .local v13, "targetActivity":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 4689
    move-object v0, v11

    .line 4690
    nop

    .line 4694
    move-object v10, v0

    goto :goto_2

    .line 4686
    .end local v11    # "t":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v26, v13

    goto :goto_1

    .line 4694
    .end local v10    # "i":I
    .end local v13    # "targetActivity":Ljava/lang/String;
    .restart local v26    # "targetActivity":Ljava/lang/String;
    :cond_4
    move-object/from16 v13, v26

    move-object v10, v0

    .line 4694
    .end local v0    # "target":Landroid/content/pm/PackageParser$Activity;
    .end local v26    # "targetActivity":Ljava/lang/String;
    .local v10, "target":Landroid/content/pm/PackageParser$Activity;
    .restart local v13    # "targetActivity":Ljava/lang/String;
    :goto_2
    if-nez v10, :cond_5

    .line 4695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<activity-alias> target activity "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " not found in manifest"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v3, v11

    .line 4697
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4698
    return-object v21

    .line 4701
    :cond_5
    const/4 v11, 0x0

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object v12, v0

    .line 4702
    .local v12, "info":Landroid/content/pm/ActivityInfo;
    iput-object v13, v12, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 4703
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4704
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4705
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->icon:I

    .line 4706
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->logo:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->logo:I

    .line 4707
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->banner:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->banner:I

    .line 4708
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 4709
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4710
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4711
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4712
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4713
    iget v0, v12, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v0, :cond_6

    .line 4714
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 4716
    :cond_6
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4717
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4718
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->theme:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4719
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4720
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4721
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 4722
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4723
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4724
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4725
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    iput v0, v12, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    .line 4726
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4728
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v0, v12, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v0, v12, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    .line 4730
    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v14, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    invoke-direct {v0, v14, v12}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v14, v0

    .line 4731
    .local v14, "a":Landroid/content/pm/PackageParser$Activity;
    aget-object v0, v3, v11

    if-eqz v0, :cond_7

    .line 4732
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4733
    return-object v21

    .line 4736
    :cond_7
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    .line 4738
    .local v15, "setExported":Z
    if-eqz v15, :cond_8

    .line 4739
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4744
    :cond_8
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 4746
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 4747
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_9
    move-object/from16 v11, v21

    :goto_3
    iput-object v11, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4750
    :cond_a
    const/16 v2, 0x9

    const/16 v11, 0x400

    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 4753
    .local v11, "parentName":Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 4754
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v11, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4755
    .local v2, "parentClassName":Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v17, v3, v16

    if-nez v17, :cond_b

    .line 4756
    move-object/from16 v27, v0

    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4756
    .end local v0    # "str":Ljava/lang/String;
    .local v27, "str":Ljava/lang/String;
    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_4

    .line 4758
    .end local v27    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_b
    move-object/from16 v27, v0

    .line 4758
    .end local v0    # "str":Ljava/lang/String;
    .restart local v27    # "str":Ljava/lang/String;
    const-string v0, "PackageParser"

    move-object/from16 v28, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 4758
    .end local v2    # "parentClassName":Ljava/lang/String;
    .local v28, "parentClassName":Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity alias "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " specified invalid parentActivityName "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    const/4 v0, 0x0

    aput-object v21, v3, v0

    .line 4760
    .end local v28    # "parentClassName":Ljava/lang/String;
    goto :goto_4

    .line 4765
    .end local v27    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_c
    move-object/from16 v27, v0

    .line 4765
    .end local v0    # "str":Ljava/lang/String;
    .restart local v27    # "str":Ljava/lang/String;
    :goto_4
    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v0, v0, v16

    const/4 v6, 0x1

    if-eqz v0, :cond_d

    move v0, v6

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    move/from16 v17, v0

    .line 4768
    .local v17, "visibleToEphemeral":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4770
    const/16 v18, 0x0

    aget-object v0, v3, v18

    if-eqz v0, :cond_e

    .line 4771
    return-object v21

    .line 4774
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 4774
    .local v0, "outerDepth":I
    :goto_6
    move v2, v0

    .line 4776
    .end local v0    # "outerDepth":I
    .local v2, "outerDepth":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v29, v0

    .line 4776
    .local v29, "type":I
    if-eq v0, v6, :cond_1c

    move/from16 v0, v29

    const/4 v6, 0x3

    if-ne v0, v6, :cond_10

    .line 4778
    .end local v29    # "type":I
    .local v0, "type":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_f

    goto :goto_7

    .line 4829
    :cond_f
    move/from16 v23, v0

    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move-object/from16 v22, v27

    const/16 v19, 0x1

    goto/16 :goto_b

    .line 4779
    :cond_10
    :goto_7
    const/4 v6, 0x3

    if-eq v0, v6, :cond_1a

    const/4 v6, 0x4

    if-ne v0, v6, :cond_11

    .line 4780
    nop

    .line 4774
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move-object/from16 v22, v27

    const/16 v19, 0x1

    const/16 v26, 0x3

    goto/16 :goto_a

    .line 4783
    :cond_11
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v30, v0

    const-string v0, "intent-filter"

    .line 4783
    .end local v0    # "type":I
    .local v30, "type":I
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4784
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    move-object v6, v0

    .line 4785
    .local v6, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v22, v27

    move/from16 v23, v30

    move-object v0, v7

    .line 4785
    .end local v27    # "str":Ljava/lang/String;
    .end local v30    # "type":I
    .local v22, "str":Ljava/lang/String;
    .local v23, "type":I
    move-object/from16 v24, v1

    move-object v1, v5

    .line 4785
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v24, "sa":Landroid/content/res/TypedArray;
    move/from16 v25, v2

    const/16 v26, 0x3

    move-object v2, v4

    .line 4785
    .end local v2    # "outerDepth":I
    .local v25, "outerDepth":I
    move/from16 v3, v19

    move/from16 v4, v20

    move-object v5, v6

    move-object v8, v6

    const/16 v19, 0x1

    move-object/from16 v6, p5

    .line 4785
    .end local v6    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v8, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4787
    return-object v21

    .line 4789
    :cond_12
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v0

    if-nez v0, :cond_13

    .line 4790
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No actions in intent filter at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4792
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4790
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4794
    :cond_13
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v0

    iget v1, v14, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v14, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 4795
    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4798
    :goto_8
    if-eqz v17, :cond_14

    .line 4799
    nop

    .line 4802
    move/from16 v0, v19

    goto :goto_9

    .line 4800
    :cond_14
    invoke-direct {v7, v8}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4801
    const/4 v0, 0x2

    goto :goto_9

    .line 4802
    :cond_15
    move/from16 v0, v18

    .line 4803
    .local v0, "visibility":I
    :goto_9
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4804
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4805
    iget-object v1, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v2, v2, v16

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4807
    :cond_16
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4808
    iget-object v1, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4810
    .end local v0    # "visibility":I
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_17
    nop

    .line 4774
    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p2

    goto/16 :goto_a

    .line 4810
    .end local v22    # "str":Ljava/lang/String;
    .end local v23    # "type":I
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "outerDepth":I
    .restart local v27    # "str":Ljava/lang/String;
    .restart local v30    # "type":I
    :cond_18
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v22, v27

    move/from16 v23, v30

    const/16 v19, 0x1

    const/16 v26, 0x3

    .line 4810
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "outerDepth":I
    .end local v27    # "str":Ljava/lang/String;
    .end local v30    # "type":I
    .restart local v22    # "str":Ljava/lang/String;
    .restart local v23    # "type":I
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "outerDepth":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4811
    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p2

    invoke-direct {v7, v1, v2, v0, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1b

    .line 4813
    return-object v21

    .line 4817
    :cond_19
    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p2

    const-string v0, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <activity-alias>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4819
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4817
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4820
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4821
    goto :goto_a

    .line 4774
    .end local v22    # "str":Ljava/lang/String;
    .end local v23    # "type":I
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "outerDepth":I
    .restart local v27    # "str":Ljava/lang/String;
    :cond_1a
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move/from16 v26, v6

    move-object/from16 v22, v27

    const/16 v19, 0x1

    .line 4774
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "outerDepth":I
    .end local v27    # "str":Ljava/lang/String;
    .restart local v22    # "str":Ljava/lang/String;
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "outerDepth":I
    :cond_1b
    :goto_a
    move-object v5, v1

    move-object v4, v2

    move/from16 v6, v19

    move-object/from16 v27, v22

    move-object/from16 v1, v24

    move/from16 v0, v25

    move/from16 v8, p4

    goto/16 :goto_6

    .line 4829
    .end local v22    # "str":Ljava/lang/String;
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "outerDepth":I
    .restart local v27    # "str":Ljava/lang/String;
    .restart local v29    # "type":I
    :cond_1c
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move/from16 v19, v6

    move-object/from16 v22, v27

    move/from16 v23, v29

    .line 4829
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "outerDepth":I
    .end local v27    # "str":Ljava/lang/String;
    .end local v29    # "type":I
    .restart local v22    # "str":Ljava/lang/String;
    .restart local v23    # "type":I
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "outerDepth":I
    :goto_b
    if-nez v15, :cond_1e

    .line 4830
    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d

    move/from16 v4, v19

    goto :goto_c

    :cond_1d
    move/from16 v4, v18

    :goto_c
    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4833
    :cond_1e
    return-object v14
.end method

.method private parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2794
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2796
    .local v0, "certSha256Digests":[Ljava/lang/String;
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2798
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 2799
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 2800
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 2801
    goto :goto_0

    .line 2804
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2805
    .local v2, "nodeName":Ljava/lang/String;
    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2806
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2808
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 2810
    .local v6, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2812
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2813
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p3, v5

    .line 2815
    const/16 v5, -0x6c

    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2816
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2817
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2818
    const/4 v5, 0x0

    return-object v5

    .line 2823
    :cond_3
    const-string v5, ":"

    const-string v7, ""

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2824
    .end local v6    # "certSha256Digest":Ljava/lang/String;
    .local v5, "certSha256Digest":Ljava/lang/String;
    const-class v6, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    .line 2826
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    goto :goto_1

    .line 2827
    :cond_4
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2829
    .end local v2    # "nodeName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 2831
    :cond_5
    return-object v0
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "tag"    # Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5329
    .local p4, "outInfo":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 5331
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .line 5331
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 5333
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 5334
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 5335
    goto :goto_0

    .line 5338
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5339
    iget-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v1, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 5341
    const/4 v1, 0x0

    return v1

    .line 5345
    :cond_3
    const-string v1, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5346
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5347
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5345
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5348
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5349
    goto :goto_0

    .line 5356
    :cond_4
    return v3
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 1
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1565
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method public static parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "debugPathName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1579
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method private static parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 42
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1724
    invoke-static/range {p1 .. p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v1

    .line 1726
    .local v1, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 1727
    .local v2, "installLocation":I
    const/4 v3, 0x0

    .line 1728
    .local v3, "versionCode":I
    const/4 v4, 0x0

    .line 1729
    .local v4, "versionCodeMajor":I
    const/4 v5, 0x0

    .line 1730
    .local v5, "revisionCode":I
    const/4 v6, 0x0

    .line 1731
    .local v6, "coreApp":Z
    const/4 v7, 0x0

    .line 1732
    .local v7, "debuggable":Z
    const/4 v8, 0x0

    .line 1733
    .local v8, "multiArch":Z
    const/4 v9, 0x0

    .line 1734
    .local v9, "use32bitAbi":Z
    const/4 v10, 0x1

    .line 1735
    .local v10, "extractNativeLibs":Z
    const/4 v11, 0x0

    .line 1736
    .local v11, "isolatedSplits":Z
    const/4 v12, 0x0

    .line 1737
    .local v12, "isFeatureSplit":Z
    const/4 v13, 0x0

    .line 1738
    .local v13, "configForSplit":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1740
    .local v14, "usesSplitName":Ljava/lang/String;
    move/from16 v35, v12

    move v12, v11

    move v11, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    .line 1740
    .local v2, "i":I
    .local v3, "installLocation":I
    .local v4, "versionCode":I
    .local v5, "versionCodeMajor":I
    .local v6, "revisionCode":I
    .local v11, "coreApp":Z
    .local v12, "isolatedSplits":Z
    .local v35, "isFeatureSplit":Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v15

    if-ge v2, v15, :cond_8

    .line 1741
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    .line 1742
    .local v15, "attr":Ljava/lang/String;
    move/from16 v36, v7

    const-string v7, "installLocation"

    .line 1742
    .end local v7    # "debuggable":Z
    .local v36, "debuggable":Z
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1743
    const/4 v7, -0x1

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    goto/16 :goto_1

    .line 1745
    :cond_0
    const-string/jumbo v7, "versionCode"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1746
    const/4 v7, 0x0

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v4

    goto :goto_1

    .line 1747
    :cond_1
    const/4 v7, 0x0

    const-string/jumbo v7, "versionCodeMajor"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1748
    const/4 v7, 0x0

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v5

    goto :goto_1

    .line 1749
    :cond_2
    const/4 v7, 0x0

    const-string/jumbo v7, "revisionCode"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1750
    const/4 v7, 0x0

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    goto :goto_1

    .line 1751
    :cond_3
    const/4 v7, 0x0

    const-string v7, "coreApp"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1752
    const/4 v7, 0x0

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v11

    goto :goto_1

    .line 1753
    :cond_4
    const/4 v7, 0x0

    const-string/jumbo v7, "isolatedSplits"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1754
    const/4 v7, 0x0

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v12

    goto :goto_1

    .line 1755
    :cond_5
    const-string v7, "configForSplit"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1756
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 1740
    .end local v13    # "configForSplit":Ljava/lang/String;
    .local v7, "configForSplit":Ljava/lang/String;
    move-object v13, v7

    goto :goto_1

    .line 1757
    .end local v7    # "configForSplit":Ljava/lang/String;
    .restart local v13    # "configForSplit":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "isFeatureSplit"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1758
    const/4 v7, 0x0

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    .line 1740
    .end local v35    # "isFeatureSplit":Z
    .local v15, "isFeatureSplit":Z
    move/from16 v35, v15

    .line 1740
    .end local v15    # "isFeatureSplit":Z
    .restart local v35    # "isFeatureSplit":Z
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v36

    goto/16 :goto_0

    .line 1764
    .end local v2    # "i":I
    .end local v36    # "debuggable":Z
    .local v7, "debuggable":Z
    :cond_8
    move/from16 v36, v7

    .line 1764
    .end local v7    # "debuggable":Z
    .restart local v36    # "debuggable":Z
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .line 1766
    .local v2, "searchDepth":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    .local v15, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :goto_2
    move/from16 v37, v12

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 1767
    .end local v12    # "isolatedSplits":Z
    .local v37, "isolatedSplits":Z
    move/from16 v38, v12

    .line 1767
    .local v38, "type":I
    if-eq v12, v7, :cond_19

    const/4 v12, 0x3

    move/from16 v7, v38

    if-ne v7, v12, :cond_a

    .line 1768
    .end local v38    # "type":I
    .local v7, "type":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-lt v12, v2, :cond_9

    goto :goto_3

    .line 1813
    :cond_9
    move/from16 v39, v2

    move/from16 v40, v7

    goto/16 :goto_c

    .line 1769
    :cond_a
    :goto_3
    const/4 v12, 0x3

    if-eq v7, v12, :cond_17

    const/4 v12, 0x4

    if-ne v7, v12, :cond_b

    .line 1770
    nop

    .line 1766
    .end local v2    # "searchDepth":I
    .end local v7    # "type":I
    .local v39, "searchDepth":I
    :goto_4
    move/from16 v39, v2

    :goto_5
    const/4 v7, 0x1

    goto/16 :goto_b

    .line 1773
    .end local v39    # "searchDepth":I
    .restart local v2    # "searchDepth":I
    .restart local v7    # "type":I
    :cond_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-eq v12, v2, :cond_c

    .line 1774
    goto :goto_4

    .line 1777
    :cond_c
    const-string/jumbo v12, "package-verifier"

    move/from16 v39, v2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1777
    .end local v2    # "searchDepth":I
    .restart local v39    # "searchDepth":I
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1778
    invoke-static/range {p2 .. p2}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v2

    .line 1779
    .local v2, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v2, :cond_d

    .line 1780
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1782
    .end local v2    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_d
    goto :goto_5

    :cond_e
    const-string v2, "application"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1783
    const/4 v2, 0x0

    .line 1783
    .local v2, "i":I
    :goto_6
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v12

    if-ge v2, v12, :cond_13

    .line 1784
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    .line 1785
    .local v12, "attr":Ljava/lang/String;
    move/from16 v40, v7

    const-string v7, "debuggable"

    .line 1785
    .end local v7    # "type":I
    .local v40, "type":I
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1786
    const/4 v7, 0x0

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v36

    goto :goto_7

    .line 1788
    :cond_f
    const/4 v7, 0x0

    :goto_7
    const-string/jumbo v7, "multiArch"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1789
    const/4 v7, 0x0

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    goto :goto_8

    .line 1791
    :cond_10
    const/4 v7, 0x0

    :goto_8
    const-string/jumbo v7, "use32bitAbi"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1792
    const/4 v7, 0x0

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    goto :goto_9

    .line 1794
    :cond_11
    const/4 v7, 0x0

    :goto_9
    const-string v7, "extractNativeLibs"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1795
    const/4 v7, 0x1

    invoke-interface {v0, v2, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    .line 1795
    .end local v12    # "attr":Ljava/lang/String;
    goto :goto_a

    .line 1783
    :cond_12
    const/4 v7, 0x1

    :goto_a
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v40

    goto :goto_6

    .line 1766
    .end local v2    # "i":I
    .end local v40    # "type":I
    .restart local v7    # "type":I
    :cond_13
    move/from16 v40, v7

    move/from16 v12, v37

    move/from16 v2, v39

    const/4 v7, 0x1

    .line 1766
    .end local v7    # "type":I
    .restart local v40    # "type":I
    goto/16 :goto_2

    .line 1798
    .end local v40    # "type":I
    .restart local v7    # "type":I
    :cond_14
    move/from16 v40, v7

    const/4 v7, 0x1

    .line 1798
    .end local v7    # "type":I
    .restart local v40    # "type":I
    const-string/jumbo v2, "uses-split"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1799
    if-eqz v14, :cond_15

    .line 1800
    const-string v2, "PackageParser"

    const-string v12, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    goto :goto_b

    .line 1804
    :cond_15
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v12, "name"

    invoke-interface {v0, v2, v12}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1805
    if-eqz v14, :cond_16

    .line 1805
    .end local v40    # "type":I
    goto :goto_b

    .line 1806
    .restart local v40    # "type":I
    :cond_16
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v7, -0x6c

    const-string v12, "<uses-split> tag requires \'android:name\' attribute"

    invoke-direct {v2, v7, v12}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1766
    .end local v39    # "searchDepth":I
    .end local v40    # "type":I
    .local v2, "searchDepth":I
    :cond_17
    move/from16 v39, v2

    const/4 v7, 0x1

    .line 1766
    .end local v2    # "searchDepth":I
    .restart local v39    # "searchDepth":I
    :cond_18
    :goto_b
    move/from16 v12, v37

    move/from16 v2, v39

    goto/16 :goto_2

    .line 1813
    .end local v39    # "searchDepth":I
    .restart local v2    # "searchDepth":I
    .restart local v38    # "type":I
    :cond_19
    move/from16 v39, v2

    move/from16 v40, v38

    .line 1813
    .end local v2    # "searchDepth":I
    .end local v38    # "type":I
    .restart local v39    # "searchDepth":I
    .restart local v40    # "type":I
    :goto_c
    new-instance v2, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v7

    check-cast v18, Ljava/lang/String;

    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v7

    check-cast v19, Ljava/lang/String;

    move-object/from16 v16, v2

    move-object/from16 v17, p0

    move/from16 v20, v35

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v3

    move-object/from16 v27, v15

    move-object/from16 v28, p3

    move/from16 v29, v11

    move/from16 v30, v36

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v37

    invoke-direct/range {v16 .. v34}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZ)V

    return-object v2
.end method

.method private static parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 8
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "debugPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1584
    if-eqz p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1586
    .local v0, "apkPath":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    .line 1590
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 1591
    :try_start_0
    invoke-static {p1, p2, v3, v3}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v4

    goto :goto_1

    .line 1624
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 1619
    :catch_0
    move-exception v1

    goto :goto_4

    .line 1593
    :catch_1
    move-exception v1

    goto :goto_3

    .line 1592
    :cond_1
    invoke-static {v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1596
    .local v4, "apkAssets":Landroid/content/res/ApkAssets;
    :goto_1
    nop

    .line 1594
    nop

    .line 1598
    :try_start_1
    const-string v5, "AndroidManifest.xml"

    invoke-virtual {v4, v5}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v2, v5

    .line 1601
    and-int/lit8 v5, p3, 0x20

    if-eqz v5, :cond_3

    .line 1603
    new-instance v5, Landroid/content/pm/PackageParser$Package;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 1604
    .local v1, "tempPkg":Landroid/content/pm/PackageParser$Package;
    and-int/lit8 v5, p3, 0x10

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    nop

    .line 1605
    .local v3, "skipVerify":Z
    :cond_2
    const-string v5, "collectCertificates"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    :try_start_2
    invoke-static {v1, p0, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1609
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1610
    nop

    .line 1611
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .end local v1    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "skipVerify":Z
    move-object v1, v5

    .line 1612
    .local v1, "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    goto :goto_2

    .line 1609
    .local v1, "tempPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "skipVerify":Z
    :catchall_1
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v5

    .line 1613
    .end local v1    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "skipVerify":Z
    :cond_3
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1616
    .local v1, "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :goto_2
    move-object v3, v2

    .line 1617
    .local v3, "attrs":Landroid/util/AttributeSet;
    invoke-static {v0, v2, v3, v1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v5
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1624
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1617
    return-object v5

    .line 1593
    .end local v1    # "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "apkAssets":Landroid/content/res/ApkAssets;
    :goto_3
    nop

    .line 1594
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x64

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1619
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 1620
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1621
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1624
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 11
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1317
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1319
    .local v6, "apkPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1320
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "/mnt/expand/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1321
    const/16 v1, 0x2f

    const-string v2, "/mnt/expand/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1322
    .local v1, "end":I
    const-string v2, "/mnt/expand/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1325
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v1    # "end":I
    .local v7, "volumeUuid":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1326
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1330
    const/4 v1, 0x0

    move-object v2, v1

    .line 1332
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p2, v6}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v3

    move v8, v3

    .line 1333
    .local v8, "cookie":I
    if-eqz v8, :cond_2

    .line 1337
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {p2, v8, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v3

    .line 1338
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources;

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v2, p2, v3, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1340
    .local v2, "res":Landroid/content/res/Resources;
    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    .line 1341
    .local v10, "outError":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, v6

    move-object v3, v9

    move v4, p3

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1342
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1347
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 1350
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)V
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1352
    nop

    .line 1360
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1352
    return-object v0

    .line 1343
    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    iget v3, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-object v5, v10, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1360
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v8    # "cookie":I
    .end local v10    # "outError":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1356
    :catch_0
    move-exception v0

    move-object v2, v9

    goto :goto_0

    .line 1354
    :catch_1
    move-exception v0

    move-object v2, v9

    goto :goto_1

    .line 1334
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "cookie":I
    :cond_2
    :try_start_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1360
    .end local v8    # "cookie":I
    :catchall_1
    move-exception v0

    move-object v9, v2

    goto :goto_2

    .line 1356
    :catch_2
    move-exception v0

    .line 1357
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_4
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1354
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 1355
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1360
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_2
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 15
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p3

    .line 1909
    const/16 v1, -0x6a

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v9, v9}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v0

    .line 1910
    .local v0, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v10, v3

    .line 1911
    .local v10, "pkgName":Ljava/lang/String;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v11, v3

    .line 1913
    .local v11, "splitName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected base APK, but found split "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p5, v4

    .line 1915
    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    return-object v2

    .line 1921
    .end local v0    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    nop

    .line 1920
    nop

    .line 1923
    iget-object v0, v8, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v0, :cond_1

    .line 1924
    iget-object v0, v8, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    move-object/from16 v12, p1

    invoke-interface {v0, v10, v12}, Landroid/content/pm/PackageParser$Callback;->getOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, "overlayPaths":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 1926
    array-length v1, v0

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 1927
    .local v5, "overlayPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 1926
    .end local v5    # "overlayPath":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1932
    .end local v0    # "overlayPaths":[Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p1

    :cond_2
    new-instance v0, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1934
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v13, p2

    invoke-virtual {v13, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1937
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v14, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1939
    const/16 v1, 0xb

    invoke-virtual {v14, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    .line 1941
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1942
    const/4 v1, 0x5

    invoke-virtual {v14, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1944
    const/4 v1, 0x2

    invoke-virtual {v14, v1, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1946
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1947
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1950
    :cond_3
    const-string v1, "coreApp"

    invoke-interface {v9, v2, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 1952
    const/16 v1, 0x9

    invoke-virtual {v14, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    .line 1954
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 1955
    const/16 v1, 0xa

    invoke-virtual {v14, v1, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 1957
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1958
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 1960
    :cond_4
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 1962
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1964
    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, v0

    move-object v4, v13

    move-object v5, v9

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 1918
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "splitName":Ljava/lang/String;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 1919
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1920
    return-object v2
.end method

.method private parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 14
    .param p1, "parentPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    .line 1837
    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    move-object/from16 v9, p3

    invoke-interface {v9, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1838
    .local v10, "childPackageName":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1839
    const/16 v0, -0x6a

    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1840
    return v12

    .line 1844
    :cond_0
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0x6c

    if-eqz v0, :cond_1

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child package name cannot be equal to parent package name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1847
    .local v0, "message":Ljava/lang/String;
    const-string v2, "PackageParser"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    aput-object v0, p5, v12

    .line 1849
    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1850
    return v12

    .line 1854
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate child package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1856
    .restart local v0    # "message":Ljava/lang/String;
    const-string v2, "PackageParser"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    aput-object v0, p5, v12

    .line 1858
    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1859
    return v12

    .line 1863
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 1866
    .local v13, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget v0, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, v13, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1867
    iget v0, v8, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v0, v13, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1868
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, v13, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1869
    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1870
    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1872
    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    move-object v0, v7

    move-object v1, v13

    move-object/from16 v3, p2

    move-object v4, v9

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1873
    .end local v13    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "childPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v0, :cond_3

    .line 1875
    return v12

    .line 1879
    :cond_3
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 1880
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 1882
    :cond_4
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1883
    iput-object v8, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1885
    return v11
.end method

.method private parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 47
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/PackageParser$Package;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1989
    .local p2, "acceptedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    .line 1989
    move-object/from16 v12, p6

    const/4 v13, 0x0

    iput-object v13, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1992
    const/4 v0, 0x0

    .line 1994
    .local v0, "foundApp":Z
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {v9, v10, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1997
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v1, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 1999
    .local v15, "str":Ljava/lang/String;
    const/4 v5, 0x3

    const/4 v4, 0x1

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2000
    invoke-static {v15, v4, v14}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 2011
    .local v2, "nameError":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "android"

    iget-object v4, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "nubia"

    iget-object v4, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2012
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v14

    .line 2015
    const/16 v3, -0x6b

    iput v3, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2016
    return-object v13

    .line 2027
    :cond_0
    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 2028
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v7, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 2032
    .end local v2    # "nameError":Ljava/lang/String;
    :cond_1
    const/4 v2, -0x1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v7, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 2035
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v7, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 2037
    const/4 v3, 0x7

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 2040
    .local v13, "targetSandboxVersion":I
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v13, v2, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 2043
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_2

    .line 2044
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2048
    :cond_2
    and-int/lit8 v2, v11, 0x8

    if-eqz v2, :cond_3

    .line 2049
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v18, 0x40000

    or-int v3, v3, v18

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2052
    :cond_3
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2053
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v18, 0x8000

    or-int v3, v3, v18

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2057
    :cond_4
    const/4 v2, 0x1

    .line 2058
    .local v2, "supportsSmallScreens":I
    const/4 v3, 0x1

    .line 2059
    .local v3, "supportsNormalScreens":I
    const/16 v18, 0x1

    .line 2060
    .local v18, "supportsLargeScreens":I
    const/16 v20, 0x1

    .line 2061
    .local v20, "supportsXLargeScreens":I
    const/16 v21, 0x1

    .line 2062
    .local v21, "resizeable":I
    const/16 v22, 0x1

    .line 2064
    .local v22, "anyDensity":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    move/from16 v24, v21

    move/from16 v25, v22

    move/from16 v45, v18

    move/from16 v18, v0

    move/from16 v0, v20

    move-object/from16 v20, v1

    move/from16 v1, v45

    move/from16 v46, v3

    move v3, v2

    move/from16 v2, v46

    .end local v21    # "resizeable":I
    .end local v22    # "anyDensity":I
    .local v0, "supportsXLargeScreens":I
    .local v1, "supportsLargeScreens":I
    .local v2, "supportsNormalScreens":I
    .local v3, "supportsSmallScreens":I
    .local v18, "foundApp":Z
    .local v20, "sa":Landroid/content/res/TypedArray;
    .local v23, "outerDepth":I
    .local v24, "resizeable":I
    .local v25, "anyDensity":I
    :goto_0
    move/from16 v26, v23

    .line 2065
    .end local v23    # "outerDepth":I
    .local v26, "outerDepth":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move/from16 v27, v14

    .line 2065
    .local v27, "type":I
    const/4 v4, 0x1

    if-eq v14, v4, :cond_4a

    move/from16 v14, v27

    if-ne v14, v5, :cond_6

    .line 2066
    .end local v27    # "type":I
    .local v14, "type":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v5, v26

    if-le v4, v5, :cond_5

    .line 2066
    .end local v26    # "outerDepth":I
    .local v5, "outerDepth":I
    goto :goto_1

    .line 2462
    :cond_5
    move/from16 v16, v0

    move/from16 v19, v1

    move/from16 v17, v5

    move/from16 v28, v13

    move/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    move v14, v2

    move v15, v3

    goto/16 :goto_1f

    .line 2067
    .end local v5    # "outerDepth":I
    .restart local v26    # "outerDepth":I
    :cond_6
    move/from16 v5, v26

    .line 2067
    .end local v26    # "outerDepth":I
    .restart local v5    # "outerDepth":I
    :goto_1
    const/4 v4, 0x3

    if-eq v14, v4, :cond_49

    const/4 v4, 0x4

    if-ne v14, v4, :cond_7

    .line 2068
    nop

    .line 2064
    move/from16 v16, v0

    move/from16 v19, v1

    move v14, v2

    move/from16 v17, v5

    move/from16 v28, v13

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    .line 2064
    .end local v0    # "supportsXLargeScreens":I
    .end local v1    # "supportsLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v5    # "outerDepth":I
    .end local v13    # "targetSandboxVersion":I
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .local v14, "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .local v16, "supportsXLargeScreens":I
    .local v17, "outerDepth":I
    .local v19, "supportsLargeScreens":I
    .restart local v21    # "resizeable":I
    .local v28, "targetSandboxVersion":I
    .local v32, "str":Ljava/lang/String;
    .local v42, "anyDensity":I
    :goto_2
    const/4 v0, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x7

    move v15, v3

    goto/16 :goto_1d

    .line 2071
    .end local v16    # "supportsXLargeScreens":I
    .end local v17    # "outerDepth":I
    .end local v19    # "supportsLargeScreens":I
    .end local v21    # "resizeable":I
    .end local v28    # "targetSandboxVersion":I
    .end local v32    # "str":Ljava/lang/String;
    .end local v42    # "anyDensity":I
    .restart local v0    # "supportsXLargeScreens":I
    .restart local v1    # "supportsLargeScreens":I
    .restart local v2    # "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v5    # "outerDepth":I
    .restart local v13    # "targetSandboxVersion":I
    .local v14, "type":I
    .local v15, "str":Ljava/lang/String;
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    :cond_7
    move/from16 v28, v13

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2073
    .local v13, "tagName":Ljava/lang/String;
    .restart local v28    # "targetSandboxVersion":I
    if-eqz v8, :cond_8

    invoke-interface {v8, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 2074
    const-string v4, "PackageParser"

    move/from16 v29, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2074
    .end local v0    # "supportsXLargeScreens":I
    .local v29, "supportsXLargeScreens":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v1

    const-string v1, "Skipping unsupported element under <manifest>: "

    .line 2074
    .end local v1    # "supportsLargeScreens":I
    .local v30, "supportsLargeScreens":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2074
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2078
    nop

    .line 2064
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v5    # "outerDepth":I
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .end local v29    # "supportsXLargeScreens":I
    .end local v30    # "supportsLargeScreens":I
    .local v14, "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v17    # "outerDepth":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v21    # "resizeable":I
    .restart local v32    # "str":Ljava/lang/String;
    .restart local v42    # "anyDensity":I
    :goto_3
    move v14, v2

    move/from16 v17, v5

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v16, v29

    move/from16 v19, v30

    goto :goto_2

    .line 2081
    .end local v16    # "supportsXLargeScreens":I
    .end local v17    # "outerDepth":I
    .end local v19    # "supportsLargeScreens":I
    .end local v21    # "resizeable":I
    .end local v32    # "str":Ljava/lang/String;
    .end local v42    # "anyDensity":I
    .restart local v0    # "supportsXLargeScreens":I
    .restart local v1    # "supportsLargeScreens":I
    .restart local v2    # "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v5    # "outerDepth":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .local v14, "type":I
    .local v15, "str":Ljava/lang/String;
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    :cond_8
    move/from16 v29, v0

    move/from16 v30, v1

    .line 2081
    .end local v0    # "supportsXLargeScreens":I
    .end local v1    # "supportsLargeScreens":I
    .restart local v29    # "supportsXLargeScreens":I
    .restart local v30    # "supportsLargeScreens":I
    const-string v0, "application"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2082
    if-eqz v18, :cond_9

    .line 2088
    const-string v0, "PackageParser"

    const-string v1, "<manifest> has more than one <application>"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2090
    goto :goto_3

    .line 2094
    :cond_9
    const/16 v16, 0x1

    .line 2095
    .end local v18    # "foundApp":Z
    .local v16, "foundApp":Z
    move/from16 v4, v29

    move-object v0, v6

    .line 2095
    .end local v29    # "supportsXLargeScreens":I
    .local v4, "supportsXLargeScreens":I
    move/from16 v8, v30

    move-object v1, v7

    .line 2095
    .end local v30    # "supportsLargeScreens":I
    .local v8, "supportsLargeScreens":I
    move/from16 v31, v14

    move v14, v2

    move-object v2, v9

    .line 2095
    .end local v2    # "supportsNormalScreens":I
    .local v14, "supportsNormalScreens":I
    .local v31, "type":I
    move/from16 v33, v8

    move-object/from16 v32, v15

    const/4 v8, 0x6

    move v15, v3

    move-object v3, v10

    .line 2095
    .end local v3    # "supportsSmallScreens":I
    .end local v8    # "supportsLargeScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v32    # "str":Ljava/lang/String;
    .local v33, "supportsLargeScreens":I
    move/from16 v34, v4

    const/4 v8, 0x1

    const/16 v17, 0x3

    move v4, v11

    .line 2095
    .end local v4    # "supportsXLargeScreens":I
    .local v34, "supportsXLargeScreens":I
    move/from16 v17, v5

    move-object v5, v12

    .line 2095
    .end local v5    # "outerDepth":I
    .restart local v17    # "outerDepth":I
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2096
    const/4 v0, 0x0

    return-object v0

    .line 2460
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_a
    move v2, v14

    move v3, v15

    move/from16 v18, v16

    .line 2460
    .end local v14    # "supportsNormalScreens":I
    .end local v15    # "supportsSmallScreens":I
    .end local v16    # "foundApp":Z
    .end local v33    # "supportsLargeScreens":I
    .restart local v1    # "supportsLargeScreens":I
    .restart local v2    # "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v18    # "foundApp":Z
    :goto_4
    move/from16 v1, v33

    :goto_5
    const/4 v0, 0x0

    const/16 v22, 0x3

    :goto_6
    const/16 v23, 0x7

    goto/16 :goto_1c

    .line 2098
    .end local v1    # "supportsLargeScreens":I
    .end local v17    # "outerDepth":I
    .end local v31    # "type":I
    .end local v32    # "str":Ljava/lang/String;
    .end local v34    # "supportsXLargeScreens":I
    .restart local v5    # "outerDepth":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .local v14, "type":I
    .local v15, "str":Ljava/lang/String;
    .restart local v29    # "supportsXLargeScreens":I
    .restart local v30    # "supportsLargeScreens":I
    :cond_b
    move/from16 v17, v5

    move/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v34, v29

    move/from16 v33, v30

    const/4 v8, 0x1

    move v14, v2

    move v15, v3

    .line 2098
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v5    # "outerDepth":I
    .end local v29    # "supportsXLargeScreens":I
    .end local v30    # "supportsLargeScreens":I
    .local v14, "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v17    # "outerDepth":I
    .restart local v31    # "type":I
    .restart local v32    # "str":Ljava/lang/String;
    .restart local v33    # "supportsLargeScreens":I
    .restart local v34    # "supportsXLargeScreens":I
    const-string/jumbo v0, "overlay"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_10

    .line 2099
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2101
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 2103
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    .line 2105
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 2108
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    .line 2111
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2114
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2117
    .local v1, "propValue":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2119
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    const/16 v4, -0x6c

    if-nez v3, :cond_c

    .line 2120
    const-string v3, "<overlay> does not specify a target package"

    const/4 v5, 0x0

    aput-object v3, v12, v5

    .line 2121
    iput v4, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2122
    const/4 v3, 0x0

    return-object v3

    .line 2125
    :cond_c
    iget v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v3, :cond_f

    iget v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v5, 0x270f

    if-le v3, v5, :cond_d

    goto :goto_8

    .line 2133
    :cond_d
    invoke-direct {v6, v2, v1}, Landroid/content/pm/PackageParser;->checkOverlayRequiredSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2134
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping target and overlay pair "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": overlay ignored due to required system property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    const/4 v3, 0x0

    return-object v3

    .line 2140
    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2142
    .end local v1    # "propValue":Ljava/lang/String;
    .end local v2    # "propName":Ljava/lang/String;
    nop

    .line 2460
    move-object/from16 v20, v0

    .line 2460
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "supportsNormalScreens":I
    .end local v15    # "supportsSmallScreens":I
    .end local v33    # "supportsLargeScreens":I
    .local v1, "supportsLargeScreens":I
    .local v2, "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :goto_7
    move v2, v14

    move v3, v15

    goto/16 :goto_4

    .line 2126
    .end local v3    # "supportsSmallScreens":I
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .local v1, "propValue":Ljava/lang/String;
    .local v2, "propName":Ljava/lang/String;
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "supportsNormalScreens":I
    .restart local v15    # "supportsSmallScreens":I
    .restart local v33    # "supportsLargeScreens":I
    :cond_f
    :goto_8
    const-string v3, "<overlay> priority must be between 0 and 9999"

    const/4 v5, 0x0

    aput-object v3, v12, v5

    .line 2127
    iput v4, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2129
    const/4 v3, 0x0

    return-object v3

    .line 2142
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "propValue":Ljava/lang/String;
    .end local v2    # "propName":Ljava/lang/String;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_10
    const/4 v3, 0x0

    const-string/jumbo v0, "key-sets"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2143
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2144
    return-object v3

    .line 2460
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_11
    move-object v0, v3

    :cond_12
    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    :goto_9
    const/16 v22, 0x3

    :goto_a
    const/16 v23, 0x7

    goto/16 :goto_1b

    .line 2146
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_13
    const-string/jumbo v0, "permission-group"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2147
    move-object v0, v6

    move-object v1, v7

    move v2, v11

    move-object v3, v9

    const/4 v5, 0x4

    move-object v4, v10

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2148
    const/4 v0, 0x0

    return-object v0

    .line 2460
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_14
    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    const/4 v0, 0x0

    goto :goto_9

    .line 2150
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_15
    const/4 v0, 0x0

    const-string/jumbo v3, "permission"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2151
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2152
    return-object v0

    .line 2154
    :cond_16
    const-string/jumbo v3, "permission-tree"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2155
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2156
    return-object v0

    .line 2158
    :cond_17
    const-string/jumbo v3, "uses-permission"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2159
    invoke-direct {v6, v7, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2160
    return-object v0

    .line 2162
    :cond_18
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string/jumbo v0, "uses-permission-sdk-23"

    .line 2163
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2164
    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    const/16 v22, 0x3

    const/16 v23, 0x7

    goto/16 :goto_1a

    .line 2167
    :cond_19
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2168
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2169
    .local v0, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {v9, v10, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2171
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 2174
    invoke-virtual {v1, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 2177
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2180
    iget v4, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v4, v8

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2182
    :cond_1a
    const/4 v5, 0x3

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 2185
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 2188
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2190
    :cond_1b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2191
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2193
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2195
    .end local v0    # "cPref":Landroid/content/pm/ConfigurationInfo;
    nop

    .line 2460
    move-object/from16 v20, v1

    move/from16 v22, v5

    move v2, v14

    move v3, v15

    move/from16 v1, v33

    .line 2460
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "supportsNormalScreens":I
    .end local v15    # "supportsSmallScreens":I
    .end local v33    # "supportsLargeScreens":I
    .local v1, "supportsLargeScreens":I
    .local v2, "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :goto_b
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 2195
    .end local v1    # "supportsLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "supportsNormalScreens":I
    .restart local v15    # "supportsSmallScreens":I
    .restart local v33    # "supportsLargeScreens":I
    :cond_1c
    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string/jumbo v0, "uses-feature"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2196
    invoke-direct {v6, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 2197
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 2199
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_1d

    .line 2200
    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2201
    .local v1, "cPref":Landroid/content/pm/ConfigurationInfo;
    iget v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 2202
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2205
    .end local v1    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_1d
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2207
    .end local v0    # "fi":Landroid/content/pm/FeatureInfo;
    nop

    .line 2460
    move/from16 v22, v5

    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    .line 2460
    .end local v13    # "tagName":Ljava/lang/String;
    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 2207
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_1e
    const-string v0, "feature-group"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2208
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 2209
    .local v0, "group":Landroid/content/pm/FeatureGroupInfo;
    const/4 v1, 0x0

    .line 2210
    .local v1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 2211
    .local v2, "innerDepth":I
    :goto_d
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move/from16 v35, v3

    .line 2211
    .end local v31    # "type":I
    .local v35, "type":I
    if-eq v3, v8, :cond_24

    move/from16 v3, v35

    if-ne v3, v5, :cond_20

    .line 2212
    .end local v35    # "type":I
    .local v3, "type":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_1f

    goto :goto_e

    .line 2232
    :cond_1f
    move/from16 v36, v2

    goto :goto_11

    .line 2213
    :cond_20
    :goto_e
    if-eq v3, v5, :cond_23

    if-ne v3, v4, :cond_21

    .line 2214
    nop

    .line 2210
    move/from16 v36, v2

    goto :goto_10

    .line 2217
    :cond_21
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2218
    .local v8, "innerTagName":Ljava/lang/String;
    const-string/jumbo v4, "uses-feature"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2219
    invoke-direct {v6, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v4

    .line 2222
    .local v4, "featureInfo":Landroid/content/pm/FeatureInfo;
    iget v5, v4, Landroid/content/pm/FeatureInfo;->flags:I

    const/16 v16, 0x1

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2223
    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2224
    .end local v4    # "featureInfo":Landroid/content/pm/FeatureInfo;
    nop

    .line 2229
    move/from16 v36, v2

    goto :goto_f

    .line 2225
    :cond_22
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v2

    const-string v2, "Unknown element under <feature-group>: "

    .line 2225
    .end local v2    # "innerDepth":I
    .local v36, "innerDepth":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2225
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :goto_f
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2230
    .end local v8    # "innerTagName":Ljava/lang/String;
    goto :goto_10

    .line 2210
    .end local v36    # "innerDepth":I
    .restart local v2    # "innerDepth":I
    :cond_23
    move/from16 v36, v2

    .line 2210
    .end local v3    # "type":I
    .restart local v31    # "type":I
    :goto_10
    move/from16 v31, v3

    move/from16 v2, v36

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v8, 0x1

    goto :goto_d

    .line 2232
    .end local v31    # "type":I
    .restart local v35    # "type":I
    :cond_24
    move/from16 v36, v2

    move/from16 v3, v35

    .line 2232
    .end local v2    # "innerDepth":I
    .end local v35    # "type":I
    .restart local v3    # "type":I
    .restart local v36    # "innerDepth":I
    :goto_11
    if-eqz v1, :cond_25

    .line 2233
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/FeatureInfo;

    iput-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2234
    iget-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/FeatureInfo;

    iput-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2236
    :cond_25
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 2238
    .end local v0    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v1    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .end local v36    # "innerDepth":I
    nop

    .line 2460
    move/from16 v31, v3

    goto/16 :goto_7

    .line 2238
    .end local v3    # "type":I
    .restart local v31    # "type":I
    :cond_26
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2239
    sget v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v0, :cond_2f

    .line 2240
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2243
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    .line 2244
    .local v1, "minVers":I
    const/4 v2, 0x0

    .line 2245
    .local v2, "minCode":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2246
    .local v3, "targetVers":I
    const/4 v4, 0x0

    .line 2248
    .local v4, "targetCode":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 2250
    .local v8, "val":Landroid/util/TypedValue;
    if-eqz v8, :cond_28

    .line 2251
    iget v5, v8, Landroid/util/TypedValue;->type:I

    move/from16 v37, v1

    const/4 v1, 0x3

    if-ne v5, v1, :cond_27

    .line 2251
    .end local v1    # "minVers":I
    .local v37, "minVers":I
    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_27

    .line 2252
    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v4, v1

    .line 2259
    move/from16 v5, v37

    goto :goto_12

    .line 2255
    :cond_27
    iget v1, v8, Landroid/util/TypedValue;->data:I

    move v5, v1

    .line 2255
    .end local v37    # "minVers":I
    .local v5, "minVers":I
    move v3, v1

    goto :goto_12

    .line 2259
    .end local v5    # "minVers":I
    .restart local v1    # "minVers":I
    :cond_28
    move/from16 v37, v1

    move/from16 v5, v37

    .line 2259
    .end local v1    # "minVers":I
    .restart local v5    # "minVers":I
    :goto_12
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 2261
    if-eqz v8, :cond_2b

    .line 2262
    iget v1, v8, Landroid/util/TypedValue;->type:I

    move/from16 v38, v3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2a

    .line 2262
    .end local v3    # "targetVers":I
    .local v38, "targetVers":I
    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2a

    .line 2263
    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2264
    if-nez v2, :cond_29

    .line 2265
    move-object v2, v4

    .line 2273
    .end local v38    # "targetVers":I
    .restart local v3    # "targetVers":I
    :cond_29
    move/from16 v3, v38

    goto :goto_13

    .line 2269
    .end local v3    # "targetVers":I
    .restart local v38    # "targetVers":I
    :cond_2a
    iget v3, v8, Landroid/util/TypedValue;->data:I

    .line 2269
    .end local v38    # "targetVers":I
    .restart local v3    # "targetVers":I
    goto :goto_13

    .line 2273
    :cond_2b
    move/from16 v38, v3

    :goto_13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2275
    sget v1, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move-object/from16 v39, v0

    sget-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 2275
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v39, "sa":Landroid/content/res/TypedArray;
    invoke-static {v5, v2, v1, v0, v12}, Landroid/content/pm/PackageParser;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2277
    .local v0, "minSdkVersion":I
    const/16 v1, -0xc

    if-gez v0, :cond_2c

    .line 2278
    iput v1, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2279
    const/4 v1, 0x0

    return-object v1

    .line 2282
    :cond_2c
    and-int/lit16 v1, v11, 0x80

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_14

    :cond_2d
    const/4 v1, 0x0

    .line 2283
    .local v1, "defaultToCurrentDevBranch":Z
    :goto_14
    move-object/from16 v40, v2

    sget-object v2, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 2283
    .end local v2    # "minCode":Ljava/lang/String;
    .local v40, "minCode":Ljava/lang/String;
    invoke-static {v3, v4, v2, v12, v1}, Landroid/content/pm/PackageParser;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    .line 2285
    .local v2, "targetSdkVersion":I
    if-gez v2, :cond_2e

    .line 2286
    move/from16 v41, v1

    const/16 v1, -0xc

    iput v1, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2287
    .end local v1    # "defaultToCurrentDevBranch":Z
    .local v41, "defaultToCurrentDevBranch":Z
    const/4 v1, 0x0

    return-object v1

    .line 2290
    .end local v41    # "defaultToCurrentDevBranch":Z
    .restart local v1    # "defaultToCurrentDevBranch":Z
    :cond_2e
    move/from16 v41, v1

    .line 2290
    .end local v1    # "defaultToCurrentDevBranch":Z
    .restart local v41    # "defaultToCurrentDevBranch":Z
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2291
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2291
    .end local v0    # "minSdkVersion":I
    .end local v2    # "targetSdkVersion":I
    .end local v3    # "targetVers":I
    .end local v4    # "targetCode":Ljava/lang/String;
    .end local v5    # "minVers":I
    .end local v8    # "val":Landroid/util/TypedValue;
    .end local v40    # "minCode":Ljava/lang/String;
    .end local v41    # "defaultToCurrentDevBranch":Z
    goto :goto_15

    .line 2294
    .end local v39    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_2f
    move-object/from16 v39, v20

    .line 2294
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v39    # "sa":Landroid/content/res/TypedArray;
    :goto_15
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2460
    move v2, v14

    move v3, v15

    move/from16 v1, v33

    move-object/from16 v20, v39

    goto/16 :goto_5

    .line 2296
    .end local v39    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_30
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2297
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2300
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    const/4 v8, 0x6

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2303
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v3, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2306
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v8, 0x8

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v3, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2312
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 2315
    .end local v15    # "supportsSmallScreens":I
    .local v3, "supportsSmallScreens":I
    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 2318
    .end local v14    # "supportsNormalScreens":I
    .local v2, "supportsNormalScreens":I
    move/from16 v4, v33

    const/4 v14, 0x3

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 2321
    .end local v33    # "supportsLargeScreens":I
    .local v4, "supportsLargeScreens":I
    move/from16 v15, v34

    invoke-virtual {v0, v1, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 2324
    .end local v34    # "supportsXLargeScreens":I
    .local v1, "supportsXLargeScreens":I
    move/from16 v15, v24

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    .line 2327
    .end local v24    # "resizeable":I
    .local v15, "resizeable":I
    move/from16 v8, v25

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 2331
    .end local v25    # "anyDensity":I
    .local v8, "anyDensity":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2333
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2460
    move-object/from16 v20, v0

    move/from16 v34, v1

    move v1, v4

    move/from16 v25, v8

    move/from16 v22, v14

    move/from16 v24, v15

    goto/16 :goto_b

    .line 2335
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "supportsXLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v4    # "supportsLargeScreens":I
    .end local v8    # "anyDensity":I
    .restart local v14    # "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    .restart local v33    # "supportsLargeScreens":I
    .restart local v34    # "supportsXLargeScreens":I
    :cond_31
    move/from16 v21, v24

    move/from16 v8, v25

    move/from16 v4, v33

    move/from16 v16, v34

    const/4 v5, 0x3

    .line 2335
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .end local v33    # "supportsLargeScreens":I
    .end local v34    # "supportsXLargeScreens":I
    .restart local v4    # "supportsLargeScreens":I
    .restart local v8    # "anyDensity":I
    .local v16, "supportsXLargeScreens":I
    .restart local v21    # "resizeable":I
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2336
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2341
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2344
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2346
    if-eqz v2, :cond_33

    .line 2347
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v1, :cond_32

    .line 2348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 2350
    :cond_32
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 2351
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2355
    :cond_33
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2357
    .end local v2    # "name":Ljava/lang/String;
    nop

    .line 2460
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v4    # "supportsLargeScreens":I
    .end local v8    # "anyDensity":I
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "supportsNormalScreens":I
    .end local v15    # "supportsSmallScreens":I
    .end local v16    # "supportsXLargeScreens":I
    .end local v21    # "resizeable":I
    .local v1, "supportsLargeScreens":I
    .local v2, "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    .restart local v34    # "supportsXLargeScreens":I
    :goto_16
    move-object/from16 v20, v0

    move v1, v4

    move/from16 v22, v5

    move/from16 v25, v8

    move v2, v14

    move v3, v15

    move/from16 v34, v16

    move/from16 v24, v21

    goto/16 :goto_b

    .line 2357
    .end local v1    # "supportsLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .end local v34    # "supportsXLargeScreens":I
    .restart local v4    # "supportsLargeScreens":I
    .restart local v8    # "anyDensity":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "supportsNormalScreens":I
    .restart local v15    # "supportsSmallScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v21    # "resizeable":I
    :cond_34
    const-string v0, "instrumentation"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2358
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v0

    if-nez v0, :cond_35

    .line 2359
    const/4 v0, 0x0

    return-object v0

    .line 2460
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_35
    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v42, v8

    goto/16 :goto_c

    .line 2361
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_36
    const-string/jumbo v0, "original-package"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2362
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2365
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 2367
    .local v2, "orig":Ljava/lang/String;
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 2368
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v1, :cond_37

    .line 2369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 2370
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 2372
    :cond_37
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2375
    :cond_38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2377
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2379
    .end local v2    # "orig":Ljava/lang/String;
    goto :goto_16

    .line 2379
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_39
    const-string v0, "adopt-permissions"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2380
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2383
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 2386
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2388
    if-eqz v2, :cond_3b

    .line 2389
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v1, :cond_3a

    .line 2390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 2392
    :cond_3a
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2395
    :cond_3b
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2397
    .end local v2    # "name":Ljava/lang/String;
    goto/16 :goto_16

    .line 2397
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_3c
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2399
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2400
    nop

    .line 2064
    .end local v4    # "supportsLargeScreens":I
    .end local v8    # "anyDensity":I
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v31    # "type":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v42    # "anyDensity":I
    :goto_17
    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v42, v8

    const/4 v0, 0x0

    const/16 v23, 0x7

    goto/16 :goto_1d

    .line 2402
    .end local v19    # "supportsLargeScreens":I
    .end local v42    # "anyDensity":I
    .restart local v4    # "supportsLargeScreens":I
    .restart local v8    # "anyDensity":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v31    # "type":I
    :cond_3d
    const-string v0, "compatible-screens"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2404
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2405
    goto :goto_17

    .line 2406
    :cond_3e
    const-string/jumbo v0, "supports-input"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2407
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2408
    goto :goto_17

    .line 2410
    :cond_3f
    const-string v0, "eat-comment"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2412
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2413
    goto :goto_17

    .line 2415
    :cond_40
    const-string/jumbo v0, "package"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2416
    sget-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    if-nez v0, :cond_41

    .line 2417
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2418
    goto :goto_17

    .line 2420
    :cond_41
    move-object v0, v6

    move-object v1, v7

    move-object v2, v9

    move-object v3, v10

    move/from16 v19, v4

    move/from16 v42, v8

    const/4 v8, 0x4

    move v4, v11

    .line 2420
    .end local v4    # "supportsLargeScreens":I
    .end local v8    # "anyDensity":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v42    # "anyDensity":I
    move/from16 v22, v5

    const/16 v23, 0x7

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 2422
    const/4 v0, 0x0

    return-object v0

    .line 2425
    .end local v19    # "supportsLargeScreens":I
    .end local v42    # "anyDensity":I
    .restart local v4    # "supportsLargeScreens":I
    .restart local v8    # "anyDensity":I
    :cond_42
    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v42, v8

    const/4 v8, 0x4

    const/16 v23, 0x7

    .line 2425
    .end local v4    # "supportsLargeScreens":I
    .end local v8    # "anyDensity":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v42    # "anyDensity":I
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2426
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_45

    .line 2427
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2429
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 2431
    .local v2, "hash":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2433
    const/4 v1, 0x0

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2434
    if-eqz v2, :cond_44

    .line 2435
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2436
    .local v1, "hashLength":I
    div-int/lit8 v3, v1, 0x2

    new-array v3, v3, [B

    .line 2437
    .local v3, "hashBytes":[B
    const/4 v4, 0x0

    .line 2437
    .local v4, "i":I
    :goto_18
    if-ge v4, v1, :cond_43

    .line 2438
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v43, v0

    const/16 v0, 0x10

    .line 2438
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v43, "sa":Landroid/content/res/TypedArray;
    invoke-static {v8, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    const/16 v20, 0x4

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v4, 0x1

    .line 2439
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move/from16 v44, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2439
    .end local v1    # "hashLength":I
    .local v44, "hashLength":I
    add-int/2addr v8, v0

    int-to-byte v0, v8

    aput-byte v0, v3, v5

    .line 2437
    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    const/4 v8, 0x4

    goto :goto_18

    .line 2441
    .end local v4    # "i":I
    .end local v43    # "sa":Landroid/content/res/TypedArray;
    .end local v44    # "hashLength":I
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "hashLength":I
    :cond_43
    move-object/from16 v43, v0

    move/from16 v44, v1

    .line 2441
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "hashLength":I
    .restart local v43    # "sa":Landroid/content/res/TypedArray;
    .restart local v44    # "hashLength":I
    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2441
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "hashBytes":[B
    .end local v44    # "hashLength":I
    goto :goto_19

    .line 2445
    .end local v43    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    :cond_44
    move-object/from16 v43, v0

    .line 2445
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v43    # "sa":Landroid/content/res/TypedArray;
    goto :goto_19

    .line 2445
    .end local v43    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_45
    move-object/from16 v43, v20

    .line 2445
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v43    # "sa":Landroid/content/res/TypedArray;
    :goto_19
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2460
    move v2, v14

    move v3, v15

    move/from16 v34, v16

    move/from16 v1, v19

    move/from16 v24, v21

    move/from16 v25, v42

    move-object/from16 v20, v43

    const/4 v0, 0x0

    goto :goto_1c

    .line 2454
    .end local v43    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_46
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <manifest>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2454
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2458
    nop

    .line 2064
    const/4 v0, 0x0

    goto :goto_1d

    .line 2164
    .end local v16    # "supportsXLargeScreens":I
    .end local v19    # "supportsLargeScreens":I
    .end local v21    # "resizeable":I
    .end local v42    # "anyDensity":I
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    .restart local v33    # "supportsLargeScreens":I
    .restart local v34    # "supportsXLargeScreens":I
    :cond_47
    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    const/16 v22, 0x3

    const/16 v23, 0x7

    .line 2164
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .end local v33    # "supportsLargeScreens":I
    .end local v34    # "supportsXLargeScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v21    # "resizeable":I
    .restart local v42    # "anyDensity":I
    :goto_1a
    invoke-direct {v6, v7, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 2165
    const/4 v0, 0x0

    return-object v0

    .line 2460
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_48
    const/4 v0, 0x0

    .line 2460
    .end local v16    # "supportsXLargeScreens":I
    .end local v19    # "supportsLargeScreens":I
    .end local v21    # "resizeable":I
    .end local v42    # "anyDensity":I
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    .restart local v33    # "supportsLargeScreens":I
    .restart local v34    # "supportsXLargeScreens":I
    :goto_1b
    move v2, v14

    move v3, v15

    move/from16 v34, v16

    move/from16 v1, v19

    move/from16 v24, v21

    move/from16 v25, v42

    .line 2064
    .end local v14    # "supportsNormalScreens":I
    .end local v15    # "supportsSmallScreens":I
    .end local v33    # "supportsLargeScreens":I
    .local v1, "supportsLargeScreens":I
    .local v2, "supportsNormalScreens":I
    .local v3, "supportsSmallScreens":I
    :goto_1c
    move/from16 v23, v17

    move/from16 v5, v22

    move/from16 v13, v28

    move-object/from16 v15, v32

    move/from16 v0, v34

    goto :goto_1e

    .line 2064
    .end local v17    # "outerDepth":I
    .end local v28    # "targetSandboxVersion":I
    .end local v31    # "type":I
    .end local v32    # "str":Ljava/lang/String;
    .end local v34    # "supportsXLargeScreens":I
    .local v0, "supportsXLargeScreens":I
    .local v5, "outerDepth":I
    .local v13, "targetSandboxVersion":I
    .local v15, "str":Ljava/lang/String;
    :cond_49
    move/from16 v16, v0

    move/from16 v19, v1

    move v14, v2

    move/from16 v22, v4

    move/from16 v17, v5

    move/from16 v28, v13

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    const/4 v0, 0x0

    const/16 v23, 0x7

    move v15, v3

    .end local v0    # "supportsXLargeScreens":I
    .end local v1    # "supportsLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v5    # "outerDepth":I
    .end local v13    # "targetSandboxVersion":I
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .restart local v14    # "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v17    # "outerDepth":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v21    # "resizeable":I
    .restart local v28    # "targetSandboxVersion":I
    .restart local v32    # "str":Ljava/lang/String;
    .restart local v42    # "anyDensity":I
    :goto_1d
    move v2, v14

    move v3, v15

    move/from16 v0, v16

    move/from16 v23, v17

    move/from16 v1, v19

    move/from16 v24, v21

    move/from16 v5, v22

    move/from16 v13, v28

    move-object/from16 v15, v32

    move/from16 v25, v42

    .end local v14    # "supportsNormalScreens":I
    .end local v16    # "supportsXLargeScreens":I
    .end local v17    # "outerDepth":I
    .end local v19    # "supportsLargeScreens":I
    .end local v21    # "resizeable":I
    .end local v28    # "targetSandboxVersion":I
    .end local v32    # "str":Ljava/lang/String;
    .end local v42    # "anyDensity":I
    .restart local v0    # "supportsXLargeScreens":I
    .restart local v1    # "supportsLargeScreens":I
    .restart local v2    # "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v13    # "targetSandboxVersion":I
    .local v15, "str":Ljava/lang/String;
    .restart local v23    # "outerDepth":I
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    :goto_1e
    const/4 v4, 0x4

    move-object/from16 v8, p2

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2462
    .end local v23    # "outerDepth":I
    .restart local v26    # "outerDepth":I
    .restart local v27    # "type":I
    :cond_4a
    move/from16 v16, v0

    move/from16 v19, v1

    move v14, v2

    move/from16 v28, v13

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v17, v26

    move/from16 v31, v27

    move v15, v3

    .end local v0    # "supportsXLargeScreens":I
    .end local v1    # "supportsLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v13    # "targetSandboxVersion":I
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .end local v26    # "outerDepth":I
    .end local v27    # "type":I
    .restart local v14    # "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v17    # "outerDepth":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v21    # "resizeable":I
    .restart local v28    # "targetSandboxVersion":I
    .restart local v31    # "type":I
    .restart local v32    # "str":Ljava/lang/String;
    .restart local v42    # "anyDensity":I
    :goto_1f
    if-nez v18, :cond_4b

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4b

    .line 2463
    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const/4 v2, 0x0

    aput-object v0, v12, v2

    .line 2464
    const/16 v0, -0x6d

    iput v0, v6, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_20

    .line 2467
    :cond_4b
    const/4 v2, 0x0

    :goto_20
    sget-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v0, v0

    .line 2468
    .local v0, "NP":I
    const/4 v1, 0x0

    .line 2469
    .local v1, "implicitPerms":Ljava/lang/StringBuilder;
    move-object v3, v1

    move v1, v2

    .line 2469
    .local v1, "ip":I
    .local v3, "implicitPerms":Ljava/lang/StringBuilder;
    :goto_21
    if-ge v1, v0, :cond_4f

    .line 2470
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v4, v4, v1

    .line 2472
    .local v4, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v8, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v5, v8, :cond_4c

    .line 2473
    goto :goto_23

    .line 2475
    :cond_4c
    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 2476
    if-nez v3, :cond_4d

    .line 2477
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v5

    .line 2478
    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2479
    const-string v5, ": compat added "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2481
    :cond_4d
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2483
    :goto_22
    iget-object v5, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2484
    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2469
    .end local v4    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 2487
    .end local v1    # "ip":I
    :cond_4f
    :goto_23
    if-eqz v3, :cond_50

    .line 2488
    const-string v1, "PackageParser"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_50
    sget-object v1, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    array-length v1, v1

    .line 2492
    .local v1, "NS":I
    move v4, v2

    .line 2492
    .local v4, "is":I
    :goto_24
    if-ge v4, v1, :cond_54

    .line 2493
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    aget-object v5, v5, v4

    .line 2495
    .local v5, "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    if-ge v8, v13, :cond_53

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    .line 2496
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_51

    .line 2497
    goto :goto_26

    .line 2499
    :cond_51
    move v8, v2

    .line 2499
    .local v8, "in":I
    :goto_25
    iget-object v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    array-length v13, v13

    if-ge v8, v13, :cond_53

    .line 2500
    iget-object v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    aget-object v13, v13, v8

    .line 2501
    .local v13, "perm":Ljava/lang/String;
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 2502
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    .end local v13    # "perm":Ljava/lang/String;
    :cond_52
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_25

    .line 2492
    .end local v5    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    .end local v8    # "in":I
    :cond_53
    :goto_26
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_24

    .line 2507
    .end local v4    # "is":I
    :cond_54
    if-ltz v15, :cond_55

    if-lez v15, :cond_56

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_56

    .line 2510
    :cond_55
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2512
    :cond_56
    if-eqz v14, :cond_57

    .line 2513
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2515
    :cond_57
    if-ltz v19, :cond_58

    if-lez v19, :cond_59

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_59

    .line 2518
    :cond_58
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2520
    :cond_59
    if-ltz v16, :cond_5a

    if-lez v16, :cond_5b

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x9

    if-lt v2, v4, :cond_5b

    .line 2523
    :cond_5a
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2525
    :cond_5b
    if-ltz v21, :cond_5c

    if-lez v21, :cond_5d

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_5d

    .line 2528
    :cond_5c
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2530
    :cond_5d
    if-ltz v42, :cond_5e

    if-lez v42, :cond_5f

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_5f

    .line 2533
    :cond_5e
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2539
    :cond_5f
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->usesCompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2540
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V

    .line 2542
    :cond_60
    return-object v7
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 34
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 3361
    move-object/from16 v11, p5

    iget-object v10, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3362
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3364
    .local v9, "pkgName":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3367
    .local v8, "sa":Landroid/content/res/TypedArray;
    const-string v3, "<application>"

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x2a

    const/16 v18, 0x16

    const/16 v19, 0x1e

    move-object v0, v14

    move-object v1, v10

    move-object v2, v11

    move-object v4, v8

    move-object/from16 v20, v8

    move/from16 v8, v16

    .end local v8    # "sa":Landroid/content/res/TypedArray;
    .local v20, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v21, v9

    move/from16 v9, v17

    .line 3367
    .end local v9    # "pkgName":Ljava/lang/String;
    .local v21, "pkgName":Ljava/lang/String;
    move-object/from16 v22, v10

    move/from16 v10, v18

    .line 3367
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v22, "ai":Landroid/content/pm/ApplicationInfo;
    move-object v13, v11

    move/from16 v11, v19

    invoke-static/range {v0 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v11, -0x6c

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 3375
    move-object/from16 v7, v20

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3376
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    iput v11, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3377
    return v10

    .line 3380
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_0
    move-object/from16 v7, v20

    .line 3380
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v7    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v9, v22

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 3380
    .end local v22    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 3381
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 3384
    :cond_1
    const/4 v8, 0x4

    const/16 v0, 0x400

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 3387
    .local v6, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 3388
    move-object/from16 v5, v21

    invoke-static {v5, v6, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3388
    .end local v21    # "pkgName":Ljava/lang/String;
    .local v5, "pkgName":Ljava/lang/String;
    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    goto :goto_0

    .line 3392
    .end local v5    # "pkgName":Ljava/lang/String;
    .restart local v21    # "pkgName":Ljava/lang/String;
    :cond_2
    move-object/from16 v5, v21

    .line 3392
    .end local v21    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x11

    const/4 v4, 0x1

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 3394
    .local v16, "allowBackup":Z
    const/16 v3, 0x10

    const/16 v2, 0x20

    if-eqz v16, :cond_8

    .line 3395
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v17, 0x8000

    or-int v11, v11, v17

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3400
    invoke-virtual {v7, v3, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 3403
    .local v11, "backupAgent":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 3404
    invoke-static {v5, v11, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3410
    const/16 v3, 0x12

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3413
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x10000

    or-int v3, v3, v17

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3415
    :cond_3
    const/16 v3, 0x15

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3418
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x20000

    or-int v3, v3, v17

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3420
    :cond_4
    invoke-virtual {v7, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3423
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x4000000

    or-int v3, v3, v17

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3425
    :cond_5
    const/16 v3, 0x28

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3428
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3432
    :cond_6
    const/16 v3, 0x23

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 3434
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_8

    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v1, :cond_8

    .line 3440
    iget v1, v3, Landroid/util/TypedValue;->data:I

    if-nez v1, :cond_7

    const/4 v1, -0x1

    goto :goto_1

    :cond_7
    move v1, v10

    :goto_1
    iput v1, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 3447
    .end local v3    # "v":Landroid/util/TypedValue;
    .end local v11    # "backupAgent":Ljava/lang/String;
    :cond_8
    invoke-virtual {v7, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 3449
    const/16 v1, 0xd

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 3452
    const/16 v1, 0x8

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3456
    const/16 v3, 0x2d

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 3458
    .local v3, "requiredFeature":Ljava/lang/String;
    if-eqz v3, :cond_9

    iget-object v11, v15, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v11, v3}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 3459
    :cond_9
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v11, v1

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3463
    .end local v3    # "requiredFeature":Ljava/lang/String;
    :cond_a
    const/16 v3, 0x1b

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3466
    iput-boolean v4, v14, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 3469
    :cond_b
    const/16 v3, 0x1c

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3471
    .local v11, "restrictedAccountType":Ljava/lang/String;
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_c

    .line 3472
    iput-object v11, v14, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 3475
    :cond_c
    const/16 v1, 0x1d

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3477
    .local v1, "requiredAccountType":Ljava/lang/String;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_d

    .line 3478
    iput-object v1, v14, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 3481
    :cond_d
    const/16 v0, 0xa

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move-object/from16 v29, v1

    const/4 v1, 0x2

    .line 3481
    .end local v1    # "requiredAccountType":Ljava/lang/String;
    .local v29, "requiredAccountType":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 3484
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3487
    :cond_e
    const/16 v0, 0x14

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3490
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3493
    :cond_f
    const/16 v0, 0x17

    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_10

    move v1, v4

    goto :goto_2

    :cond_10
    move v1, v10

    :goto_2
    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 3496
    iget-boolean v0, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    if-eqz v0, :cond_11

    .line 3497
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3500
    :cond_11
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3503
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v8

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3506
    :cond_12
    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3509
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v2

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3512
    :cond_13
    const/4 v0, 0x5

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3515
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3519
    :cond_14
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_15

    .line 3520
    const/16 v0, 0xf

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3523
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3527
    :cond_15
    const/16 v0, 0x18

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3530
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3533
    :cond_16
    const/16 v1, 0x24

    iget-object v3, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1c

    if-ge v3, v8, :cond_17

    move v3, v4

    goto :goto_3

    :cond_17
    move v3, v10

    :goto_3
    invoke-virtual {v7, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3536
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x8000000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3539
    :cond_18
    const/16 v1, 0x1a

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3542
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x400000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3545
    :cond_19
    const/16 v1, 0x21

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3548
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3551
    :cond_1a
    const/16 v1, 0x22

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3554
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3557
    :cond_1b
    const/16 v1, 0x26

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3560
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v1, v2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3562
    :cond_1c
    const/16 v1, 0x27

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3565
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3568
    :cond_1d
    const/16 v1, 0x25

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3569
    const/16 v0, 0x25

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3570
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_4

    .line 3572
    :cond_1e
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_4

    .line 3574
    :cond_1f
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v0, :cond_20

    .line 3575
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3578
    :cond_20
    :goto_4
    const/16 v0, 0x2c

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 3580
    const/16 v0, 0x29

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 3583
    const/16 v0, 0x2b

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->category:I

    .line 3588
    const/4 v0, 0x6

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 3590
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_21
    const/4 v2, 0x0

    :goto_5
    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 3592
    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_22

    .line 3593
    const/16 v2, 0xc

    const/16 v3, 0x400

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 3603
    .end local v0    # "str":Ljava/lang/String;
    .local v8, "str":Ljava/lang/String;
    :goto_6
    move-object v8, v0

    goto :goto_7

    .line 3600
    .end local v8    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_22
    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 3603
    .end local v0    # "str":Ljava/lang/String;
    .restart local v8    # "str":Ljava/lang/String;
    :goto_7
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v8, v13}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3605
    const/16 v0, 0x30

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 3607
    .local v3, "factory":Ljava/lang/String;
    if-eqz v3, :cond_23

    .line 3608
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v3, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 3611
    :cond_23
    aget-object v0, v13, v10

    if-nez v0, :cond_28

    .line 3613
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_24

    .line 3614
    const/16 v0, 0xb

    const/16 v2, 0x400

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 3621
    .local v2, "pname":Ljava/lang/CharSequence;
    :goto_8
    move-object v2, v0

    goto :goto_9

    .line 3621
    .end local v2    # "pname":Ljava/lang/CharSequence;
    :cond_24
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 3624
    .restart local v2    # "pname":Ljava/lang/CharSequence;
    :goto_9
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    iget-object v4, v15, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object/from16 v18, v29

    move-object/from16 v1, v17

    .line 3624
    .end local v29    # "requiredAccountType":Ljava/lang/String;
    .local v18, "requiredAccountType":Ljava/lang/String;
    move-object/from16 v17, v3

    const/16 v19, 0x10

    move/from16 v3, p4

    .line 3624
    .end local v3    # "factory":Ljava/lang/String;
    .local v17, "factory":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v31, v5

    move-object v5, v13

    .line 3624
    .end local v5    # "pkgName":Ljava/lang/String;
    .local v31, "pkgName":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3627
    const/16 v0, 0x9

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 3630
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3632
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x2000000

    or-int/2addr v0, v3

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3635
    :cond_25
    const/16 v0, 0x2f

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3638
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v5, 0x2

    or-int/2addr v0, v5

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3642
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 3643
    const-string v0, "cantSaveState applications can not use custom processes"

    const/4 v1, 0x0

    aput-object v0, v13, v1

    .line 3643
    .end local v2    # "pname":Ljava/lang/CharSequence;
    goto :goto_a

    .line 3648
    :cond_26
    const/4 v1, 0x0

    goto :goto_a

    :cond_27
    const/4 v1, 0x0

    const/4 v5, 0x2

    goto :goto_a

    .line 3648
    .end local v17    # "factory":Ljava/lang/String;
    .end local v18    # "requiredAccountType":Ljava/lang/String;
    .end local v31    # "pkgName":Ljava/lang/String;
    .restart local v3    # "factory":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v29    # "requiredAccountType":Ljava/lang/String;
    :cond_28
    move-object/from16 v17, v3

    move-object/from16 v31, v5

    move v1, v10

    move-object/from16 v18, v29

    const/4 v5, 0x2

    const/16 v19, 0x10

    move v10, v4

    .line 3648
    .end local v3    # "factory":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v29    # "requiredAccountType":Ljava/lang/String;
    .restart local v17    # "factory":Ljava/lang/String;
    .restart local v18    # "requiredAccountType":Ljava/lang/String;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :goto_a
    const/16 v0, 0x19

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3651
    const/16 v0, 0x2e

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3653
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3654
    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 3655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class loader name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v13, v1

    goto :goto_b

    .line 3658
    :cond_29
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3660
    aget-object v0, v13, v1

    if-eqz v0, :cond_2a

    .line 3661
    const/16 v0, -0x6c

    iput v0, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3662
    return v1

    .line 3665
    :cond_2a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 3668
    .local v4, "innerDepth":I
    new-instance v0, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser$1;)V

    move-object/from16 v20, v6

    move-object v6, v0

    .line 3670
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .local v20, "manageSpaceActivity":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3671
    .local v0, "hasActivityOrder":Z
    const/4 v1, 0x0

    .line 3672
    .local v1, "hasReceiverOrder":Z
    move/from16 v21, v0

    move/from16 v22, v1

    move-object/from16 v25, v7

    const/4 v0, 0x0

    .line 3672
    .end local v1    # "hasReceiverOrder":Z
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .local v0, "hasServiceOrder":Z
    .local v21, "hasActivityOrder":Z
    .local v22, "hasReceiverOrder":Z
    .local v25, "sa":Landroid/content/res/TypedArray;
    :goto_c
    move/from16 v26, v0

    .line 3673
    .end local v0    # "hasServiceOrder":Z
    .local v26, "hasServiceOrder":Z
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v7, v0

    .line 3673
    .local v7, "type":I
    if-eq v0, v10, :cond_4d

    const/4 v0, 0x3

    if-ne v7, v0, :cond_2c

    .line 3674
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v4, :cond_2b

    goto :goto_d

    .line 3862
    :cond_2b
    move/from16 v29, v4

    move/from16 v30, v7

    move-object/from16 v23, v8

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v31

    move-object/from16 v7, p2

    goto/16 :goto_1a

    .line 3675
    :cond_2c
    :goto_d
    const/4 v0, 0x3

    if-eq v7, v0, :cond_4c

    const/4 v3, 0x4

    if-ne v7, v3, :cond_2d

    .line 3676
    nop

    .line 3672
    move/from16 v27, v3

    move/from16 v29, v4

    move-object/from16 v23, v8

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v31

    const/16 v1, -0x6c

    const/4 v2, 0x0

    move-object/from16 v7, p2

    goto/16 :goto_19

    .line 3679
    :cond_2d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3680
    .local v2, "tagName":Ljava/lang/String;
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3681
    const/16 v27, 0x0

    iget-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object v0, v15

    move/from16 v28, v1

    move-object v1, v14

    move-object/from16 v32, v2

    move-object/from16 v2, p2

    .line 3681
    .end local v2    # "tagName":Ljava/lang/String;
    .local v32, "tagName":Ljava/lang/String;
    move/from16 v23, v3

    move-object v3, v12

    move/from16 v29, v4

    move/from16 v4, p4

    .line 3681
    .end local v4    # "innerDepth":I
    .local v29, "innerDepth":I
    move-object v5, v13

    move/from16 v30, v7

    move/from16 v7, v27

    .line 3681
    .end local v7    # "type":I
    .local v30, "type":I
    move/from16 v27, v23

    move-object/from16 v23, v8

    move/from16 v8, v28

    .line 3681
    .end local v8    # "str":Ljava/lang/String;
    .local v23, "str":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    .line 3683
    .local v0, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v0, :cond_2e

    .line 3684
    const/16 v1, -0x6c

    iput v1, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3685
    const/4 v2, 0x0

    return v2

    .line 3688
    :cond_2e
    const/16 v1, -0x6c

    const/4 v2, 0x0

    iget v3, v0, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v3, :cond_2f

    move v3, v10

    goto :goto_e

    :cond_2f
    move v3, v2

    :goto_e
    or-int v3, v21, v3

    .line 3689
    .end local v21    # "hasActivityOrder":Z
    .local v3, "hasActivityOrder":Z
    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3691
    .end local v0    # "a":Landroid/content/pm/PackageParser$Activity;
    nop

    .line 3860
    move-object/from16 v7, p2

    move/from16 v21, v3

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    .line 3860
    .end local v3    # "hasActivityOrder":Z
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v31    # "pkgName":Ljava/lang/String;
    .end local v32    # "tagName":Ljava/lang/String;
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "pkgName":Ljava/lang/String;
    .restart local v21    # "hasActivityOrder":Z
    .local v24, "restrictedAccountType":Ljava/lang/String;
    :cond_30
    :goto_f
    move-object/from16 v11, v31

    goto/16 :goto_18

    .line 3691
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "str":Ljava/lang/String;
    .end local v24    # "restrictedAccountType":Ljava/lang/String;
    .end local v29    # "innerDepth":I
    .end local v30    # "type":I
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v4    # "innerDepth":I
    .restart local v7    # "type":I
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "restrictedAccountType":Ljava/lang/String;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_31
    move-object/from16 v32, v2

    move/from16 v27, v3

    move/from16 v29, v4

    move/from16 v30, v7

    move-object/from16 v23, v8

    const/16 v1, -0x6c

    const/4 v2, 0x0

    .line 3691
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "innerDepth":I
    .end local v7    # "type":I
    .end local v8    # "str":Ljava/lang/String;
    .restart local v23    # "str":Ljava/lang/String;
    .restart local v29    # "innerDepth":I
    .restart local v30    # "type":I
    .restart local v32    # "tagName":Ljava/lang/String;
    const-string/jumbo v0, "receiver"

    move-object/from16 v3, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3691
    .end local v32    # "tagName":Ljava/lang/String;
    .local v3, "tagName":Ljava/lang/String;
    if-eqz v0, :cond_34

    .line 3692
    const/4 v0, 0x1

    const/4 v4, 0x0

    move-object v7, v15

    move-object v8, v14

    move-object v5, v9

    move-object/from16 v9, p2

    .line 3692
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    move v1, v10

    move-object v10, v12

    move-object/from16 v24, v11

    const/16 v1, -0x6c

    move/from16 v11, p4

    .line 3692
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .restart local v24    # "restrictedAccountType":Ljava/lang/String;
    move-object v12, v13

    move-object v13, v6

    move v14, v0

    move-object v0, v15

    move v15, v4

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v4

    .line 3694
    .local v4, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v4, :cond_32

    .line 3695
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3696
    return v2

    .line 3699
    :cond_32
    iget v7, v4, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v7, :cond_33

    const/4 v7, 0x1

    goto :goto_10

    :cond_33
    move v7, v2

    :goto_10
    or-int v7, v22, v7

    .line 3700
    .end local v22    # "hasReceiverOrder":Z
    .local v7, "hasReceiverOrder":Z
    move-object/from16 v14, p1

    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3702
    .end local v4    # "a":Landroid/content/pm/PackageParser$Activity;
    nop

    .line 3860
    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v22, v7

    .line 3860
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "hasReceiverOrder":Z
    .end local v31    # "pkgName":Ljava/lang/String;
    .local v11, "pkgName":Ljava/lang/String;
    .restart local v22    # "hasReceiverOrder":Z
    :goto_11
    move-object/from16 v11, v31

    move-object/from16 v7, p2

    goto/16 :goto_18

    .line 3702
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "restrictedAccountType":Ljava/lang/String;
    .restart local v3    # "tagName":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "restrictedAccountType":Ljava/lang/String;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_34
    move-object v5, v9

    move-object/from16 v24, v11

    move-object v0, v15

    .line 3702
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v24    # "restrictedAccountType":Ljava/lang/String;
    const-string/jumbo v4, "service"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3703
    move-object v7, v0

    move-object v8, v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v4

    .line 3704
    .local v4, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v4, :cond_35

    .line 3705
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3706
    return v2

    .line 3709
    :cond_35
    iget v7, v4, Landroid/content/pm/PackageParser$Service;->order:I

    if-eqz v7, :cond_36

    const/4 v7, 0x1

    goto :goto_12

    :cond_36
    move v7, v2

    :goto_12
    or-int v7, v26, v7

    .line 3710
    .end local v26    # "hasServiceOrder":Z
    .local v7, "hasServiceOrder":Z
    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3712
    .end local v4    # "s":Landroid/content/pm/PackageParser$Service;
    nop

    .line 3860
    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v26, v7

    goto :goto_11

    .line 3712
    .end local v7    # "hasServiceOrder":Z
    .restart local v26    # "hasServiceOrder":Z
    :cond_37
    const-string/jumbo v4, "provider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 3713
    move-object v7, v0

    move-object v8, v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v4

    .line 3714
    .local v4, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v4, :cond_38

    .line 3715
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3716
    return v2

    .line 3719
    :cond_38
    iget-object v7, v14, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3721
    .end local v4    # "p":Landroid/content/pm/PackageParser$Provider;
    nop

    .line 3860
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    goto/16 :goto_f

    .line 3721
    :cond_39
    const-string v4, "activity-alias"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 3722
    move-object v7, v0

    move-object v8, v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v4

    .line 3723
    .local v4, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v4, :cond_3a

    .line 3724
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3725
    return v2

    .line 3728
    :cond_3a
    iget v7, v4, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v7, :cond_3b

    const/4 v7, 0x1

    goto :goto_13

    :cond_3b
    move v7, v2

    :goto_13
    or-int v7, v21, v7

    .line 3729
    .end local v21    # "hasActivityOrder":Z
    .local v7, "hasActivityOrder":Z
    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3731
    .end local v4    # "a":Landroid/content/pm/PackageParser$Activity;
    nop

    .line 3860
    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v21, v7

    goto/16 :goto_11

    .line 3731
    .end local v7    # "hasActivityOrder":Z
    .restart local v21    # "hasActivityOrder":Z
    :cond_3c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 3735
    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct {v0, v7, v8, v4, v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v14, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_30

    .line 3737
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3738
    return v2

    .line 3740
    :cond_3d
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    const-string/jumbo v4, "static-library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 3741
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3746
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3748
    .local v10, "lname":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 3750
    .local v13, "version":I
    const/4 v11, 0x2

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 3754
    .local v15, "versionMajor":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3757
    if-eqz v10, :cond_42

    if-gez v13, :cond_3e

    .line 3758
    move-object/from16 v11, v31

    goto :goto_15

    .line 3765
    :cond_3e
    iget-object v11, v14, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v11, :cond_3f

    .line 3766
    const-string/jumbo v1, "sharedUserId not allowed in static shared library"

    aput-object v1, v9, v2

    .line 3767
    const/16 v1, -0x6b

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3768
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3769
    return v2

    .line 3772
    :cond_3f
    iget-object v11, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v11, :cond_40

    .line 3773
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Multiple static-shared libs for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v31

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3773
    .end local v31    # "pkgName":Ljava/lang/String;
    .local v12, "pkgName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v2

    .line 3774
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3775
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3776
    return v2

    .line 3779
    .end local v12    # "pkgName":Ljava/lang/String;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_40
    move-object/from16 v11, v31

    .line 3779
    .end local v31    # "pkgName":Ljava/lang/String;
    .local v11, "pkgName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 3780
    if-ltz v13, :cond_41

    .line 3781
    nop

    .line 3782
    invoke-static {v15, v13}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v1

    iput-wide v1, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    goto :goto_14

    .line 3784
    :cond_41
    int-to-long v1, v13

    iput-wide v1, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 3786
    :goto_14
    iget v1, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3788
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3790
    .end local v10    # "lname":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v15    # "versionMajor":I
    nop

    .line 3860
    move-object/from16 v25, v4

    const/16 v1, -0x6c

    goto :goto_16

    .line 3758
    .end local v11    # "pkgName":Ljava/lang/String;
    .restart local v10    # "lname":Ljava/lang/String;
    .restart local v13    # "version":I
    .restart local v15    # "versionMajor":I
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_42
    move-object/from16 v11, v31

    .line 3758
    .end local v31    # "pkgName":Ljava/lang/String;
    .restart local v11    # "pkgName":Ljava/lang/String;
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad static-library declaration name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    .line 3760
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3761
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3762
    return v2

    .line 3790
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "lname":Ljava/lang/String;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v15    # "versionMajor":I
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_43
    move-object/from16 v11, v31

    .line 3790
    .end local v31    # "pkgName":Ljava/lang/String;
    .restart local v11    # "pkgName":Ljava/lang/String;
    const-string/jumbo v4, "library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 3791
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3796
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3799
    .restart local v10    # "lname":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3801
    if-eqz v10, :cond_44

    .line 3802
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 3803
    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v2, v10}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 3804
    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v2, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 3809
    :cond_44
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3811
    .end local v10    # "lname":Ljava/lang/String;
    nop

    .line 3860
    move-object/from16 v25, v4

    .line 3860
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    :cond_45
    :goto_16
    const/4 v2, 0x0

    goto :goto_18

    .line 3811
    .restart local v3    # "tagName":Ljava/lang/String;
    :cond_46
    const-string/jumbo v2, "uses-static-library"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 3812
    invoke-direct {v0, v14, v7, v8, v9}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 3813
    const/4 v2, 0x0

    return v2

    .line 3816
    :cond_47
    const/4 v2, 0x0

    const-string/jumbo v4, "uses-library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 3817
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3822
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3824
    .restart local v10    # "lname":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v4, v12, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 3828
    .local v13, "req":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3830
    if-eqz v10, :cond_49

    .line 3831
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 3832
    if-eqz v13, :cond_48

    .line 3833
    iget-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    goto :goto_17

    .line 3835
    :cond_48
    iget-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3840
    :cond_49
    :goto_17
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3842
    .end local v10    # "lname":Ljava/lang/String;
    .end local v13    # "req":Z
    nop

    .line 3860
    move-object/from16 v25, v4

    goto :goto_18

    .line 3842
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    :cond_4a
    const-string/jumbo v4, "uses-package"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3845
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3860
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_18
    goto :goto_19

    .line 3849
    .restart local v3    # "tagName":Ljava/lang/String;
    :cond_4b
    const-string v4, "PackageParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <application>: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " at "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3851
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3849
    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3853
    goto :goto_19

    .line 3672
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "str":Ljava/lang/String;
    .end local v24    # "restrictedAccountType":Ljava/lang/String;
    .end local v29    # "innerDepth":I
    .end local v30    # "type":I
    .local v4, "innerDepth":I
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "restrictedAccountType":Ljava/lang/String;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_4c
    move/from16 v29, v4

    move-object/from16 v23, v8

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v31

    const/16 v1, -0x6c

    const/4 v2, 0x0

    move-object/from16 v7, p2

    const/16 v27, 0x4

    .end local v26    # "hasServiceOrder":Z
    .local v0, "hasServiceOrder":Z
    :goto_19
    move-object v15, v0

    move-object v12, v8

    move-object v13, v9

    move-object/from16 v31, v11

    move-object/from16 v8, v23

    move-object/from16 v11, v24

    move/from16 v0, v26

    move/from16 v4, v29

    const/4 v10, 0x1

    move-object v9, v5

    const/4 v5, 0x2

    goto/16 :goto_c

    .line 3862
    .end local v0    # "hasServiceOrder":Z
    .local v7, "type":I
    .restart local v26    # "hasServiceOrder":Z
    :cond_4d
    move/from16 v29, v4

    move/from16 v30, v7

    move-object/from16 v23, v8

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v31

    move-object/from16 v7, p2

    .end local v4    # "innerDepth":I
    .end local v7    # "type":I
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v31    # "pkgName":Ljava/lang/String;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "pkgName":Ljava/lang/String;
    .restart local v23    # "str":Ljava/lang/String;
    .restart local v24    # "restrictedAccountType":Ljava/lang/String;
    .restart local v29    # "innerDepth":I
    .restart local v30    # "type":I
    :goto_1a
    if-eqz v21, :cond_4e

    .line 3863
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    sget-object v2, Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3865
    :cond_4e
    if-eqz v22, :cond_4f

    .line 3866
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    sget-object v2, Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3868
    :cond_4f
    if-eqz v26, :cond_50

    .line 3869
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    sget-object v2, Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3873
    :cond_50
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 3875
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageBackwardCompatibility;->modifySharedLibraries(Landroid/content/pm/PackageParser$Package;)V

    .line 3877
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 3878
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_1b

    .line 3880
    :cond_51
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3883
    :goto_1b
    const/4 v1, 0x1

    return v1
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1224
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 1225
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v2, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1226
    :cond_0
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a coreApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1231
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 1233
    .local v2, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1235
    :try_start_0
    invoke-static {v1}, Landroid/content/pm/split/SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;

    move-result-object v3

    move-object v2, v3

    .line 1236
    new-instance v3, Landroid/content/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v3, v1, v2, p2}, Landroid/content/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    :try_end_0
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    .local v3, "assetLoader":Landroid/content/pm/split/SplitAssetLoader;
    goto :goto_1

    .line 1237
    .end local v3    # "assetLoader":Landroid/content/pm/split/SplitAssetLoader;
    :catch_0
    move-exception v0

    .line 1238
    .local v0, "e":Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x65

    invoke-virtual {v0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1241
    .end local v0    # "e":Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    :cond_2
    new-instance v3, Landroid/content/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v3, v1, p2}, Landroid/content/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1245
    .restart local v3    # "assetLoader":Landroid/content/pm/split/SplitAssetLoader;
    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/content/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 1246
    .local v4, "assets":Landroid/content/res/AssetManager;
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v5, "baseApk":Ljava/io/File;
    invoke-direct {p0, v5, v4, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1248
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_4

    .line 1253
    iget-object v7, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1254
    iget-object v7, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v7, v7

    .line 1255
    .local v7, "num":I
    iget-object v8, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 1256
    iget-object v8, v1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 1257
    iget-object v8, v1, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 1258
    new-array v8, v7, [I

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 1259
    new-array v8, v7, [I

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 1260
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1261
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v8, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1262
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-array v9, v7, [Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1264
    nop

    .local v0, "i":I
    :goto_2
    if-ge v0, v7, :cond_3

    .line 1265
    invoke-interface {v3, v0}, Landroid/content/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v8

    .line 1266
    .local v8, "splitAssets":Landroid/content/res/AssetManager;
    invoke-direct {p0, v6, v0, v8, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 1264
    .end local v8    # "splitAssets":Landroid/content/res/AssetManager;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1270
    .end local v0    # "i":I
    .end local v7    # "num":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1271
    iget-boolean v0, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1272
    nop

    .line 1277
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1272
    return-object v6

    .line 1249
    :cond_4
    :try_start_2
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v7, -0x64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse base APK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1277
    .end local v4    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "baseApk":Ljava/io/File;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1273
    :catch_1
    move-exception v0

    .line 1274
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v5, -0x66

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1277
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 25
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 911
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 912
    .local v0, "files":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 917
    const/4 v1, 0x0

    .line 918
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 920
    .local v2, "versionCode":I
    const-string/jumbo v3, "parseApkLite"

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 921
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 922
    .local v3, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    array-length v6, v0

    const/4 v7, 0x0

    move v8, v2

    move-object v2, v1

    move v1, v7

    .line 922
    .end local v1    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .local v8, "versionCode":I
    :goto_0
    const/16 v9, -0x65

    if-ge v1, v6, :cond_5

    aget-object v10, v0, v1

    .line 923
    .local v10, "file":Ljava/io/File;
    invoke-static {v10}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 924
    move/from16 v11, p1

    invoke-static {v10, v11}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v12

    .line 928
    .local v12, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v2, :cond_0

    .line 929
    iget-object v2, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 930
    iget v8, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    goto :goto_1

    .line 932
    :cond_0
    iget-object v13, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 937
    iget v13, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    if-ne v8, v13, :cond_2

    .line 945
    :goto_1
    iget-object v13, v12, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1

    .line 945
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    goto :goto_2

    .line 946
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_1
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Split name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " defined more than once; most recent was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v9, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 938
    :cond_2
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v9, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 933
    :cond_3
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v9, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 922
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_4
    move/from16 v11, p1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 952
    :cond_5
    move/from16 v11, p1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 954
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    .line 955
    .local v1, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-eqz v1, :cond_7

    .line 961
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 963
    .local v4, "size":I
    const/4 v5, 0x0

    .line 964
    .local v5, "splitNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 965
    .local v6, "isFeatureSplits":[Z
    const/4 v9, 0x0

    .line 966
    .local v9, "usesSplitNames":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 967
    .local v10, "configForSplits":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 968
    .local v12, "splitCodePaths":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 969
    .local v13, "splitRevisionCodes":[I
    const/16 v21, 0x0

    .line 970
    .local v21, "splitClassLoaderNames":[Ljava/lang/String;
    if-lez v4, :cond_6

    .line 971
    new-array v5, v4, [Ljava/lang/String;

    .line 972
    new-array v6, v4, [Z

    .line 973
    new-array v9, v4, [Ljava/lang/String;

    .line 974
    new-array v10, v4, [Ljava/lang/String;

    .line 975
    new-array v12, v4, [Ljava/lang/String;

    .line 976
    new-array v13, v4, [I

    .line 978
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v5, v14

    check-cast v5, [Ljava/lang/String;

    .line 979
    sget-object v14, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v5, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 981
    nop

    .line 981
    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_6

    .line 982
    aget-object v14, v5, v7

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$ApkLite;

    .line 983
    .local v14, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    aput-object v15, v9, v7

    .line 984
    iget-boolean v15, v14, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    aput-boolean v15, v6, v7

    .line 985
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    aput-object v15, v10, v7

    .line 986
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v15, v12, v7

    .line 987
    iget v15, v14, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v15, v13, v7

    .line 981
    .end local v14    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 991
    .end local v7    # "i":I
    :cond_6
    move-object v7, v12

    move-object/from16 v22, v13

    .line 991
    .end local v12    # "splitCodePaths":[Ljava/lang/String;
    .end local v13    # "splitRevisionCodes":[I
    .local v7, "splitCodePaths":[Ljava/lang/String;
    .local v22, "splitRevisionCodes":[I
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    .line 992
    .local v23, "codePath":Ljava/lang/String;
    new-instance v24, Landroid/content/pm/PackageParser$PackageLite;

    move-object/from16 v12, v24

    move-object/from16 v13, v23

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v7

    move-object/from16 v20, v22

    invoke-direct/range {v12 .. v20}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v24

    .line 956
    .end local v4    # "size":I
    .end local v5    # "splitNames":[Ljava/lang/String;
    .end local v6    # "isFeatureSplits":[Z
    .end local v7    # "splitCodePaths":[Ljava/lang/String;
    .end local v9    # "usesSplitNames":[Ljava/lang/String;
    .end local v10    # "configForSplits":[Ljava/lang/String;
    .end local v21    # "splitClassLoaderNames":[Ljava/lang/String;
    .end local v22    # "splitRevisionCodes":[I
    .end local v23    # "codePath":Ljava/lang/String;
    :cond_7
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing base APK in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 913
    .end local v1    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    .end local v8    # "versionCode":I
    :cond_8
    move-object/from16 v6, p0

    move/from16 v11, p1

    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x64

    const-string v3, "No packages found in split"

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 17
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 3289
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3292
    .local v3, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_0

    .line 3293
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0x8

    const/4 v14, 0x6

    const/4 v15, 0x7

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    iput-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 3300
    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 3303
    :cond_0
    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v3, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 3305
    new-instance v0, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v1, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v2, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v2}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    move-object v7, v0

    .line 3307
    .local v7, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v1, p4, v0

    const/16 v8, -0x6c

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 3308
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3309
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3310
    return-object v9

    .line 3316
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 3318
    .local v1, "str":Ljava/lang/String;
    iget-object v2, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_2
    move-object v10, v9

    :goto_0
    iput-object v10, v2, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 3320
    const/16 v2, 0x9

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3322
    .end local v1    # "str":Ljava/lang/String;
    .local v10, "str":Ljava/lang/String;
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v9

    :goto_1
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 3324
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v2, 0x4

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 3328
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v2, 0x5

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 3332
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3334
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v1, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 3335
    const-string v1, "<instrumentation> does not specify targetPackage"

    aput-object v1, p4, v0

    .line 3336
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3337
    return-object v9

    .line 3340
    :cond_4
    const-string v11, "<instrumentation>"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v4

    move-object v12, v3

    move-object v3, v11

    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .local v12, "sa":Landroid/content/res/TypedArray;
    move-object v4, v7

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3342
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3343
    return-object v9

    .line 3346
    :cond_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3348
    return-object v7
.end method

.method private parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 20
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "allowAutoVerify"    # Z
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 5511
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5514
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 5516
    .local v6, "priority":I
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 5518
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 5520
    .local v8, "order":I
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageParser$IntentInfo;->setOrder(I)V

    .line 5522
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 5524
    .local v9, "v":Landroid/util/TypedValue;
    if-eqz v9, :cond_0

    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    iput v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v10, :cond_0

    .line 5525
    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 5529
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11200cf

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 5530
    .local v10, "useRoundIcon":Z
    const/4 v11, 0x7

    if-eqz v10, :cond_1

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    goto :goto_0

    .line 5531
    :cond_1
    move v12, v5

    .line 5532
    .local v12, "roundIconVal":I
    :goto_0
    const/4 v13, 0x1

    if-eqz v12, :cond_2

    .line 5533
    iput v12, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    goto :goto_1

    .line 5535
    :cond_2
    invoke-virtual {v0, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 5539
    :goto_1
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v3, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 5542
    const/4 v11, 0x5

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 5545
    const/4 v4, 0x6

    if-eqz p4, :cond_3

    .line 5546
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    invoke-virtual {v3, v11}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    .line 5551
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5553
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 5555
    .local v11, "outerDepth":I
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v15, v4

    .line 5555
    .local v15, "type":I
    if-eq v4, v13, :cond_1c

    move v4, v15

    if-ne v4, v7, :cond_5

    .line 5556
    .end local v15    # "type":I
    .local v4, "type":I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v11, :cond_4

    goto :goto_3

    .line 5680
    :cond_4
    move-object/from16 v1, p0

    move/from16 v16, v4

    goto/16 :goto_e

    .line 5557
    :cond_5
    :goto_3
    if-eq v4, v7, :cond_1b

    const/4 v13, 0x4

    if-ne v4, v13, :cond_6

    .line 5558
    goto/16 :goto_c

    .line 5561
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 5562
    .local v13, "nodeName":Ljava/lang/String;
    const-string v7, "action"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5563
    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v5, "name"

    invoke-interface {v2, v7, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5565
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_8

    const-string v7, ""

    if-ne v5, v7, :cond_7

    goto :goto_5

    .line 5569
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5571
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    .line 5572
    .end local v5    # "value":Ljava/lang/String;
    nop

    .line 5678
    .end local v4    # "type":I
    .end local v13    # "nodeName":Ljava/lang/String;
    .local v16, "type":I
    :goto_4
    move-object/from16 v1, p0

    move/from16 v16, v4

    goto/16 :goto_b

    .line 5566
    .end local v16    # "type":I
    .restart local v4    # "type":I
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v13    # "nodeName":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string v7, "No value supplied for <android:name>"

    const/4 v14, 0x0

    aput-object v7, p6, v14

    .line 5567
    return v14

    .line 5572
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    const-string v5, "category"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 5573
    const-string v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v7, "name"

    invoke-interface {v2, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5575
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v5, :cond_b

    const-string v7, ""

    if-ne v5, v7, :cond_a

    goto :goto_6

    .line 5579
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5581
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    .line 5583
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_4

    .line 5576
    .restart local v5    # "value":Ljava/lang/String;
    :cond_b
    :goto_6
    const-string v7, "No value supplied for <android:name>"

    move/from16 v16, v4

    const/4 v4, 0x0

    aput-object v7, p6, v4

    .line 5577
    .end local v4    # "type":I
    .restart local v16    # "type":I
    return v4

    .line 5583
    .end local v5    # "value":Ljava/lang/String;
    .end local v16    # "type":I
    .restart local v4    # "type":I
    :cond_c
    move/from16 v16, v4

    const/4 v4, 0x0

    .line 5583
    .end local v4    # "type":I
    .restart local v16    # "type":I
    const-string v5, "data"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 5584
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 5587
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v5, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v5, v4, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 5589
    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 5591
    :try_start_0
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5596
    goto :goto_7

    .line 5592
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 5593
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    aput-object v4, p6, v1

    .line 5594
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 5595
    return v1

    .line 5599
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_d
    :goto_7
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 5601
    .end local v7    # "str":Ljava/lang/String;
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_e

    .line 5602
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 5605
    :cond_e
    const/4 v7, 0x7

    invoke-virtual {v5, v7, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5607
    .end local v4    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 5608
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5611
    :cond_f
    const/16 v4, 0x8

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5613
    if-eqz v0, :cond_10

    .line 5614
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5617
    :cond_10
    const/16 v4, 0x9

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5619
    if-eqz v0, :cond_12

    .line 5620
    if-nez p3, :cond_11

    .line 5621
    const-string/jumbo v4, "sspPattern not allowed here; ssp must be literal"

    aput-object v4, p6, v1

    .line 5622
    return v1

    .line 5624
    :cond_11
    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_8

    .line 5627
    :cond_12
    const/4 v4, 0x2

    :goto_8
    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 5629
    .local v7, "host":Ljava/lang/String;
    move-object/from16 v17, v0

    const/4 v4, 0x3

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5631
    .local v0, "port":Ljava/lang/String;
    .local v17, "str":Ljava/lang/String;
    if-eqz v7, :cond_13

    .line 5632
    invoke-virtual {v3, v7, v0}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 5635
    :cond_13
    move-object/from16 v18, v0

    const/4 v4, 0x4

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5637
    .end local v17    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    .local v18, "port":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 5638
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5641
    :cond_14
    const/4 v4, 0x5

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5643
    if-eqz v0, :cond_15

    .line 5644
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5647
    :cond_15
    const/4 v4, 0x6

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5649
    if-eqz v0, :cond_17

    .line 5650
    if-nez p3, :cond_16

    .line 5651
    const-string/jumbo v4, "pathPattern not allowed here; path must be literal"

    aput-object v4, p6, v1

    .line 5652
    return v1

    .line 5654
    :cond_16
    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_9

    .line 5657
    :cond_17
    const/4 v4, 0x2

    :goto_9
    const/16 v4, 0xa

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5659
    if-eqz v0, :cond_19

    .line 5660
    if-nez p3, :cond_18

    .line 5661
    const-string/jumbo v4, "pathAdvancedPattern not allowed here; path must be literal"

    aput-object v4, p6, v1

    .line 5662
    return v1

    .line 5664
    :cond_18
    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_a

    .line 5667
    :cond_19
    const/4 v4, 0x3

    :goto_a
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 5668
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5669
    .end local v0    # "str":Ljava/lang/String;
    .end local v7    # "host":Ljava/lang/String;
    .end local v18    # "port":Ljava/lang/String;
    nop

    .line 5678
    move-object/from16 v1, p0

    move-object v0, v5

    goto :goto_b

    .line 5670
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    :cond_1a
    move v1, v4

    const/4 v4, 0x3

    const-string v5, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <intent-filter>: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5671
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    iget-object v4, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5672
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5670
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5673
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5678
    .end local v13    # "nodeName":Ljava/lang/String;
    :goto_b
    goto :goto_d

    .line 5553
    .end local v16    # "type":I
    :cond_1b
    :goto_c
    move-object/from16 v1, p0

    :goto_d
    move-object/from16 v1, p1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v13, 0x1

    goto/16 :goto_2

    .line 5680
    .restart local v15    # "type":I
    :cond_1c
    move-object/from16 v1, p0

    move/from16 v16, v15

    .line 5680
    .end local v15    # "type":I
    .restart local v16    # "type":I
    :goto_e
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 5697
    const/4 v4, 0x1

    return v4
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 22
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2979
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 2980
    .local v4, "outerDepth":I
    const/4 v5, -0x1

    .line 2982
    .local v5, "currentKeySetDepth":I
    const/4 v6, 0x0

    .line 2983
    .local v6, "currentKeySet":Ljava/lang/String;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 2984
    .local v7, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 2985
    .local v8, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 2986
    .local v9, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2987
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v12, v11

    .line 2987
    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v11, v13, :cond_e

    const/4 v11, 0x3

    if-ne v12, v11, :cond_1

    .line 2988
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v4, :cond_0

    goto :goto_1

    .line 3081
    :cond_0
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v12

    goto/16 :goto_7

    .line 2989
    :cond_1
    :goto_1
    if-ne v12, v11, :cond_3

    .line 2990
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-ne v11, v5, :cond_2

    .line 2991
    const/4 v6, 0x0

    .line 2992
    const/4 v5, -0x1

    goto :goto_0

    .line 2986
    .end local v12    # "type":I
    :cond_2
    move/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_6

    .line 2996
    .restart local v12    # "type":I
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2997
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v13, "key-set"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2998
    if-eqz v6, :cond_4

    .line 2999
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Improperly nested \'key-set\' tag at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, p4, v14

    .line 3001
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3002
    return v14

    .line 3004
    :cond_4
    const/4 v14, 0x0

    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 3006
    .local v13, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 3008
    .local v14, "keysetName":Ljava/lang/String;
    move/from16 v16, v4

    new-instance v4, Landroid/util/ArraySet;

    .line 3008
    .end local v4    # "outerDepth":I
    .local v16, "outerDepth":I
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v14, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    move-object v4, v14

    .line 3010
    .end local v6    # "currentKeySet":Ljava/lang/String;
    .local v4, "currentKeySet":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 3011
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3012
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "keysetName":Ljava/lang/String;
    nop

    .line 3080
    move-object v6, v4

    move/from16 v18, v12

    goto/16 :goto_5

    .line 3012
    .end local v16    # "outerDepth":I
    .local v4, "outerDepth":I
    .restart local v6    # "currentKeySet":Ljava/lang/String;
    :cond_5
    move/from16 v16, v4

    .line 3012
    .end local v4    # "outerDepth":I
    .restart local v16    # "outerDepth":I
    const-string/jumbo v4, "public-key"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3013
    if-nez v6, :cond_6

    .line 3014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Improperly nested \'key-set\' tag at "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, p4, v13

    .line 3016
    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3017
    return v13

    .line 3019
    :cond_6
    const/4 v13, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3021
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 3023
    .local v14, "publicKeyName":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    .line 3025
    .local v13, "encodedKey":Ljava/lang/String;
    if-nez v13, :cond_7

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_7

    .line 3026
    move/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 3026
    .end local v5    # "currentKeySetDepth":I
    .local v17, "currentKeySetDepth":I
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v12

    const-string v12, "\'public-key\' "

    .line 3026
    .end local v12    # "type":I
    .local v18, "type":I
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " must define a public-key value on first use at "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, p4, v12

    .line 3028
    const/16 v5, -0x6c

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3029
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3030
    return v12

    .line 3031
    .end local v17    # "currentKeySetDepth":I
    .end local v18    # "type":I
    .restart local v5    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_7
    move/from16 v17, v5

    move/from16 v18, v12

    .line 3031
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v17    # "currentKeySetDepth":I
    .restart local v18    # "type":I
    if-eqz v13, :cond_b

    .line 3032
    invoke-static {v13}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 3033
    .local v5, "currentKey":Ljava/security/PublicKey;
    if-nez v5, :cond_8

    .line 3034
    const-string v12, "PackageParser"

    move-object/from16 v19, v13

    new-instance v13, Ljava/lang/StringBuilder;

    .line 3034
    .end local v13    # "encodedKey":Ljava/lang/String;
    .local v19, "encodedKey":Ljava/lang/String;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " key-set "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3034
    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3038
    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3039
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3040
    goto/16 :goto_6

    .line 3042
    .end local v19    # "encodedKey":Ljava/lang/String;
    .restart local v13    # "encodedKey":Ljava/lang/String;
    :cond_8
    move-object/from16 v19, v13

    .line 3042
    .end local v13    # "encodedKey":Ljava/lang/String;
    .restart local v19    # "encodedKey":Ljava/lang/String;
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3043
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    .line 3048
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value of \'public-key\' "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " conflicts with previously defined value at "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, p4, v12

    .line 3051
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3052
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3053
    return v12

    .line 3046
    :cond_a
    :goto_2
    invoke-virtual {v7, v14, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3056
    .end local v5    # "currentKey":Ljava/security/PublicKey;
    .end local v19    # "encodedKey":Ljava/lang/String;
    .restart local v13    # "encodedKey":Ljava/lang/String;
    :cond_b
    move-object/from16 v19, v13

    .line 3056
    .end local v13    # "encodedKey":Ljava/lang/String;
    .restart local v19    # "encodedKey":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3057
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3058
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3059
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "publicKeyName":Ljava/lang/String;
    .end local v19    # "encodedKey":Ljava/lang/String;
    goto :goto_4

    .line 3059
    .end local v17    # "currentKeySetDepth":I
    .end local v18    # "type":I
    .local v5, "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_c
    move/from16 v17, v5

    move/from16 v18, v12

    .line 3059
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v17    # "currentKeySetDepth":I
    .restart local v18    # "type":I
    const-string/jumbo v1, "upgrade-key-set"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3060
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3062
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 3064
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3065
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3066
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3067
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v4    # "name":Ljava/lang/String;
    nop

    .line 3080
    .end local v11    # "tagName":Ljava/lang/String;
    :goto_4
    move/from16 v5, v17

    .line 2986
    .end local v17    # "currentKeySetDepth":I
    .restart local v5    # "currentKeySetDepth":I
    :goto_5
    move/from16 v4, v16

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 3074
    .end local v5    # "currentKeySetDepth":I
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v17    # "currentKeySetDepth":I
    :cond_d
    const-string v1, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <key-sets>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3076
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3074
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3078
    nop

    .line 2986
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v16    # "outerDepth":I
    .end local v17    # "currentKeySetDepth":I
    .end local v18    # "type":I
    .local v4, "outerDepth":I
    .restart local v5    # "currentKeySetDepth":I
    :goto_6
    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v1, p1

    .line 2986
    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .restart local v16    # "outerDepth":I
    .restart local v17    # "currentKeySetDepth":I
    goto/16 :goto_0

    .line 3081
    .end local v16    # "outerDepth":I
    .end local v17    # "currentKeySetDepth":I
    .restart local v4    # "outerDepth":I
    .restart local v5    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_e
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v12

    .line 3081
    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v16    # "outerDepth":I
    .restart local v17    # "currentKeySetDepth":I
    .restart local v18    # "type":I
    :goto_7
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3082
    .local v1, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    iget-object v11, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " AndroidManifext.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, p4, v11

    .line 3085
    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3086
    return v11

    .line 3088
    :cond_f
    move-object/from16 v5, p1

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 3089
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3090
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3091
    .local v12, "keySetName":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-nez v13, :cond_10

    .line 3092
    const-string v13, "PackageParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    const-string v1, "Package"

    .line 3092
    .end local v1    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v20, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AndroidManifext.xml \'key-set\' "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    nop

    .line 3089
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v12    # "keySetName":Ljava/lang/String;
    .end local v20    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_9
    move-object/from16 v1, v20

    goto :goto_8

    .line 3096
    .restart local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v12    # "keySetName":Ljava/lang/String;
    :cond_10
    move-object/from16 v20, v1

    .line 3096
    .end local v1    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3097
    const-string v1, "PackageParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " AndroidManifext.xml \'key-set\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    goto :goto_9

    .line 3102
    :cond_11
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3103
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3104
    .local v13, "s":Ljava/lang/String;
    iget-object v14, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArraySet;

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v1

    move-object/from16 v1, v19

    check-cast v1, Ljava/security/PublicKey;

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3105
    .end local v13    # "s":Ljava/lang/String;
    nop

    .line 3103
    move-object/from16 v1, v21

    goto :goto_a

    .line 3106
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v12    # "keySetName":Ljava/lang/String;
    :cond_12
    goto :goto_9

    .line 3107
    .end local v20    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v20, v1

    .line 3107
    .end local v1    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3108
    iput-object v8, v5, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 3115
    const/4 v1, 0x1

    return v1

    .line 3110
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AndroidManifext.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, p4, v4

    .line 3112
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3113
    return v4
.end method

.method private parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .locals 23
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "a"    # Landroid/content/pm/PackageParser$Activity;

    .line 4600
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4602
    .local v0, "sw":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    .line 4603
    .local v3, "width":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 4604
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    .line 4605
    .local v5, "height":I
    const/high16 v6, -0x40800000    # -1.0f

    .line 4606
    .local v6, "heightFraction":F
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    .line 4608
    .local v8, "widthType":I
    const/4 v9, 0x5

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x6

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v8, v11, :cond_0

    .line 4609
    invoke-virtual {v0, v7, v13, v13, v10}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    goto :goto_0

    .line 4612
    :cond_0
    if-ne v8, v9, :cond_1

    .line 4613
    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 4617
    :cond_1
    :goto_0
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v15

    .line 4619
    .local v15, "heightType":I
    if-ne v15, v11, :cond_2

    .line 4620
    invoke-virtual {v0, v7, v13, v13, v10}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    goto :goto_1

    .line 4623
    :cond_2
    if-ne v15, v9, :cond_3

    .line 4624
    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 4628
    :cond_3
    :goto_1
    const/4 v7, 0x0

    const/16 v9, 0x11

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 4631
    .local v7, "gravity":I
    invoke-virtual {v0, v13, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 4634
    .local v9, "minWidth":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 4637
    .local v10, "minHeight":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4638
    move-object/from16 v11, p3

    iget-object v12, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    new-instance v13, Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v14, v13

    move/from16 v22, v15

    move v15, v3

    .end local v15    # "heightType":I
    .local v22, "heightType":I
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-direct/range {v14 .. v21}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v13, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4640
    return-void
.end method

.method private parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5363
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5366
    .local v0, "sa":Landroid/content/res/TypedArray;
    if-nez p3, :cond_0

    .line 5367
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p3, v1

    .line 5370
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5372
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5373
    const-string v4, "<meta-data> requires an android:name attribute"

    aput-object v4, p4, v1

    .line 5374
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5375
    return-object v3

    .line 5378
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 5380
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5382
    .local v4, "v":Landroid/util/TypedValue;
    if-eqz v4, :cond_2

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_2

    .line 5384
    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5386
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5389
    if-eqz v4, :cond_9

    .line 5390
    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 5391
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5392
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    :cond_3
    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5393
    .end local v1    # "cs":Ljava/lang/CharSequence;
    goto :goto_0

    :cond_4
    iget v3, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v3, v6, :cond_6

    .line 5394
    iget v3, v4, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_5

    move v1, v5

    nop

    :cond_5
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 5395
    :cond_6
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_7

    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_7

    .line 5397
    iget v1, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 5398
    :cond_7
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_8

    .line 5399
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 5402
    :cond_8
    const-string v1, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5403
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5404
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5402
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5411
    :cond_9
    const-string v3, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v3, p4, v1

    .line 5412
    const/4 p3, 0x0

    .line 5416
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5418
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5420
    return-object p3
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 13
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 902
    const-string/jumbo v0, "parseApkLite"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 903
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    .line 904
    .local v0, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 905
    .local v12, "packagePath":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 906
    new-instance v1, Landroid/content/pm/PackageParser$PackageLite;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    move-object v4, v12

    move-object v5, v0

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v1
.end method

.method private static parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 16
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 4089
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 4090
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not contain any attributes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 4091
    return v5

    .line 4094
    :cond_0
    move/from16 v6, p6

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 4095
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 4096
    if-eqz p5, :cond_2

    .line 4097
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 4098
    return v5

    .line 4101
    :cond_1
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4102
    invoke-static {v8, v7, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 4103
    iget-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 4104
    return v5

    .line 4109
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11200cf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 4110
    .local v8, "useRoundIcon":Z
    if-eqz v8, :cond_3

    move/from16 v9, p9

    invoke-virtual {v4, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    goto :goto_0

    :cond_3
    move/from16 v9, p9

    move v10, v5

    .line 4111
    .local v10, "roundIconVal":I
    :goto_0
    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 4112
    iput v10, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4113
    iput-object v11, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4122
    move/from16 v12, p8

    goto :goto_1

    .line 4115
    :cond_4
    move/from16 v12, p8

    invoke-virtual {v4, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 4116
    .local v13, "iconVal":I
    if-eqz v13, :cond_5

    .line 4117
    iput v13, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4118
    iput-object v11, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4122
    .end local v13    # "iconVal":I
    :cond_5
    :goto_1
    move/from16 v11, p10

    invoke-virtual {v4, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 4123
    .local v13, "logoVal":I
    if-eqz v13, :cond_6

    .line 4124
    iput v13, v1, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 4127
    :cond_6
    move/from16 v14, p11

    invoke-virtual {v4, v14, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 4128
    .local v5, "bannerVal":I
    if-eqz v5, :cond_7

    .line 4129
    iput v5, v1, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 4132
    :cond_7
    move/from16 v2, p7

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 4133
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_8

    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_8

    .line 4134
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4137
    :cond_8
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 4139
    const/4 v2, 0x1

    return v2
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 893
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    .line 896
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1664
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .line 1664
    .local v1, "type":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v3, :cond_0

    .line 1664
    .end local v1    # "type":I
    goto :goto_0

    .line 1668
    .restart local v1    # "type":I
    :cond_0
    const/16 v0, -0x6c

    if-ne v1, v2, :cond_8

    .line 1672
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "manifest"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1677
    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1688
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1690
    .local v3, "nameError":Ljava/lang/String;
    const/16 v4, -0x6a

    if-eqz v3, :cond_2

    const-string v5, "android"

    .line 1691
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "nubia"

    .line 1692
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1693
    :cond_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid manifest package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1704
    :cond_2
    :goto_1
    const-string/jumbo v5, "split"

    invoke-interface {p1, v2, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1705
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1706
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 1707
    const/4 v2, 0x0

    goto :goto_2

    .line 1709
    :cond_3
    const/4 v5, 0x0

    invoke-static {v2, v5, v5}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 1710
    .local v5, "error":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 1710
    .end local v5    # "error":Ljava/lang/String;
    goto :goto_2

    .line 1711
    .restart local v5    # "error":Ljava/lang/String;
    :cond_4
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid manifest split: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1717
    .end local v5    # "error":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 1718
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1717
    :cond_6
    move-object v5, v2

    :goto_3
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 1673
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "splitName":Ljava/lang/String;
    .end local v3    # "nameError":Ljava/lang/String;
    :cond_7
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No <manifest> tag"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1669
    :cond_8
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 20
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    .line 3165
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    invoke-virtual {v4, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3168
    .local v2, "sa":Landroid/content/res/TypedArray;
    new-instance v0, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    move-object v1, v0

    .line 3169
    .local v1, "perm":Landroid/content/pm/PackageParser$Permission;
    iget-object v8, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v10, "<permission>"

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x9

    const/16 v17, 0x6

    const/16 v18, 0x8

    move-object v7, v5

    move-object/from16 v9, p4

    move-object v11, v2

    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v7, -0x6c

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 3177
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3178
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3179
    return v8

    .line 3184
    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3186
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3187
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3190
    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x5

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3194
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/16 v9, 0xa

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3197
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x3

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3201
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x7

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3204
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3206
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    .line 3207
    const-string v0, "<permission> does not specify protectionLevel"

    aput-object v0, p4, v8

    .line 3208
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3209
    return v8

    .line 3212
    :cond_2
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v9, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3214
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3215
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v9, 0x2

    if-eq v0, v9, :cond_3

    .line 3219
    const-string v0, "<permission>  protectionLevel specifies a non-instant flag but is not based on signature type"

    aput-object v0, p4, v8

    .line 3221
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3222
    return v8

    .line 3226
    :cond_3
    const-string v9, "<permission>"

    move-object v0, v6

    move-object v10, v1

    move-object v1, v4

    .end local v1    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v10, "perm":Landroid/content/pm/PackageParser$Permission;
    move-object v11, v2

    move-object v2, v3

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v11, "sa":Landroid/content/res/TypedArray;
    move-object v3, v9

    move-object v4, v10

    move-object v9, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3227
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3228
    return v8

    .line 3231
    :cond_4
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3233
    const/4 v0, 0x1

    return v0
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 19
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    .line 3121
    new-instance v0, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    move-object v4, v0

    .line 3123
    .local v4, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3125
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v8, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string v10, "<permission-group>"

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x8

    const/16 v17, 0x5

    const/16 v18, 0x7

    move-object v7, v5

    move-object/from16 v9, p5

    move-object v11, v1

    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v7, -0x6c

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 3133
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3134
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3135
    return v8

    .line 3138
    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v9, 0x4

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 3141
    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/16 v9, 0x9

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 3143
    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v9, 0x6

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 3145
    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 3148
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3150
    const-string v9, "<permission-group>"

    move-object v0, v6

    move-object v10, v1

    move-object v1, v3

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v10, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v2, p4

    move-object v3, v9

    move-object v9, v4

    .end local v4    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v9, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    move-object v11, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3152
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3153
    return v8

    .line 3156
    :cond_1
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3158
    const/4 v0, 0x1

    return v0
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 19
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    .line 3239
    new-instance v0, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    move-object v4, v0

    .line 3241
    .local v4, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3244
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v8, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v10, "<permission-tree>"

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x5

    const/16 v17, 0x3

    const/16 v18, 0x4

    move-object v7, v5

    move-object/from16 v9, p4

    move-object v11, v1

    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v7, -0x6c

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 3252
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3253
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3254
    return v8

    .line 3257
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3259
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v9, 0x2e

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3260
    .local v0, "index":I
    if-lez v0, :cond_1

    .line 3261
    iget-object v10, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 3263
    .end local v0    # "index":I
    .local v9, "index":I
    :cond_1
    move v9, v0

    if-gez v9, :cond_2

    .line 3264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<permission-tree> name has less than three segments: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v8

    .line 3266
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3267
    return v8

    .line 3270
    :cond_2
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3271
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3272
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3273
    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 3275
    const-string v12, "<permission-tree>"

    move-object v0, v6

    move-object v13, v1

    move-object v1, v3

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v13, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v2, p3

    move-object v3, v12

    move-object v12, v4

    .end local v4    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v12, "perm":Landroid/content/pm/PackageParser$Permission;
    move-object v14, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3277
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3278
    return v8

    .line 3281
    :cond_3
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3283
    return v11
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;
    .locals 21
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v13, p1

    .line 4840
    move-object/from16 v14, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    invoke-virtual {v12, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 4843
    .local v10, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_0

    .line 4844
    new-instance v9, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x13

    const/16 v7, 0xf

    const/16 v8, 0x11

    move-object/from16 v2, p0

    iget-object v1, v2, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v15, 0x8

    const/16 v16, 0xe

    const/16 v17, 0x6

    move-object v0, v9

    move-object/from16 v18, v1

    move-object v1, v13

    move-object/from16 v2, p5

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    move-object/from16 v20, v10

    move v10, v15

    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .local v20, "sa":Landroid/content/res/TypedArray;
    move/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, v19

    iput-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4855
    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v1, "<provider>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_0

    .line 4858
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    :cond_0
    move-object/from16 v20, v10

    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :goto_0
    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v6, v20

    iput-object v6, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4859
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v7, p4

    iput v7, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4861
    new-instance v0, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v2, Landroid/content/pm/ProviderInfo;

    invoke-direct {v2}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    move-object v8, v0

    .line 4862
    .local v8, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v0, 0x0

    aget-object v1, p5, v0

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 4863
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 4864
    return-object v9

    .line 4867
    :cond_1
    const/4 v1, 0x0

    .line 4869
    .local v1, "providerExportedDefault":Z
    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 4873
    const/4 v1, 0x1

    .line 4876
    .end local v1    # "providerExportedDefault":Z
    .local v10, "providerExportedDefault":Z
    :cond_2
    move v10, v1

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v2, 0x7

    invoke-virtual {v6, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 4880
    const/16 v1, 0xa

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 4883
    .local v11, "cpname":Ljava/lang/String;
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0xb

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 4887
    const/4 v1, 0x3

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 4889
    .local v12, "permission":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4891
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 4892
    move-object v1, v12

    .line 4894
    :cond_3
    if-nez v1, :cond_4

    .line 4895
    iget-object v2, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_2

    .line 4897
    :cond_4
    iget-object v2, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4898
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v9

    :goto_1
    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 4900
    :goto_2
    const/4 v2, 0x5

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4902
    if-nez v1, :cond_6

    .line 4903
    move-object v1, v12

    .line 4905
    .end local v1    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    :cond_6
    move-object v5, v1

    if-nez v5, :cond_7

    .line 4906
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_4

    .line 4908
    :cond_7
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4909
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v9

    :goto_3
    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 4912
    :goto_4
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0xd

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 4916
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0x9

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 4920
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0xc

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 4924
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0x15

    .line 4925
    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 4927
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v0, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 4929
    const/16 v1, 0x10

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4932
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 4935
    :cond_9
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x12

    invoke-virtual {v6, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    iput-boolean v3, v1, Landroid/content/pm/ProviderInfo;->encryptionAware:Z

    .line 4938
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v1, v1, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    if-eqz v1, :cond_a

    .line 4939
    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4943
    :cond_a
    const/16 v1, 0x14

    .line 4944
    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 4945
    .local v15, "visibleToEphemeral":Z
    if-eqz v15, :cond_b

    .line 4946
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 4947
    const/4 v1, 0x1

    iput-boolean v1, v13, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 4950
    :cond_b
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 4952
    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    .line 4956
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v1, v2, :cond_c

    .line 4957
    const-string v1, "Heavy-weight applications can not have providers in main process"

    aput-object v1, p5, v0

    .line 4958
    return-object v9

    .line 4962
    :cond_c
    if-nez v11, :cond_d

    .line 4963
    const-string v1, "<provider> does not include authorities attribute"

    aput-object v1, p5, v0

    .line 4964
    return-object v9

    .line 4966
    :cond_d
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_e

    .line 4967
    const-string v1, "<provider> has empty authorities attribute"

    aput-object v1, p5, v0

    .line 4968
    return-object v9

    .line 4970
    :cond_e
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 4972
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v15

    move-object v4, v8

    move-object/from16 v16, v5

    move-object/from16 v5, p5

    .end local v5    # "str":Ljava/lang/String;
    .local v16, "str":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4974
    return-object v9

    .line 4977
    :cond_f
    return-object v8
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 19
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "visibleToEphemeral"    # Z
    .param p4, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    .line 4983
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 4983
    .local v0, "outerDepth":I
    :goto_0
    move v11, v0

    .line 4985
    .end local v0    # "outerDepth":I
    .local v11, "outerDepth":I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v12, v0

    .line 4985
    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v0, v13, :cond_1a

    const/4 v0, 0x3

    if-ne v12, v0, :cond_0

    .line 4987
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v11, :cond_1a

    .line 4988
    :cond_0
    if-eq v12, v0, :cond_18

    const/4 v1, 0x4

    if-ne v12, v1, :cond_1

    .line 4989
    goto/16 :goto_3

    .line 4992
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_4

    .line 4993
    new-instance v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    move-object v15, v0

    .line 4994
    .local v15, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object v5, v15

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4996
    return v14

    .line 4998
    :cond_2
    if-eqz p3, :cond_3

    .line 4999
    invoke-virtual {v15, v13}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5000
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5002
    :cond_3
    invoke-virtual {v15}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getOrder()I

    move-result v0

    iget v1, v10, Landroid/content/pm/PackageParser$Provider;->order:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v10, Landroid/content/pm/PackageParser$Provider;->order:I

    .line 5003
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5005
    .end local v15    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    goto/16 :goto_3

    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5006
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object/from16 v3, p5

    invoke-direct {v7, v8, v9, v0, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v10, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_19

    .line 5008
    return v14

    .line 5011
    :cond_5
    move-object/from16 v3, p5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "grant-uri-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_b

    .line 5012
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5015
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 5017
    .local v1, "pa":Landroid/os/PatternMatcher;
    invoke-virtual {v0, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 5019
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 5020
    new-instance v6, Landroid/os/PatternMatcher;

    invoke-direct {v6, v4, v14}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v6

    .line 5023
    :cond_6
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 5025
    if-eqz v4, :cond_7

    .line 5026
    new-instance v6, Landroid/os/PatternMatcher;

    invoke-direct {v6, v4, v13}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v6

    .line 5029
    :cond_7
    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 5031
    if-eqz v4, :cond_8

    .line 5032
    new-instance v6, Landroid/os/PatternMatcher;

    invoke-direct {v6, v4, v5}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v6

    .line 5035
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5037
    if-eqz v1, :cond_a

    .line 5038
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v5, :cond_9

    .line 5039
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-array v6, v13, [Landroid/os/PatternMatcher;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5040
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aput-object v1, v5, v14

    goto :goto_1

    .line 5042
    :cond_9
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v5, v5

    .line 5043
    .local v5, "N":I
    add-int/lit8 v6, v5, 0x1

    new-array v6, v6, [Landroid/os/PatternMatcher;

    .line 5044
    .local v6, "newp":[Landroid/os/PatternMatcher;
    iget-object v15, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v15, v14, v6, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5045
    aput-object v1, v6, v5

    .line 5046
    iget-object v14, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v6, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5048
    .end local v5    # "N":I
    .end local v6    # "newp":[Landroid/os/PatternMatcher;
    :goto_1
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v13, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5061
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5063
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "pa":Landroid/os/PatternMatcher;
    .end local v4    # "str":Ljava/lang/String;
    goto/16 :goto_4

    .line 5051
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "pa":Landroid/os/PatternMatcher;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_a
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <path-permission>: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5052
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5053
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5051
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5054
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5055
    goto/16 :goto_4

    .line 5063
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "pa":Landroid/os/PatternMatcher;
    .end local v4    # "str":Ljava/lang/String;
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "path-permission"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5064
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 5067
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .line 5069
    .local v6, "pa":Landroid/content/pm/PathPermission;
    invoke-virtual {v4, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 5071
    .local v15, "permission":Ljava/lang/String;
    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 5073
    .local v16, "readPermission":Ljava/lang/String;
    if-nez v16, :cond_c

    .line 5074
    move-object/from16 v16, v15

    .line 5076
    .end local v16    # "readPermission":Ljava/lang/String;
    .local v13, "readPermission":Ljava/lang/String;
    :cond_c
    move-object/from16 v13, v16

    invoke-virtual {v4, v5, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 5078
    .local v16, "writePermission":Ljava/lang/String;
    if-nez v16, :cond_d

    .line 5079
    move-object/from16 v16, v15

    .line 5082
    .end local v16    # "writePermission":Ljava/lang/String;
    .local v5, "writePermission":Ljava/lang/String;
    :cond_d
    move-object/from16 v5, v16

    const/16 v16, 0x0

    .line 5083
    .local v16, "havePerm":Z
    if-eqz v13, :cond_e

    .line 5084
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 5085
    const/16 v16, 0x1

    .line 5087
    :cond_e
    if-eqz v5, :cond_f

    .line 5088
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 5089
    const/16 v16, 0x1

    .line 5092
    :cond_f
    if-nez v16, :cond_10

    .line 5094
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5095
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " at "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5096
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5094
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5097
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5098
    goto/16 :goto_4

    .line 5105
    :cond_10
    invoke-virtual {v4, v0, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 5107
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 5108
    new-instance v0, Landroid/content/pm/PathPermission;

    invoke-direct {v0, v1, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    .line 5112
    :cond_11
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5114
    .end local v1    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 5115
    new-instance v1, Landroid/content/pm/PathPermission;

    const/4 v14, 0x1

    invoke-direct {v1, v0, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    .line 5119
    :cond_12
    const/4 v1, 0x5

    const/4 v14, 0x0

    invoke-virtual {v4, v1, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5121
    if-eqz v0, :cond_13

    .line 5122
    new-instance v1, Landroid/content/pm/PathPermission;

    const/4 v14, 0x2

    invoke-direct {v1, v0, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    .line 5126
    :cond_13
    const/4 v1, 0x6

    const/4 v14, 0x0

    invoke-virtual {v4, v1, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5128
    if-eqz v0, :cond_14

    .line 5129
    new-instance v1, Landroid/content/pm/PathPermission;

    const/4 v14, 0x3

    invoke-direct {v1, v0, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    .line 5133
    :cond_14
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 5135
    if-eqz v6, :cond_16

    .line 5136
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v1, :cond_15

    .line 5137
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/content/pm/PathPermission;

    iput-object v14, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5138
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v14, 0x0

    aput-object v6, v1, v14

    .line 5157
    move-object/from16 v17, v0

    goto :goto_2

    .line 5140
    :cond_15
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v1, v1

    .line 5141
    .local v1, "N":I
    add-int/lit8 v14, v1, 0x1

    new-array v14, v14, [Landroid/content/pm/PathPermission;

    .line 5142
    .local v14, "newp":[Landroid/content/pm/PathPermission;
    move-object/from16 v17, v0

    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5142
    .end local v0    # "path":Ljava/lang/String;
    .local v17, "path":Ljava/lang/String;
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v2, 0x0

    invoke-static {v0, v2, v14, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5143
    aput-object v6, v14, v1

    .line 5144
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v14, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5145
    .end local v1    # "N":I
    .end local v14    # "newp":[Landroid/content/pm/PathPermission;
    nop

    .line 5157
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5159
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "writePermission":Ljava/lang/String;
    .end local v6    # "pa":Landroid/content/pm/PathPermission;
    .end local v13    # "readPermission":Ljava/lang/String;
    .end local v15    # "permission":Ljava/lang/String;
    .end local v16    # "havePerm":Z
    .end local v17    # "path":Ljava/lang/String;
    goto :goto_4

    .line 5148
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "writePermission":Ljava/lang/String;
    .restart local v6    # "pa":Landroid/content/pm/PathPermission;
    .restart local v13    # "readPermission":Ljava/lang/String;
    .restart local v15    # "permission":Ljava/lang/String;
    .restart local v16    # "havePerm":Z
    :cond_16
    move-object/from16 v17, v0

    .line 5148
    .end local v0    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5149
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5150
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5148
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5151
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5152
    goto :goto_4

    .line 5161
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "writePermission":Ljava/lang/String;
    .end local v6    # "pa":Landroid/content/pm/PathPermission;
    .end local v13    # "readPermission":Ljava/lang/String;
    .end local v15    # "permission":Ljava/lang/String;
    .end local v16    # "havePerm":Z
    .end local v17    # "path":Ljava/lang/String;
    :cond_17
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <provider>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5162
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5163
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5161
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5164
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5165
    goto :goto_4

    .line 4983
    .end local v12    # "type":I
    :cond_18
    :goto_3
    move-object/from16 v3, p5

    :cond_19
    :goto_4
    move v0, v11

    goto/16 :goto_0

    .line 5172
    .restart local v12    # "type":I
    :cond_1a
    move-object/from16 v3, p5

    const/4 v0, 0x1

    return v0
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .line 5456
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5457
    const-string v1, "PackageParser"

    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    return-object v0

    .line 5463
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 5464
    .local v1, "encoded":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    .end local v1    # "encoded":[B
    move-object v1, v2

    .line 5468
    .local v1, "keySpec":Ljava/security/spec/EncodedKeySpec;
    nop

    .line 5467
    nop

    .line 5472
    :try_start_1
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 5473
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 5476
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 5474
    :catch_1
    move-exception v2

    .line 5475
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "PackageParser"

    const-string v4, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5482
    :goto_0
    :try_start_2
    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 5483
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    .line 5486
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v2

    goto :goto_1

    .line 5484
    :catch_3
    move-exception v2

    .line 5485
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "PackageParser"

    const-string v4, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5488
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5492
    :goto_1
    :try_start_3
    const-string v2, "DSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 5493
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    return-object v3

    .line 5496
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_4
    move-exception v2

    goto :goto_2

    .line 5494
    :catch_5
    move-exception v2

    .line 5495
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "PackageParser"

    const-string v4, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5501
    :goto_2
    return-object v0

    .line 5465
    .end local v1    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_6
    move-exception v1

    .line 5466
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "PackageParser"

    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    return-object v0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;
    .locals 23
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    .line 5179
    move-object/from16 v2, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5182
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_0

    .line 5183
    new-instance v0, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xf

    const/16 v15, 0x8

    const/16 v16, 0xc

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v18, 0x6

    const/16 v19, 0x7

    const/16 v20, 0x4

    move-object v8, v0

    move-object v9, v6

    move-object/from16 v17, v10

    move-object v10, v3

    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 5194
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v8, "<service>"

    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 5197
    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 5198
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 5200
    new-instance v0, Landroid/content/pm/PackageParser$Service;

    iget-object v9, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v10, Landroid/content/pm/ServiceInfo;

    invoke-direct {v10}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v0, v9, v10}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    move-object v9, v0

    .line 5201
    .local v9, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v10, 0x0

    aget-object v0, v3, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 5202
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5203
    return-object v11

    .line 5206
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 5208
    .local v12, "setExported":Z
    if-eqz v12, :cond_2

    .line 5209
    iget-object v13, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v13, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5213
    :cond_2
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 5215
    .local v14, "str":Ljava/lang/String;
    if-nez v14, :cond_3

    .line 5216
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v15, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v15, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_1

    .line 5218
    :cond_3
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_4
    move-object v15, v11

    :goto_0
    iput-object v15, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 5221
    :goto_1
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v15, 0x11

    .line 5222
    invoke-virtual {v1, v15, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 5224
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5225
    const/16 v0, 0x9

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    .line 5228
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v13, v15

    iput v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5230
    :cond_5
    const/16 v0, 0xa

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5233
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5235
    :cond_6
    const/16 v0, 0xe

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v13, 0x4

    if-eqz v0, :cond_7

    .line 5238
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v11, v13

    iput v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5240
    :cond_7
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5243
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v16, 0x40000000    # 2.0f

    or-int v11, v11, v16

    iput v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5246
    :cond_8
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v11, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v13, 0xd

    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v11, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    iput-boolean v13, v0, Landroid/content/pm/ServiceInfo;->encryptionAware:Z

    .line 5249
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v0, :cond_9

    .line 5250
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v11, v11, 0x100

    iput v11, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5254
    :cond_9
    const/16 v0, 0x10

    .line 5255
    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 5256
    .local v11, "visibleToEphemeral":Z
    const/high16 v13, 0x100000

    if-eqz v11, :cond_a

    .line 5257
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v10, v13

    iput v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5258
    iput-boolean v15, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 5261
    :cond_a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5263
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    .line 5267
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v10, :cond_b

    .line 5268
    const-string v0, "Heavy-weight applications can not have services in main process"

    const/4 v10, 0x0

    aput-object v0, v3, v10

    .line 5269
    const/4 v0, 0x0

    return-object v0

    .line 5273
    :cond_b
    const/4 v10, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 5275
    .local v0, "outerDepth":I
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    move/from16 v21, v10

    .line 5275
    .local v21, "type":I
    if-eq v10, v15, :cond_15

    move/from16 v10, v21

    const/4 v13, 0x3

    if-ne v10, v13, :cond_d

    .line 5277
    .end local v21    # "type":I
    .local v10, "type":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v0, :cond_c

    goto :goto_3

    .line 5313
    :cond_c
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    move-object v2, v5

    const/4 v0, 0x1

    move-object v4, v3

    goto/16 :goto_6

    .line 5278
    :cond_d
    :goto_3
    if-eq v10, v13, :cond_14

    const/4 v15, 0x4

    if-ne v10, v15, :cond_e

    .line 5279
    nop

    .line 5273
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    move-object v2, v5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v4, v3

    const/high16 v3, 0x100000

    goto/16 :goto_5

    .line 5282
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v15, "intent-filter"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 5283
    new-instance v13, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v13, v9}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 5284
    .local v13, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v17, v0

    move-object v0, v7

    .line 5284
    .end local v0    # "outerDepth":I
    .local v17, "outerDepth":I
    move-object/from16 v18, v1

    move-object v1, v5

    .line 5284
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v18, "sa":Landroid/content/res/TypedArray;
    move-object v2, v4

    move v3, v15

    move-object v15, v4

    move/from16 v4, v16

    move-object v5, v13

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 5286
    const/4 v0, 0x0

    return-object v0

    .line 5288
    :cond_f
    if-eqz v11, :cond_10

    .line 5289
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5290
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    goto :goto_4

    .line 5292
    :cond_10
    const/4 v0, 0x1

    const/high16 v3, 0x100000

    :goto_4
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getOrder()I

    move-result v1

    iget v2, v9, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/PackageParser$Service;->order:I

    .line 5293
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5294
    .end local v13    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    nop

    .line 5273
    move-object/from16 v4, p5

    const/4 v1, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_5

    .line 5294
    .end local v17    # "outerDepth":I
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    :cond_11
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    const/4 v0, 0x1

    const/high16 v3, 0x100000

    .line 5294
    .end local v0    # "outerDepth":I
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v17    # "outerDepth":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5295
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object/from16 v4, p5

    move-object/from16 v2, p2

    invoke-direct {v7, v2, v15, v1, v4}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_12

    .line 5297
    const/4 v1, 0x0

    return-object v1

    .line 5273
    .end local v10    # "type":I
    :cond_12
    const/4 v1, 0x0

    goto :goto_5

    .line 5301
    .restart local v10    # "type":I
    :cond_13
    move-object/from16 v4, p5

    const/4 v1, 0x0

    move-object/from16 v2, p2

    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <service>: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5302
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5303
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5301
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5304
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5305
    goto :goto_5

    .line 5273
    .end local v10    # "type":I
    .end local v17    # "outerDepth":I
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    :cond_14
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    move-object v2, v5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v4, v3

    const/high16 v3, 0x100000

    .line 5273
    .end local v0    # "outerDepth":I
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v17    # "outerDepth":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :goto_5
    move-object/from16 v6, p1

    move-object v5, v2

    move v13, v3

    move-object v3, v4

    move-object v4, v15

    move-object/from16 v1, v18

    const/4 v10, 0x0

    move-object/from16 v2, p6

    move v15, v0

    move/from16 v0, v17

    goto/16 :goto_2

    .line 5313
    .end local v17    # "outerDepth":I
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "type":I
    :cond_15
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v2, v5

    move v0, v15

    move/from16 v10, v21

    move-object v15, v4

    move-object v4, v3

    .line 5313
    .end local v0    # "outerDepth":I
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v21    # "type":I
    .restart local v10    # "type":I
    .restart local v17    # "outerDepth":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :goto_6
    if-nez v12, :cond_17

    .line 5314
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5317
    :cond_17
    return-object v9
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1413
    move-object v0, p3

    .line 1416
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-static {p3, v0}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    .line 1418
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1422
    const/4 v2, 0x0

    .line 1424
    .local v2, "foundApp":Z
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1425
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 1426
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_6

    .line 1427
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 1428
    goto :goto_0

    .line 1431
    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1432
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "application"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1433
    if-eqz v2, :cond_3

    .line 1439
    const-string v6, "PackageParser"

    const-string v7, "<manifest> has more than one <application>"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1441
    goto :goto_0

    .line 1445
    :cond_3
    const/4 v2, 0x1

    .line 1446
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1447
    return-object v1

    .line 1463
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 1457
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_5
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <manifest>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1457
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1461
    goto :goto_0

    .line 1465
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 1466
    const/4 v1, 0x0

    const-string v4, "<manifest> does not contain an <application>"

    aput-object v4, p6, v1

    .line 1467
    const/16 v1, -0x6d

    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1470
    :cond_7
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "splitIndex"    # I
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p3

    .line 1366
    move-object v10, p1

    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v11, v0, p2

    .line 1368
    .local v11, "apkPath":Ljava/lang/String;
    const/4 v0, 0x1

    iput v0, v8, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1369
    iput-object v11, v8, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1374
    const/4 v1, 0x0

    move-object v2, v1

    .line 1377
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v9, v11}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v3

    move v12, v3

    .line 1378
    .local v12, "cookie":I
    if-eqz v12, :cond_1

    .line 1383
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v9, v12, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v13, v3

    .line 1384
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources;

    iget-object v2, v8, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v3, v9, v2, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1386
    .local v3, "res":Landroid/content/res/Resources;
    new-array v0, v0, [Ljava/lang/String;

    .line 1387
    .local v0, "outError":[Ljava/lang/String;
    move-object v1, v8

    move-object v2, v10

    move-object v4, v13

    move/from16 v5, p4

    move/from16 v6, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1388
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    .line 1399
    .end local v0    # "outError":[Ljava/lang/String;
    .end local v12    # "cookie":I
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1400
    nop

    .line 1399
    nop

    .line 1401
    return-void

    .line 1389
    .restart local v0    # "outError":[Ljava/lang/String;
    .restart local v12    # "cookie":I
    :cond_0
    :try_start_2
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    iget v4, v8, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1399
    .end local v0    # "outError":[Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v12    # "cookie":I
    :catchall_0
    move-exception v0

    move-object v10, v1

    goto :goto_0

    .line 1395
    :catch_0
    move-exception v0

    move-object v10, v1

    goto :goto_1

    .line 1393
    :catch_1
    move-exception v0

    move-object v10, v1

    goto :goto_2

    .line 1399
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v0

    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .local v10, "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    move-object v2, v13

    goto :goto_5

    .line 1395
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_2
    move-exception v0

    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_1
    move-object v2, v13

    goto :goto_3

    .line 1393
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_3
    move-exception v0

    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_2
    move-object v2, v13

    goto :goto_4

    .line 1379
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v12    # "cookie":I
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    :try_start_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1399
    .end local v12    # "cookie":I
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 1395
    :catch_4
    move-exception v0

    .line 1396
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_3
    :try_start_4
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1393
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_5
    move-exception v0

    .line 1394
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1399
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .locals 24
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 3922
    move-object/from16 v11, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3925
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v9, 0x4

    if-eqz v1, :cond_0

    .line 3927
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v2, v1, p5

    or-int/2addr v2, v9

    aput v2, v1, p5

    .line 3930
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3932
    .local v8, "classLoaderName":Ljava/lang/String;
    const/16 v7, -0x6c

    const/4 v5, 0x0

    if-eqz v8, :cond_2

    invoke-static {v8}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3935
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v5

    .line 3936
    iput v7, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3937
    return v5

    .line 3933
    :cond_2
    :goto_0
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object v8, v1, p5

    .line 3940
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    move-object/from16 v16, v0

    .line 3940
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v1, "innerDepth":I
    .local v16, "sa":Landroid/content/res/TypedArray;
    :goto_1
    move v4, v1

    .line 3942
    .end local v1    # "innerDepth":I
    .local v4, "innerDepth":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v3, v0

    .line 3942
    .local v3, "type":I
    if-eq v0, v10, :cond_19

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    .line 3943
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v4, :cond_3

    goto :goto_2

    .line 4081
    :cond_3
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v18, v8

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    goto/16 :goto_8

    .line 3944
    :cond_4
    :goto_2
    if-eq v3, v0, :cond_18

    if-ne v3, v9, :cond_5

    .line 3945
    nop

    .line 3940
    move/from16 v22, v4

    move v1, v5

    move v5, v7

    move-object/from16 v18, v8

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    goto/16 :goto_7

    .line 3948
    :cond_5
    const/16 v17, 0x0

    .line 3952
    .local v17, "parsedComponent":Landroid/content/pm/ComponentInfo;
    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser$1;)V

    .line 3953
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3954
    .local v2, "tagName":Ljava/lang/String;
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3955
    const/16 v18, 0x0

    iget-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object v0, v15

    move/from16 v19, v1

    move-object v1, v14

    move-object/from16 v20, v2

    move-object v2, v13

    .line 3955
    .end local v2    # "tagName":Ljava/lang/String;
    .local v20, "tagName":Ljava/lang/String;
    move/from16 v21, v3

    move-object v3, v12

    .line 3955
    .end local v3    # "type":I
    .local v21, "type":I
    move/from16 v22, v4

    move/from16 v4, p4

    .line 3955
    .end local v4    # "innerDepth":I
    .local v22, "innerDepth":I
    move v10, v5

    move-object v5, v11

    move v10, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v19

    .line 3955
    .end local v8    # "classLoaderName":Ljava/lang/String;
    .local v18, "classLoaderName":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    .line 3957
    .local v0, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v0, :cond_6

    .line 3958
    iput v10, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3959
    const/4 v1, 0x0

    return v1

    .line 3962
    :cond_6
    const/4 v1, 0x0

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3963
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3965
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v0, "parsedComponent":Landroid/content/pm/ComponentInfo;
    nop

    .line 4072
    move-object v3, v0

    move v5, v10

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    move-object/from16 v2, v20

    goto/16 :goto_6

    .line 3965
    .end local v0    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v18    # "classLoaderName":Ljava/lang/String;
    .end local v20    # "tagName":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "innerDepth":I
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v3    # "type":I
    .restart local v4    # "innerDepth":I
    .restart local v8    # "classLoaderName":Ljava/lang/String;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_7
    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move v1, v5

    move v10, v7

    move-object/from16 v18, v8

    .line 3965
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v4    # "innerDepth":I
    .end local v8    # "classLoaderName":Ljava/lang/String;
    .restart local v18    # "classLoaderName":Ljava/lang/String;
    .restart local v20    # "tagName":Ljava/lang/String;
    .restart local v21    # "type":I
    .restart local v22    # "innerDepth":I
    const-string/jumbo v0, "receiver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3965
    .end local v20    # "tagName":Ljava/lang/String;
    .restart local v2    # "tagName":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 3966
    const/4 v0, 0x1

    const/4 v3, 0x0

    move-object v7, v15

    move-object v8, v14

    move v4, v9

    move-object v9, v13

    move v5, v10

    const/4 v4, 0x1

    move-object v10, v12

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    move-object v4, v14

    move v14, v0

    move-object v0, v15

    move v15, v3

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v3

    .line 3968
    .local v3, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v3, :cond_8

    .line 3969
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3970
    return v1

    .line 3973
    :cond_8
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3974
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3976
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    nop

    .line 4072
    :goto_3
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    goto/16 :goto_6

    .line 3976
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_9
    move v5, v10

    move-object v4, v14

    move-object v0, v15

    const-string/jumbo v3, "service"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3977
    move-object v7, v0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v3

    .line 3978
    .local v3, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v3, :cond_a

    .line 3979
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3980
    return v1

    .line 3983
    :cond_a
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3984
    iget-object v3, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 3986
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    goto :goto_3

    .line 3986
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_b
    const-string/jumbo v3, "provider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3987
    move-object v7, v0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v3

    .line 3988
    .local v3, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v3, :cond_c

    .line 3989
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3990
    return v1

    .line 3993
    :cond_c
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3994
    iget-object v3, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 3996
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    goto :goto_3

    .line 3996
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_d
    const-string v3, "activity-alias"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3997
    move-object v7, v0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v3

    .line 3998
    .local v3, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v3, :cond_e

    .line 3999
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4000
    return v1

    .line 4003
    :cond_e
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4004
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4006
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    goto :goto_3

    .line 4006
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4010
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    invoke-direct {v0, v7, v8, v3, v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v3, :cond_15

    .line 4012
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4013
    return v1

    .line 4016
    :cond_10
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    const-string/jumbo v3, "uses-static-library"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4017
    invoke-direct {v0, v4, v7, v8, v9}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 4018
    return v1

    .line 4021
    :cond_11
    const-string/jumbo v3, "uses-library"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4022
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4027
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 4029
    .local v10, "lname":Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {v3, v11, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 4033
    .local v12, "req":Z
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 4035
    if-eqz v10, :cond_13

    .line 4036
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 4037
    if-eqz v12, :cond_12

    .line 4039
    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 4040
    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_4

    .line 4044
    :cond_12
    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 4045
    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4051
    :cond_13
    :goto_4
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4053
    .end local v10    # "lname":Ljava/lang/String;
    .end local v12    # "req":Z
    nop

    .line 4072
    move-object/from16 v16, v3

    goto :goto_5

    .line 4053
    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "sa":Landroid/content/res/TypedArray;
    :cond_14
    const-string/jumbo v3, "uses-package"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4056
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4072
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_15
    :goto_5
    move-object/from16 v3, v17

    :goto_6
    if-eqz v3, :cond_16

    iget-object v10, v3, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    if-nez v10, :cond_16

    .line 4077
    iget-object v10, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v10, v10, p5

    iput-object v10, v3, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 4079
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    :cond_16
    goto :goto_7

    .line 4060
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_17
    const-string v3, "PackageParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <application>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4062
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4060
    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4064
    goto :goto_7

    .line 3940
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v18    # "classLoaderName":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "innerDepth":I
    .restart local v4    # "innerDepth":I
    .restart local v8    # "classLoaderName":Ljava/lang/String;
    :cond_18
    move/from16 v22, v4

    move v1, v5

    move v5, v7

    move-object/from16 v18, v8

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    .line 3940
    .end local v4    # "innerDepth":I
    .restart local v1    # "innerDepth":I
    :goto_7
    move-object v15, v0

    move-object v14, v4

    move-object v13, v7

    move-object v12, v8

    move-object v11, v9

    move-object/from16 v8, v18

    const/4 v9, 0x4

    const/4 v10, 0x1

    move v7, v5

    move v5, v1

    move/from16 v1, v22

    goto/16 :goto_1

    .line 4081
    .end local v1    # "innerDepth":I
    .local v3, "type":I
    .restart local v4    # "innerDepth":I
    :cond_19
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v18, v8

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    .line 4081
    .end local v3    # "type":I
    .end local v4    # "innerDepth":I
    .end local v8    # "classLoaderName":Ljava/lang/String;
    .restart local v18    # "classLoaderName":Ljava/lang/String;
    .restart local v21    # "type":I
    .restart local v22    # "innerDepth":I
    :goto_8
    const/4 v1, 0x1

    return v1
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2709
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2710
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2714
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2716
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 2718
    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2719
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 2723
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2725
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2727
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2728
    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .locals 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2836
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2841
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2844
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2845
    .local v3, "maxSdkVersion":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 2847
    .local v5, "val":Landroid/util/TypedValue;
    if-eqz v5, :cond_0

    .line 2848
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_0

    .line 2849
    iget v3, v5, Landroid/util/TypedValue;->data:I

    .line 2853
    :cond_0
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 2856
    .local v6, "requiredFeature":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2859
    .local v1, "requiredNotfeature":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2861
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2863
    if-nez v2, :cond_1

    .line 2864
    return v4

    .line 2867
    :cond_1
    if-eqz v3, :cond_2

    sget v7, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v3, v7, :cond_2

    .line 2868
    return v4

    .line 2872
    :cond_2
    if-eqz v6, :cond_3

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v7, v6}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2873
    return v4

    .line 2877
    :cond_3
    if-eqz v1, :cond_4

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 2878
    invoke-interface {v7, v1}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2879
    return v4

    .line 2882
    :cond_4
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2883
    .local v7, "index":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 2884
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2886
    :cond_5
    const-string v8, "PackageParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " at: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2886
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    :goto_0
    return v4
.end method

.method private parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2733
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2737
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2739
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2741
    .local v4, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2743
    .local v5, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2746
    const/16 v6, -0x6c

    if-eqz v2, :cond_4

    if-ltz v4, :cond_4

    if-nez v5, :cond_0

    goto :goto_0

    .line 2755
    :cond_0
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Depending on multiple versions of static library "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    .line 2757
    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2758
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2759
    return v1

    .line 2762
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 2765
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2768
    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2769
    .local v6, "additionalCertSha256Digests":[Ljava/lang/String;
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_2

    .line 2770
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/PackageParser;->parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2771
    if-nez v6, :cond_3

    .line 2772
    return v1

    .line 2775
    :cond_2
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2778
    :cond_3
    array-length v7, v6

    add-int/2addr v7, v3

    new-array v7, v7, [Ljava/lang/String;

    .line 2779
    .local v7, "certSha256Digests":[Ljava/lang/String;
    aput-object v5, v7, v1

    .line 2780
    array-length v8, v6

    invoke-static {v6, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2783
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 2784
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    int-to-long v8, v4

    invoke-static {v1, v8, v9, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 2786
    const-class v1, [Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v1, v8, v7, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 2789
    return v3

    .line 2747
    .end local v6    # "additionalCertSha256Digests":[Ljava/lang/String;
    .end local v7    # "certSha256Digests":[Ljava/lang/String;
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad uses-static-library declaration name: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " version: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " certDigest"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    .line 2749
    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2750
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2751
    return v1
.end method

.method private static parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .locals 8
    .param p0, "attrs"    # Landroid/util/AttributeSet;

    .line 5424
    const/4 v0, 0x0

    .line 5425
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5427
    .local v1, "encodedPublicKey":Ljava/lang/String;
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 5428
    .local v2, "attrCount":I
    const/4 v3, 0x0

    .line 5428
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 5429
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 5430
    .local v4, "attrResId":I
    const v5, 0x1010003

    if-eq v4, v5, :cond_1

    const v5, 0x10103a6

    if-eq v4, v5, :cond_0

    .line 5430
    .end local v4    # "attrResId":I
    goto :goto_1

    .line 5436
    .restart local v4    # "attrResId":I
    :cond_0
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 5436
    .end local v4    # "attrResId":I
    goto :goto_1

    .line 5432
    .restart local v4    # "attrResId":I
    :cond_1
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 5433
    nop

    .line 5428
    .end local v4    # "attrResId":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5441
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 5446
    :cond_3
    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 5447
    .local v4, "publicKey":Ljava/security/PublicKey;
    if-nez v4, :cond_4

    .line 5448
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse verifier public key for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5449
    return-object v3

    .line 5452
    :cond_4
    new-instance v3, Landroid/content/pm/VerifierInfo;

    invoke-direct {v3, v0, v4}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v3

    .line 5442
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    :cond_5
    :goto_2
    const-string v4, "PackageParser"

    const-string/jumbo v5, "verifier package name was null; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5443
    return-object v3
.end method

.method private setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "sa"    # Landroid/content/res/TypedArray;
    .param p3, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4509
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0xc00

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4513
    .local v0, "appExplicitDefault":Z
    :goto_0
    const/16 v3, 0x28

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v0, :cond_1

    goto :goto_2

    .line 4527
    :cond_1
    iget-object v1, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    .line 4531
    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4532
    return-void

    .line 4537
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4538
    const/4 v1, 0x6

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    .line 4539
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4540
    const/4 v1, 0x5

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    .line 4541
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4542
    const/4 v1, 0x7

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    .line 4544
    :cond_5
    const/4 v1, 0x4

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4546
    :goto_1
    return-void

    .line 4516
    :cond_6
    :goto_2
    iget-object v4, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    .line 4518
    .local v2, "appResizeable":Z
    :goto_3
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4520
    const/4 v1, 0x2

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_4

    .line 4522
    :cond_8
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4524
    :goto_4
    return-void
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .param p0, "compatibilityModeEnabled"    # Z

    .line 8037
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 8038
    return-void
.end method

.method private setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4555
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 4556
    const v0, 0x3fee147b    # 1.86f

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4558
    .local v0, "maxAspectRatio":F
    :goto_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v3, v1, :cond_1

    const/high16 v1, 0x40400000    # 3.0f

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    .line 4561
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 4563
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    goto :goto_2

    .line 4564
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v2, "android.max_aspect"

    .line 4565
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4566
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v2, "android.max_aspect"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 4569
    :cond_3
    :goto_2
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 4571
    .local v2, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-static {v2}, Landroid/content/pm/PackageParser$Activity;->access$300(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4572
    goto :goto_3

    .line 4580
    :cond_4
    iget-object v3, v2, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_5

    .line 4581
    iget-object v3, v2, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    const-string v4, "android.max_aspect"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    goto :goto_4

    .line 4582
    :cond_5
    move v3, v0

    .line 4584
    .local v3, "activityAspectRatio":F
    :goto_4
    invoke-static {v2, v3}, Landroid/content/pm/PackageParser$Activity;->access$200(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4585
    .end local v2    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v3    # "activityAspectRatio":F
    goto :goto_3

    .line 4586
    :cond_6
    return-void
.end method

.method public static toCacheEntryStatic(Landroid/content/pm/PackageParser$Package;)[B
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1094
    .local v0, "p":Landroid/os/Parcel;
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;-><init>(Landroid/os/Parcel;)V

    .line 1096
    .local v1, "helper":Landroid/content/pm/PackageParserCacheHelper$WriteHelper;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageParser$Package;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1098
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->finishAndUninstall()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 1101
    .local v2, "serialized":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1103
    return-object v2
.end method

.method public static toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .locals 3
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1476
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1477
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1478
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1480
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .line 7445
    sget-boolean v0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_0

    .line 7446
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 7448
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v0, :cond_1

    .line 7449
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 7451
    :cond_1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7453
    :goto_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v0, :cond_2

    .line 7454
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    .line 7456
    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7458
    :goto_1
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_3

    .line 7459
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_2

    .line 7461
    :cond_3
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 7463
    :goto_2
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v0, :cond_4

    .line 7464
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_3

    .line 7466
    :cond_4
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 7468
    :goto_3
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 7469
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_4

    .line 7471
    :cond_5
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 7473
    :goto_4
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v0, v1, :cond_6

    .line 7474
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_6

    .line 7475
    :cond_6
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_8

    .line 7476
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_6

    .line 7477
    :cond_8
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 7479
    :cond_9
    iput-boolean v3, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 7481
    :cond_a
    :goto_6
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 7482
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 7483
    iget v0, p2, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 7485
    :cond_b
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    if-ne v0, v1, :cond_c

    .line 7486
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 7488
    :cond_c
    invoke-static {p2}, Landroid/content/pm/SELinuxUtil;->assignSeinfoUser(Landroid/content/pm/PackageUserState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 7489
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 7490
    return-void
.end method

.method private static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    .line 1631
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1632
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1633
    .local v1, "hasSep":Z
    const/4 v2, 0x1

    .line 1634
    .local v2, "front":Z
    const/4 v3, 0x0

    .line 1634
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 1635
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1636
    .local v4, "c":C
    const/16 v5, 0x61

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7a

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_2

    .line 1637
    :cond_1
    const/4 v2, 0x0

    .line 1638
    goto :goto_1

    .line 1640
    :cond_2
    if-nez v2, :cond_4

    .line 1641
    const/16 v5, 0x30

    if-lt v4, v5, :cond_3

    const/16 v5, 0x39

    if-le v4, v5, :cond_5

    :cond_3
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_4

    .line 1642
    goto :goto_1

    .line 1645
    :cond_4
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_6

    .line 1646
    const/4 v1, 0x1

    .line 1647
    const/4 v2, 0x1

    .line 1648
    nop

    .line 1634
    .end local v4    # "c":C
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1650
    .restart local v4    # "c":C
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1652
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1653
    const-string v3, "Invalid filename"

    return-object v3

    .line 1655
    :cond_8
    if-nez v1, :cond_a

    if-nez p1, :cond_9

    goto :goto_2

    .line 1656
    :cond_9
    const-string/jumbo v3, "must have at least one \'.\' separator"

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x0

    .line 1655
    :goto_3
    return-object v3
.end method


# virtual methods
.method protected fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "bytes"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1062
    invoke-static {p1}, Landroid/content/pm/PackageParser;->fromCacheEntryStatic([B)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1293
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1294
    .local v0, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v1, :cond_1

    .line 1295
    iget-boolean v1, v0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1296
    :cond_0
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a coreApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1301
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v1, v0, p2}, Landroid/content/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1303
    .local v1, "assetLoader":Landroid/content/pm/split/SplitAssetLoader;
    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1304
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1305
    iget-boolean v3, v0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    nop

    .line 1311
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1306
    return-object v2

    .line 1311
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1307
    :catch_0
    move-exception v2

    .line 1308
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1311
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1046
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1017
    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1018
    .local v0, "parsed":Landroid/content/pm/PackageParser$Package;
    :goto_0
    if-eqz v0, :cond_1

    .line 1019
    return-object v0

    .line 1022
    :cond_1
    sget-boolean v1, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    move-wide v4, v2

    .line 1023
    .local v4, "parseTime":J
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1024
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_2

    .line 1026
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1029
    :goto_2
    sget-boolean v1, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    nop

    :cond_4
    move-wide v1, v2

    .line 1030
    .local v1, "cacheTime":J
    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V

    .line 1031
    sget-boolean v3, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    if-eqz v3, :cond_5

    .line 1032
    sub-long v4, v1, v4

    .line 1033
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    .line 1034
    add-long v6, v4, v1

    const-wide/16 v8, 0x64

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    .line 1035
    const-string v3, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parse times for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\': parse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms, update_cache="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_5
    return-object v0
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 573
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 574
    return-void
.end method

.method public setCallback(Landroid/content/pm/PackageParser$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/content/pm/PackageParser$Callback;

    .line 614
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 615
    return-void
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 566
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 567
    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0
    .param p1, "onlyCoreApps"    # Z

    .line 562
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 563
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .param p1, "procs"    # [Ljava/lang/String;

    .line 553
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 554
    return-void
.end method

.method protected toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1086
    invoke-static {p1}, Landroid/content/pm/PackageParser;->toCacheEntryStatic(Landroid/content/pm/PackageParser$Package;)[B

    move-result-object v0

    return-object v0
.end method
