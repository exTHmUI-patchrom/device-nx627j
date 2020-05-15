.class public Lcn/nubia/server/appmgmt/EyeProtectionController;
.super Ljava/lang/Object;
.source "EyeProtectionController.java"


# static fields
.field private static final ACTION_SCREEN_CHANGED:Ljava/lang/String; = "cn.nubia.action.SCREEN_CHANGED"

.field private static final AVAILABLE:Ljava/lang/String; = "Available"

.field private static DEBUG:Z = false

.field private static final KEY_SCREEN_CHANGED:Ljava/lang/String; = "displayid"

.field private static final MSG_AOD_OFF:I = 0x3

.field private static final MSG_AOD_ON:I = 0x2

.field private static final MSG_SCREEN_CHANGED:I = 0x1

.field private static final NUBIA_COLOR_MODE:Ljava/lang/String; = "nubia_color_mode"

.field private static final NUBIA_COLOR_MODE_TMP:Ljava/lang/String; = "nubia_color_mode_tmp"

.field private static final NUBIA_CURRENT_SCREEN:Ljava/lang/String; = "nubia_current_screen"

.field private static final NUBIA_NIGHT_AUTO_MODE:Ljava/lang/String; = "nubia_night_auto_mode"

.field private static final NUBIA_NIGHT_DISPLAY:Ljava/lang/String; = "nubia_night_display"

.field private static final SCREEN_MAIN:I = 0x0

.field private static final SCREEN_SECONDARY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EyeProtectionController"

.field private static final UNAVAILABLE:Ljava/lang/String; = "Unavailable"

.field public static mActivityNormalDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPackageNormalDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAodStart:Z

.field private mBeforeCallback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

.field private mCameraInUse:Z

.field private mCameraStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeMode:Z

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mCurrentScreen:I

.field private mHandler:Landroid/os/Handler;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningPackageName:Ljava/lang/String;

.field private mRunningclassName:Ljava/lang/String;

.field private mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

.field private final mSwitchModeChangeObserver:Landroid/database/ContentObserver;

