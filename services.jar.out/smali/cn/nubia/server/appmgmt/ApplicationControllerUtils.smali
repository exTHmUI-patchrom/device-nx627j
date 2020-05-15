.class public Lcn/nubia/server/appmgmt/ApplicationControllerUtils;
.super Ljava/lang/Object;
.source "ApplicationControllerUtils.java"


# static fields
.field private static final BEHAVIOR_DETECTION:Ljava/lang/String; = "nubia_behaviordetection_feature"

.field private static final CABC:Ljava/lang/String; = "PowerController_CABC"

.field private static final COLOR_STATUSBAR:Ljava/lang/String; = "BehaviorDetection_ColorStatusBar"

.field private static final CPUGPU:Ljava/lang/String; = "PowerController_CPUGPU"

.field private static final DANGEROUS_WAKELOCK_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_COLLECTION:Ljava/lang/String; = "BehaviorDetection_AppDataCollection"

.field private static final FREEZE:Ljava/lang/String; = "PowerController_Freeze"

.field private static final INTERNATIONAL:Ljava/lang/String; = "PowerController_International"

.field private static final IS_OPEN_4D_VIBRATION:Ljava/lang/String; = "is_open_4d_vibration"

.field private static final MANAGE_WAKEUP_ALARM_LIST:[Ljava/lang/String;

.field private static final POWER_CONTROLLER:Ljava/lang/String; = "nubia_powercontroller_feature"

.field private static final SPECIAL_APP_LIST:[Ljava/lang/String;

.field private static final SYSTEM_FILE:Ljava/io/File;

.field private static final VIBRATION_4D_CONTROLLER:Ljava/lang/String; = "nubia_4d_vibration_feature"

.field private static final WECHAT_DANGEROUS_WAKELOCKS:[Ljava/lang/String;

.field public static mBehaviorDetectionFeature:Z

.field public static mCABCFeature:Z

.field public static mCPUGPUFeature:Z

.field public static mColorStatusBarFeature:Z

.field public static mDataCollectionFeature:Z

.field public static mFreezeFeature:Z

.field public static mInternationalFeature:Z

.field public static mPowerManageFeature:Z

.field public static mVibration4DFeature:Z

.field private static sDefaultAllowedAppsCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNeedCheckAppsCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mPowerManageFeature:Z

    .line 36
    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mCABCFeature:Z

    .line 37
    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mCPUGPUFeature:Z

    .line 38
    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mFreezeFeature:Z

    .line 39
    const/4 v1, 0x0

    sput-boolean v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mInternationalFeature:Z

    .line 41
    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mBehaviorDetectionFeature:Z

    .line 42
    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mColorStatusBarFeature:Z

    .line 43
    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mDataCollectionFeature:Z

    .line 45
    sput-boolean v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mVibration4DFeature:Z

    .line 147
    const-string v0, "com.tencent.mm"

    const-string v2, "com.tencent.qqlite"

    const-string v3, "com.tencent.mobileqq"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SPECIAL_APP_LIST:[Ljava/lang/String;

    .line 157
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->MANAGE_WAKEUP_ALARM_LIST:[Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DANGEROUS_WAKELOCK_MAP:Ljava/util/HashMap;

    .line 185
    const-string v0, "WakerLock:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->WECHAT_DANGEROUS_WAKELOCKS:[Ljava/lang/String;

    .line 189
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DANGEROUS_WAKELOCK_MAP:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm"

    sget-object v2, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->WECHAT_DANGEROUS_WAKELOCKS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static initFeatureConfig()V
    .locals 12

    .line 48
    const-string/jumbo v0, "nubia_powercontroller_feature"

    invoke-static {v0}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "feature_PowerManage":Ljava/lang/String;
    const-string/jumbo v1, "nubia_powercontroller_feature"

    const-string v2, "PowerController_CABC"

    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "feature_CABC":Ljava/lang/String;
    const-string/jumbo v2, "nubia_powercontroller_feature"

    const-string v3, "PowerController_CPUGPU"

    invoke-static {v2, v3}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "feature_CPUGPU":Ljava/lang/String;
    const-string/jumbo v3, "nubia_powercontroller_feature"

    const-string v4, "PowerController_Freeze"

    invoke-static {v3, v4}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "feature_Freeze":Ljava/lang/String;
    const-string/jumbo v4, "nubia_powercontroller_feature"

    const-string v5, "PowerController_International"

    invoke-static {v4, v5}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "feature_International":Ljava/lang/String;
    const-string/jumbo v5, "nubia_behaviordetection_feature"

    invoke-static {v5}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "feature_BehaviorDetection":Ljava/lang/String;
    const-string/jumbo v6, "nubia_behaviordetection_feature"

    const-string v7, "BehaviorDetection_ColorStatusBar"

    invoke-static {v6, v7}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "feature_ColorStatusBar":Ljava/lang/String;
    const-string/jumbo v7, "nubia_behaviordetection_feature"

    const-string v8, "BehaviorDetection_AppDataCollection"

    invoke-static {v7, v8}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "feature_DataCollection":Ljava/lang/String;
    const-string/jumbo v8, "nubia_4d_vibration_feature"

    const-string/jumbo v9, "is_open_4d_vibration"

    invoke-static {v8, v9}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "feature_Vibration4D":Ljava/lang/String;
    const-string/jumbo v9, "true"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_3

    .line 61
    const-string/jumbo v9, "off"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mCABCFeature:Z

    .line 64
    :cond_0
    const-string/jumbo v9, "off"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 65
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mCPUGPUFeature:Z

    .line 67
    :cond_1
    const-string/jumbo v9, "off"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 68
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mFreezeFeature:Z

    .line 70
    :cond_2
    const-string/jumbo v9, "on"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 71
    sput-boolean v10, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mInternationalFeature:Z

    goto :goto_0

    .line 73
    :cond_3
    const-string v9, "false"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 74
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mPowerManageFeature:Z

    .line 75
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mCABCFeature:Z

    .line 76
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mCPUGPUFeature:Z

    .line 77
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mFreezeFeature:Z

    .line 80
    :cond_4
    :goto_0
    const-string/jumbo v9, "true"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 81
    const-string/jumbo v9, "off"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 82
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mColorStatusBarFeature:Z

    .line 84
    :cond_5
    const-string/jumbo v9, "off"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 85
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mDataCollectionFeature:Z

    goto :goto_1

    .line 87
    :cond_6
    const-string v9, "false"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 88
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mBehaviorDetectionFeature:Z

    .line 89
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mColorStatusBarFeature:Z

    .line 90
    sput-boolean v11, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mDataCollectionFeature:Z

    .line 93
    :cond_7
    :goto_1
    const-string/jumbo v9, "true"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 94
    sput-boolean v10, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mVibration4DFeature:Z

    .line 96
    :cond_8
    return-void
.end method

.method private static isAppDefaultAllowed(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v2, p0, v1, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 131
    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 132
    :goto_0
    if-eqz v0, :cond_2

    .line 133
    const-string v2, "com.chaozh.iReaderNubia"

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.cts"

    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "cn.nubia"

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.test"

    .line 140
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    :cond_1
    return v3

    .line 144
    :cond_2
    return v1
.end method

.method public static isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 169
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DANGEROUS_WAKELOCK_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 170
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DANGEROUS_WAKELOCK_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 171
    .local v0, "dangerousWakeLocks":[Ljava/lang/String;
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 172
    .local v4, "element":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    const/4 v1, 0x1

    return v1

    .line 171
    .end local v4    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "dangerousWakeLocks":[Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public static isDefaultAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    return v0

    .line 113
    :cond_1
    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 114
    return v2

    .line 116
    :cond_2
    invoke-static {p0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isAppDefaultAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    return v0

    .line 120
    :cond_3
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    return v2
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isManageWakeupAlarm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 165
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->MANAGE_WAKEUP_ALARM_LIST:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSpecialApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 154
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SPECIAL_APP_LIST:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportRedMagic()Z
    .locals 3

    .line 181
    const-string v0, "1"

    const-string/jumbo v1, "ro.nubia.device.support_red_magic"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