.field private startImageEnhanceServiceRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->DEBUG:Z

    .line 87
    const-string v1, "com.gorgeous.lite"

    const-string v2, "com.picsart.studio"

    const-string/jumbo v3, "vStudio.Android.Camera360"

    const-string v4, "com.meitu.wheecam"

    const-string v5, "com.meitu.meiyancamera"

    const-string v6, "com.dabanniu.makeup"

    const-string v7, "com.benqu.wuta"

    const-string/jumbo v8, "my.beautyCamera"

    const-string v9, "com.mt.mtxx.mtxx"

    const-string v10, "com.meitu.camera"

    const-string v11, "com.campmobile.snowcamera"

    const-string v12, "com.lemon.faceu"

    const-string v13, "com.tencent.ttpic"

    const-string v14, "com.android.camera"

    const-string v15, "cn.nubia.gallery3d"

    const-string v16, "cn.nubia.photoeditor"

    const-string v17, "cn.nubia.video"

    const-string v18, "cn.nubia.factory"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mPackageNormalDisplayList:Ljava/util/List;

    .line 107
    const-string v1, "com.tencent.av.ui.AVActivity"

    const-string v2, "com.tencent.biz.qqstory.takevideo.EditPicActivity"

    const-string v3, "com.tencent.mobileqq.activity.aio.photo.AIOGalleryActivity"

    const-string v4, "com.tencent.biz.qqstory.takevideo.EditVideoActivity"

    const-string v5, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    const-string v6, "com.tencent.mm.plugin.mmsight.ui.SightCaptureUI"

    const-string v7, "com.tencent.mm.ui.chatting.gallery.ImageGalleryUI"

    const-string v8, "com.android.settings.dualscreen.AodPreviewActivity"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mActivityNormalDisplayList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCameraStates:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCameraInUse:Z

    .line 77
    iput v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCurrentScreen:I

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mChangeMode:Z

    .line 79
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mAodStart:Z

    .line 118
    new-instance v2, Lcn/nubia/server/appmgmt/EyeProtectionController$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController$1;-><init>(Lcn/nubia/server/appmgmt/EyeProtectionController;Landroid/os/Handler;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mSwitchModeChangeObserver:Landroid/database/ContentObserver;

    .line 229
    new-instance v2, Lcn/nubia/server/appmgmt/EyeProtectionController$4;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/EyeProtectionController$4;-><init>(Lcn/nubia/server/appmgmt/EyeProtectionController;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    new-instance v2, Lcn/nubia/server/appmgmt/EyeProtectionController$5;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/EyeProtectionController$5;-><init>(Lcn/nubia/server/appmgmt/EyeProtectionController;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mHandler:Landroid/os/Handler;

    .line 295
    new-instance v2, Lcn/nubia/server/appmgmt/EyeProtectionController$6;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/EyeProtectionController$6;-><init>(Lcn/nubia/server/appmgmt/EyeProtectionController;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->startImageEnhanceServiceRunnable:Ljava/lang/Runnable;

    .line 127
    sget-boolean v2, Lcn/nubia/server/appmgmt/EyeProtectionController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EyeProtectionController"

    const-string v3, "EyeProtectionController [boot]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iput-object p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    .line 129
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    const-class v3, Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnubia/os/screenswitch/ScreenSwitchManager;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    .line 130
    new-instance v2, Lcn/nubia/server/appmgmt/EyeProtectionController$2;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/EyeProtectionController$2;-><init>(Lcn/nubia/server/appmgmt/EyeProtectionController;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mBeforeCallback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    .line 138
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mBeforeCallback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    invoke-virtual {v2, v3, v0}, Lnubia/os/screenswitch/ScreenSwitchManager;->registerSwtichCallBack(Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;I)V

    .line 139
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->registerReceiver()V

    .line 140
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 141
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "nubia_color_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mSwitchModeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->initCamera()V

    .line 144
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setCurrentScreen(I)V

    .line 145
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 146
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/EyeProtectionController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mChangeMode:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/EyeProtectionController;)Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mBeforeCallback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setStorageColorMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setColorMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/EyeProtectionController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->getStorageColorMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/EyeProtectionController;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setCurrentScreen(I)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/EyeProtectionController;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->handleScreenChanged(I)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/server/appmgmt/EyeProtectionController;)Lcom/android/internal/app/ColorDisplayController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/server/appmgmt/EyeProtectionController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->startImageEnhanceServiceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/server/appmgmt/EyeProtectionController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/server/appmgmt/EyeProtectionController;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;
    .param p1, "x1"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->startImageEnhanceService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/EyeProtectionController;)Lnubia/os/screenswitch/ScreenSwitchManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mScreenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/EyeProtectionController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/EyeProtectionController;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCameraStates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/server/appmgmt/EyeProtectionController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCameraInUse:Z

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/EyeProtectionController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    iget v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCurrentScreen:I

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/EyeProtectionController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mAodStart:Z

    return v0
.end method

.method static synthetic access$702(Lcn/nubia/server/appmgmt/EyeProtectionController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mAodStart:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/EyeProtectionController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->isRunningCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/EyeProtectionController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->getColorMode()I

    move-result v0

    return v0
.end method

.method private getColorMode()I
    .locals 3

    .line 431
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_color_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProcessName()V
    .locals 5

    .line 408
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 409
    .local v0, "mAm":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 410
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mRunningPackageName:Ljava/lang/String;

    .line 412
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mRunningclassName:Ljava/lang/String;

    .line 413
    sget-boolean v2, Lcn/nubia/server/appmgmt/EyeProtectionController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EyeProtectionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRunningPackageName:="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mRunningPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",mRunningclassName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mRunningclassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v0    # "mAm":Landroid/app/ActivityManager;
    .end local v1    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EyeProtectionController"

    const-string v2, "getProcessName failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getStorageColorMode()I
    .locals 3

    .line 435
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_color_mode_tmp"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleScreenChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 317
    if-eqz p1, :cond_5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 328
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->resetNightDisplay()V

    .line 329
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mAodStart:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->isRunningCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 338
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->getStorageColorMode()I

    move-result v1

    .line 339
    .local v1, "recoverMode":I
    if-eq v1, v0, :cond_8

    .line 340
    const-string v0, "SwitchScreenCallback displayId 1 mAodStart false"

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setColorMode(ILjava/lang/String;)V

    .end local v1    # "recoverMode":I
    goto :goto_2

    .line 330
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->getColorMode()I

    move-result v1

    .line 331
    .local v1, "backMode":I
    if-eq v1, v0, :cond_4

    .line 332
    if-eqz v1, :cond_3

    .line 333
    const-string v2, "SwitchScreenCallback displayId 1 mAodStart true"

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setStorageColorMode(ILjava/lang/String;)V

    .line 335
    :cond_3
    const-string v2, "SwitchScreenCallback displayId 1 mAodStart true"

    invoke-direct {p0, v0, v2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setColorMode(ILjava/lang/String;)V

    .line 337
    .end local v1    # "backMode":I
    :cond_4
    goto :goto_2

    .line 318
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->getColorMode()I

    move-result v0

    .line 319
    .local v0, "backMode":I
    if-eqz v0, :cond_6

    .line 321
    const/4 v1, 0x0

    const-string v2, "SwitchScreenCallback displayId0 mAodStart true"

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setColorMode(ILjava/lang/String;)V

    .line 323
    :cond_6
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mAodStart:Z

    if-nez v1, :cond_7

    .line 324
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->recoverNightDisplay()V

    .line 325
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->startImageEnhanceServiceByNDActivatStatus()V

    .line 327
    .end local v0    # "backMode":I
    :cond_7
    nop

    .line 345
    :cond_8
    :goto_2
    return-void
.end method

.method private initCamera()V
    .locals 7

    .line 149
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 150
    .local v0, "cameraManager":Landroid/hardware/camera2/CameraManager;
    if-nez v0, :cond_0

    .line 151
    const-string v1, "EyeProtectionController"

    const-string v2, "CameraWatcher: cameraManager == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 156
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "cameraIds":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 158
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 159
    .local v4, "cameraId":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCameraStates:Ljava/util/Map;

    const-string v6, "Available"

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v4    # "cameraId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "cameraIds":[Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 166
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    new-instance v1, Lcn/nubia/server/appmgmt/EyeProtectionController$3;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/EyeProtectionController$3;-><init>(Lcn/nubia/server/appmgmt/EyeProtectionController;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 219
    return-void
.end method

.method private isRunningCamera()Z
    .locals 3

    .line 394
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->getProcessName()V

    .line 395
    sget-object v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mPackageNormalDisplayList:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mRunningPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 396
    return v1

    .line 397
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mActivityNormalDisplayList:Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mRunningclassName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    return v1

    .line 399
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCameraInUse:Z

    if-eqz v0, :cond_2

    .line 400
    return v1

    .line 402
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private registerReceiver()V
    .locals 3

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 226
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    return-void
.end method

.method private setColorMode(ILjava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 421
    const-string v0, "EyeProtectionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColorMode  mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",reason ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_color_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    return-void
.end method

.method private setCurrentScreen(I)V
    .locals 2
    .param p1, "screen"    # I

    .line 439
    iput p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCurrentScreen:I

    .line 440
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_current_screen"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    return-void
.end method

.method private setStorageColorMode(ILjava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 426
    sget-boolean v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EyeProtectionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStorageColorMode  mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",reason ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_color_mode_tmp"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    return-void
.end method

.method private startImageEnhanceService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 348
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/EyeProtectionController$7;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/EyeProtectionController$7;-><init>(Lcn/nubia/server/appmgmt/EyeProtectionController;Landroid/content/Context;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void
.end method

.method private startImageEnhanceServiceByNDActivatStatus()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->startImageEnhanceServiceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    return-void
.end method


# virtual methods
.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .line 362
    sget-boolean v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "EyeProtectionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteResumingActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "EyeProtectionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteResumingActivity mCameraInUse ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCameraInUse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mAodStart ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mAodStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_1
    :try_start_0
    iget v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCurrentScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mAodStart:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mCameraInUse:Z

    if-nez v0, :cond_4

    .line 372
    sget-object v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mPackageNormalDisplayList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mActivityNormalDisplayList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 379
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mChangeMode:Z

    if-eqz v0, :cond_4

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController;->mChangeMode:Z

    .line 381
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->getStorageColorMode()I

    move-result v0

    .line 382
    .local v0, "mCurrentMode":I
    if-eq v0, v1, :cond_4

    .line 383
    const-string/jumbo v1, "noteResumingActivity_nocamera"

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setColorMode(ILjava/lang/String;)V

    .line 383
    .end local v0    # "mCurrentMode":I
    goto :goto_1

    .line 373
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->getColorMode()I

    move-result v0

    .line 374
    .restart local v0    # "mCurrentMode":I
    if-eq v0, v1, :cond_4

    .line 375
    const-string/jumbo v2, "noteResumingActivity_camera_back"

    invoke-direct {p0, v0, v2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setStorageColorMode(ILjava/lang/String;)V

    .line 376
    const-string/jumbo v2, "noteResumingActivity_camera"

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->setColorMode(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v0    # "mCurrentMode":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
