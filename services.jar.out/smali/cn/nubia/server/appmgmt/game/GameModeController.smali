.class public Lcn/nubia/server/appmgmt/game/GameModeController;
.super Ljava/lang/Object;
.source "GameModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;,
        Lcn/nubia/server/appmgmt/game/GameModeController$resetNetworkAccDialogTimeRunnable;,
        Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;,
        Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;,
        Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;,
        Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;
    }
.end annotation


# static fields
.field private static final APPADD_URI_NO_NOTIFY:Ljava/lang/String; = "content://cn.nubia.gamelauncher.db.AppAddProvider/appadd?notify=false"

.field private static final ATTR_APP_NAME:Ljava/lang/String; = "component"

.field private static final CONTROL_CENTER__STATUS:Ljava/lang/String; = "cc_status"

.field private static final DATA_SCHEME:Ljava/lang/String; = "package"

.field private static final DB_GAME_DOCK_STATION:Ljava/lang/String; = "nubia_game_dock_station_enable"

.field private static final DB_MULTI_WINDOW_STATE:Ljava/lang/String; = "ss_multi_window_enabled"

.field private static final DB_NETWORKACC_DIALOG_TIME:Ljava/lang/String; = "game_mode_networkacc_dialog_time"

.field private static final DB_NETWORKACC_SHOW_DIALOG:Ljava/lang/String; = "game_mode_networkacc_show_dialog"

.field private static final DB_NOT_ALERT_LIST:Ljava/lang/String; = "game_mode_not_alert_list"

.field private static final DB_WHITE_LIST:Ljava/lang/String; = "game_mode_white_list"

.field private static DEBUG:Z = false

.field private static final EXTRA_FROM_GAME_KEY:Ljava/lang/String; = "nubia.intent.extra.FROM_GAME_KEY"

.field private static final FRAME_RATE_60:I = 0x1

.field private static final FRAME_RATE_60_VALUE:I = 0x3c

.field private static final FRAME_RATE_90:I = 0x2

.field private static final FRAME_RATE_90_VALUE:I = 0x5a

.field private static final FRAME_RATE_AUTO_VALUE:I = -0x1

.field private static final GAME_APP_NAME:Ljava/lang/String; = "cn.nubia.gamelauncher"

.field private static final GAME_CLASS_NAME:Ljava/lang/String; = "cn.nubia.gamelauncher.activity.GameSpaceActivity"

.field private static final GAME_SCREEN_REFRESH_RATE_DB_NAME:Ljava/lang/String; = "db_screen_rate"

.field private static final HOME_APP_NAME:Ljava/lang/String; = "cn.nubia.launcher"

.field private static final HOME_CLASS_NAME:Ljava/lang/String; = "com.android.launcher3.Launcher"

.field private static MYDEBUG:Z = false

.field private static final NB_GAME_PACKAGE:Ljava/lang/String; = "cn.nubia.nbgame"

.field private static final SETTINGS_APP_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final STR_GAME_MODE_OFF_ON:Ljava/lang/String; = "nubia_game_mode"

.field private static final TAG:Ljava/lang/String; = "GameModeService"

.field private static final TENCENT_QQ_AND_QZON_PACKAGE:Ljava/lang/String; = "com.tencent.qzone,com.tencent.mobileqq"

.field private static final TENCENT_QQ_AND_WECHAT_PACKAGE:Ljava/lang/String; = "com.tencent.mm,com.tencent.mobileqq"

.field private static TOUCH_FREQ_HIGH:Ljava/lang/String; = null

.field private static TOUCH_FREQ_LOW:Ljava/lang/String; = null

.field private static final TOUCH_FREQ_PROPERTIE:Ljava/lang/String; = "sys.nubia.touch.private"

.field private static final mExistDualScreenMap:Z

.field public static mInputMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNetworkAcceAppLabelWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mNotAlertList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPackageTriggerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mTestScoreSoftWareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CLICK_MAC_ADDRESS:Ljava/lang/String;

.field private IS_FROM_FUNCTION_CLICK:Ljava/lang/String;

.field private NETWORKACC_DIALOG_CYCLE:J

.field private WRITE_TP_NODE_VALUE:Ljava/lang/String;

.field private addrBELeft:Ljava/lang/String;

.field private addrBERight:Ljava/lang/String;

.field private gameDataRunnable:Ljava/lang/Runnable;

.field private gamePackageAddObserver:Landroid/database/ContentObserver;

.field private isFirstStart:Z

.field private isForceSetStreamVol:Z

.field private isSplitScreen:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoAdjHWFPSMethod:Ljava/lang/reflect/Method;

.field private mAutoFrameRate:Z

.field private mAutomaticMode:Z

.field mBeforeCallback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

.field private mContext:Landroid/content/Context;

.field private final mControlCenterObserver:Landroid/database/ContentObserver;

.field private mCurrentPackageName:Ljava/lang/String;

.field private mDelay:J

.field private mDialog:Lnubia/widget/NubiaCenterAlertDialog;

.field private mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

.field private mDualHandShankState:Z

.field private mDualScreenMapReceiver:Landroid/content/BroadcastReceiver;

.field private mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

.field private mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

.field private mFirstUserPresent:Z

.field private mGameApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGameBoxPause:Z

.field private mGameBoxRunning:Z

.field private mGameDockStationMode:I

.field private final mGameDockStationObserver:Landroid/database/ContentObserver;

.field private mGameFanCtrl:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

.field private mGameKeyMapGuideDialog:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

.field private mGameKeyMapReceiver:Landroid/content/BroadcastReceiver;

.field private mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

.field private mGameMagicVoiceCtrl:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

.field private mGameMode:I

.field private mGameScreenRefreshRate:I

.field private final mGameScreenRefreshRateObserver:Landroid/database/ContentObserver;

.field private mGameStartRunnable:Ljava/lang/Runnable;

.field private mGameSwitch:Z

.field private mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

.field private mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

.field private mHandShankState:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsNeedResetGameScreenRefreshRate:Z

.field private mIsRunning:Z

.field private mIsScreenStateChange:Z

.field private mIsShowNetworkAccDialog:Z

.field private mIsSupportGameKeys:Z

.field private mIsSupportNetworkAcc:Z

.field private mLastGameHelpPackageName:Ljava/lang/String;

.field private mLastGameHelpPackageNameForHand:Ljava/lang/String;

.field private mLastGameModePackageName:Ljava/lang/String;

.field private mLastLimetUid:I

.field private mMainStackApp:Lcn/nubia/game/ProcessItem;

.field private mNeedRestore:Z

.field private mNeedRestoreFromScreen:Z

.field private mNetworkAccAppLabelWhiteListObserver:Landroid/database/ContentObserver;

.field private mNetworkAccDialog:Lnubia/widget/NubiaCenterAlertDialog;

.field private final mNetworkAccObserver:Landroid/database/ContentObserver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;

.field private mPreDefault:Landroid/content/ComponentName;

.field private mPrePackageName:Ljava/lang/String;

.field private mPrePkgName:Ljava/lang/String;

.field private mPrevAppIsGame:Z

.field private mPrevTimeNetworkAccDialog:J

.field private mResumingPackage:Ljava/lang/String;

.field private mRunningPackageName:Ljava/lang/String;

.field private mRunningPackageNameActivity:Ljava/lang/String;

.field private mRunningUid:I

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenStateReceiver:Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;

.field private mSecStackApp:Lcn/nubia/game/ProcessItem;

.field private mSplitScreenObserver:Landroid/database/ContentObserver;

.field private mSupersnapPid:I

.field private mSupersnapWindowState:I

.field private mTouchAndHandShankReceiver:Landroid/content/BroadcastReceiver;

.field private mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

.field private mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

.field private mUiHandler:Landroid/os/Handler;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mWaitingList:Ljava/lang/String;

.field private mWhiteListObserver:Landroid/database/ContentObserver;

.field private mWriteGameScreenRefreshRate60:Ljava/lang/Runnable;

.field private mWriteGameScreenRefreshRate90:Ljava/lang/Runnable;

.field private noteResumingPackage:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 130
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    .line 131
    sput-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    .line 158
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_screen_switch_feature"

    .line 159
    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mExistDualScreenMap:Z

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAcceAppLabelWhiteList:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPackageTriggerList:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNotAlertList:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mInputMethodList:Ljava/util/List;

    .line 3051
    const-string v0, "1"

    sput-object v0, Lcn/nubia/server/appmgmt/game/GameModeController;->TOUCH_FREQ_HIGH:Ljava/lang/String;

    .line 3052
    const-string v0, "0"

    sput-object v0, Lcn/nubia/server/appmgmt/game/GameModeController;->TOUCH_FREQ_LOW:Ljava/lang/String;

    .line 3055
    const-string v1, "com.antutu.ABenchMark"

    const-string v2, "com.antutu.benchmark.full"

    const-string v3, "com.ludashi.benchmark"

    const-string v4, "com.ludashi.benchmark2"

    const-string v5, "com.ludashi.vrbench"

    const-string v6, "com.ludashi.aibench"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTestScoreSoftWareList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDelay:J

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mFirstUserPresent:Z

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameSwitch:Z

    .line 122
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxRunning:Z

    .line 123
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxPause:Z

    .line 124
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isFirstStart:Z

    .line 136
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    .line 137
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    .line 144
    sget v3, Lcn/nubia/game/GameModeHelper;->DEFAULT_GAME_MODE:I

    iput v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    .line 145
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    .line 160
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mBeforeCallback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    .line 171
    const-wide/32 v2, 0x278d00

    iput-wide v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->NETWORKACC_DIALOG_CYCLE:J

    .line 173
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    .line 179
    const-string v2, ""

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameModePackageName:Ljava/lang/String;

    .line 180
    const-string v2, ""

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mCurrentPackageName:Ljava/lang/String;

    .line 184
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isForceSetStreamVol:Z

    .line 187
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isSplitScreen:Z

    .line 191
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutomaticMode:Z

    .line 192
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestore:Z

    .line 193
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestoreFromScreen:Z

    .line 194
    const-string v2, ""

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameHelpPackageName:Ljava/lang/String;

    .line 196
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankState:Z

    .line 198
    const-string v2, ""

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameHelpPackageNameForHand:Ljava/lang/String;

    .line 202
    const-string v2, "displayToast"

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrePkgName:Ljava/lang/String;

    .line 207
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    .line 210
    const-string v2, "cn.nubia.gamelauncher.key.start"

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->IS_FROM_FUNCTION_CLICK:Ljava/lang/String;

    .line 211
    const-string v2, "cn.nubia.gamelauncher.address"

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->CLICK_MAC_ADDRESS:Ljava/lang/String;

    .line 215
    iput v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    .line 220
    iput v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameDockStationMode:I

    .line 428
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$7;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$7;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 442
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$8;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$8;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 472
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$9;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$9;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchAndHandShankReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$10;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$10;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapReceiver:Landroid/content/BroadcastReceiver;

    .line 492
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$11;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController$11;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mControlCenterObserver:Landroid/database/ContentObserver;

    .line 786
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$12;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$12;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 1089
    iput v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapWindowState:I

    .line 1090
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapPid:I

    .line 1505
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$21;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController$21;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAccObserver:Landroid/database/ContentObserver;

    .line 2088
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$32;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$32;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapReceiver:Landroid/content/BroadcastReceiver;

    .line 2527
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$40;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$40;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameStartRunnable:Ljava/lang/Runnable;

    .line 2564
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$41;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$41;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->gameDataRunnable:Ljava/lang/Runnable;

    .line 2585
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$42;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$42;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->noteResumingPackage:Ljava/lang/Runnable;

    .line 2818
    const-string v1, "/sys/kernel/tp/palm"

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->WRITE_TP_NODE_VALUE:Ljava/lang/String;

    .line 2842
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$43;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController$43;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRateObserver:Landroid/database/ContentObserver;

    .line 2910
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutoFrameRate:Z

    .line 2986
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$44;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$44;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWriteGameScreenRefreshRate90:Ljava/lang/Runnable;

    .line 2998
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$45;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$45;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWriteGameScreenRefreshRate60:Ljava/lang/Runnable;

    .line 3037
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$46;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController$46;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameDockStationObserver:Landroid/database/ContentObserver;

    .line 3054
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrePackageName:Ljava/lang/String;

    .line 225
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    const-string v1, "GameModeController [boot]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iput-object p2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    .line 228
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 229
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-direct {v0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameFanCtrl:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 230
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    invoke-direct {v0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMagicVoiceCtrl:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    .line 231
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mScreenStateReceiver:Lcn/nubia/server/appmgmt/game/GameModeController$ScreenStateReceiver;

    .line 232
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->IsSupportGameKeys()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    .line 233
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$1;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController$1;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mObserver:Landroid/database/ContentObserver;

    .line 269
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$2;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController$2;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWhiteListObserver:Landroid/database/ContentObserver;

    .line 275
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$3;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController$3;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAccAppLabelWhiteListObserver:Landroid/database/ContentObserver;

    .line 281
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$4;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController$4;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSplitScreenObserver:Landroid/database/ContentObserver;

    .line 287
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$5;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController$5;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->gamePackageAddObserver:Landroid/database/ContentObserver;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 294
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->initAutoAdjHWFPSMethod()V

    .line 295
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->initGameModeSwitchs()V

    .line 296
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateWhiteList()V

    .line 297
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateNetworkAccAppLabelWhiteList()V

    .line 298
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateNotAlertList()V

    .line 299
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getInputMethodList()V

    .line 300
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->registerReceiver()V

    .line 301
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->registerPhoneStatus()V

    .line 302
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->setNetworkAccelerationState()V

    .line 303
    return-void
.end method

.method private IsGameModeSubOpend(I)Z
    .locals 2
    .param p1, "flag"    # I

    .line 1130
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private PackageIsResume(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1201
    const/4 v0, 0x1

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 1205
    :cond_0
    const/4 v1, 0x0

    .line 1206
    .local v1, "isMainStackGame":Z
    const/4 v2, 0x0

    .line 1208
    .local v2, "isSecStackGame":Z
    const-string v3, "com.tencent.qzone,com.tencent.mobileqq"

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v3, "com.tencent.qzone,com.tencent.mobileqq"

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v5, v5, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 1209
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "cn.nubia.nbgame"

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v5, v5, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 1210
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1211
    :cond_2
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-boolean v3, v3, Lcn/nubia/game/ProcessItem;->mIsResumed:Z

    move v1, v3

    goto :goto_1

    .line 1213
    :cond_3
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-boolean v3, v3, Lcn/nubia/game/ProcessItem;->mIsResumed:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v3, v3, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 1214
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    move v1, v3

    .line 1217
    :goto_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    if-eqz v3, :cond_6

    .line 1218
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    iget-boolean v3, v3, Lcn/nubia/game/ProcessItem;->mIsResumed:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v3, v3, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 1219
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    move v2, v3

    .line 1221
    :cond_6
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "GameModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mMainStackApp.mIsResumed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-boolean v6, v6, Lcn/nubia/game/ProcessItem;->mIsResumed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mMainStackApp.mPackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v6, v6, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_7
    if-nez v1, :cond_9

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v0, v4

    nop

    :cond_9
    :goto_3
    return v0

    .line 1202
    .end local v1    # "isMainStackGame":Z
    .end local v2    # "isSecStackGame":Z
    :cond_a
    :goto_4
    return v0
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/GameModeController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/game/GameModeController;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # I

    .line 102
    iput p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->dimissGameKeyMapDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->mapGameKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateWhiteList()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateNetworkAccAppLabelWhiteList()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateSplitScreen()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateAddPackage()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    return-object v0
.end method

.method static synthetic access$1702(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    return-object p1
.end method

.method static synthetic access$1900(Lcn/nubia/server/appmgmt/game/GameModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isForceSetStreamVol:Z

    return v0
.end method

.method static synthetic access$1902(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isForceSetStreamVol:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getInputMethodList()V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/server/appmgmt/game/GameModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mFirstUserPresent:Z

    return v0
.end method

.method static synthetic access$2202(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mFirstUserPresent:Z

    return p1
.end method

.method static synthetic access$2302(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isFirstStart:Z

    return p1
.end method

.method static synthetic access$2400(Lcn/nubia/server/appmgmt/game/GameModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyNodeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2502(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestoreFromScreen:Z

    return p1
.end method

.method static synthetic access$2600(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 102
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->changeAutoShowMode(ZZ)V

    return-void
.end method

.method static synthetic access$2700(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->handleTouchAndHandShankAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2800(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->handleDualScreenMapAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2902(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mCurrentPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/game/GameModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    return v0
.end method

.method static synthetic access$3000(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showNetworkAccelerationDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    return-object v0
.end method

.method static synthetic access$3102(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/game/ProcessItem;)Lcn/nubia/game/ProcessItem;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lcn/nubia/game/ProcessItem;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    return-object p1
.end method

.method static synthetic access$3200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/game/ProcessItem;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    return-object v0
.end method

.method static synthetic access$3202(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/game/ProcessItem;)Lcn/nubia/game/ProcessItem;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lcn/nubia/game/ProcessItem;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    return-object p1
.end method

.method static synthetic access$3300(Lcn/nubia/server/appmgmt/game/GameModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->checkGameAppResume()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400()Ljava/util/List;
    .locals 1

    .line 102
    sget-object v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAcceAppLabelWhiteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3500(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->sendTraceMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWaitingList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->addWhiteList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3802(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameModePackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcn/nubia/server/appmgmt/game/GameModeController;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object v0
.end method

.method static synthetic access$3902(Lcn/nubia/server/appmgmt/game/GameModeController;Lnubia/widget/NubiaCenterAlertDialog;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lnubia/widget/NubiaCenterAlertDialog;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getProcessName()V

    return-void
.end method

.method static synthetic access$4000(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->addNotAlertList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcn/nubia/server/appmgmt/game/GameModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsShowNetworkAccDialog:Z

    return v0
.end method

.method static synthetic access$4102(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsShowNetworkAccDialog:Z

    return p1
.end method

.method static synthetic access$4200(Lcn/nubia/server/appmgmt/game/GameModeController;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrevTimeNetworkAccDialog:J

    return-wide v0
.end method

.method static synthetic access$4202(Lcn/nubia/server/appmgmt/game/GameModeController;J)J
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # J

    .line 102
    iput-wide p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrevTimeNetworkAccDialog:J

    return-wide p1
.end method

.method static synthetic access$4300(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->startNetworkAccelerationActivity()V

    return-void
.end method

.method static synthetic access$4400(Lcn/nubia/server/appmgmt/game/GameModeController;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAccDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object v0
.end method

.method static synthetic access$4402(Lcn/nubia/server/appmgmt/game/GameModeController;Lnubia/widget/NubiaCenterAlertDialog;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lnubia/widget/NubiaCenterAlertDialog;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAccDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object p1
.end method

.method static synthetic access$4500(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4600(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showTouchGameKeyMapView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showHandShankMapView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->showDualHandShankMapView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    return-object v0
.end method

.method static synthetic access$4902(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$5000(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showTouchGameKeyMapViewNX629V1s(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$5100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    return-object v0
.end method

.method static synthetic access$5102(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    return-object p1
.end method

.method static synthetic access$5200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    return-object v0
.end method

.method static synthetic access$5202(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    return-object p1
.end method

.method static synthetic access$5300(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    return-object v0
.end method

.method static synthetic access$5302(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    return-object p1
.end method

.method static synthetic access$5400()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    return v0
.end method

.method static synthetic access$5500(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->handleGameKeyMapAction()V

    return-void
.end method

.method static synthetic access$5600(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapGuideDialog:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    return-object v0
.end method

.method static synthetic access$5700(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showGameKeyMapOption(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    return-object v0
.end method

.method static synthetic access$5802(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    return-object p1
.end method

.method static synthetic access$5900(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    return-object v0
.end method

.method static synthetic access$5902(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;)Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 102
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->sendGameModeBroadcast(ZZ)V

    return-void
.end method

.method static synthetic access$6000(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showDualScreenMapView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    return-object v0
.end method

.method static synthetic access$6102(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    .line 102
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    return-object p1
.end method

.method static synthetic access$6200(Lcn/nubia/server/appmgmt/game/GameModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameSwitch:Z

    return v0
.end method

.method static synthetic access$6202(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameSwitch:Z

    return p1
.end method

.method static synthetic access$6300(Lcn/nubia/server/appmgmt/game/GameModeController;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-wide v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDelay:J

    return-wide v0
.end method

.method static synthetic access$6400(Lcn/nubia/server/appmgmt/game/GameModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getGameKeyState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->startGameBox()V

    return-void
.end method

.method static synthetic access$6600(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->stopGameBox()V

    return-void
.end method

.method static synthetic access$6700(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6800(Lcn/nubia/server/appmgmt/game/GameModeController;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->startHomeActivity(Z)V

    return-void
.end method

.method static synthetic access$6900(Lcn/nubia/server/appmgmt/game/GameModeController;J)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # J

    .line 102
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->startGameBoxIfUnlock(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 102
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setGameMode(ZZ)V

    return-void
.end method

.method static synthetic access$7002(Lcn/nubia/server/appmgmt/game/GameModeController;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # I

    .line 102
    iput p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    return p1
.end method

.method static synthetic access$7100(Lcn/nubia/server/appmgmt/game/GameModeController;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->writeNodeValue(I)V

    return-void
.end method

.method static synthetic access$7200(Lcn/nubia/server/appmgmt/game/GameModeController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameDockStationMode:I

    return v0
.end method

.method static synthetic access$7202(Lcn/nubia/server/appmgmt/game/GameModeController;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p1, "x1"    # I

    .line 102
    iput p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameDockStationMode:I

    return p1
.end method

.method static synthetic access$7300()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcn/nubia/server/appmgmt/game/GameModeController;->TOUCH_FREQ_HIGH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->update()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 102
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->disableShowNetworkAccelerationDialog()V

    return-void
.end method

.method private adapterGameScreenRefreshRate(I)V
    .locals 1
    .param p1, "status"    # I

    .line 2865
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsNeedResetGameScreenRefreshRate:Z

    if-eqz v0, :cond_1

    .line 2866
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsScreenStateChange:Z

    if-nez v0, :cond_0

    .line 2867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsScreenStateChange:Z

    .line 2868
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->resetScreenRefreshRateTo90()V

    goto :goto_0

    .line 2869
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsScreenStateChange:Z

    if-eqz v0, :cond_1

    .line 2870
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->resetScreenRefreshRateTo60()V

    .line 2871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsScreenStateChange:Z

    .line 2874
    :cond_1
    :goto_0
    return-void
.end method

.method private adapterGameScreenRefreshRate(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2877
    new-instance v0, Lcn/nubia/game/ProcessItem;

    invoke-direct {v0}, Lcn/nubia/game/ProcessItem;-><init>()V

    .line 2878
    .local v0, "app":Lcn/nubia/game/ProcessItem;
    iput p1, v0, Lcn/nubia/game/ProcessItem;->mUid:I

    .line 2879
    iput-object p2, v0, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 2880
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAppInGameList(Lcn/nubia/game/ProcessItem;)Z

    move-result v1

    .line 2881
    .local v1, "isGame":Z
    sget-object v2, Lcn/nubia/server/appmgmt/game/GameModeController;->mTestScoreSoftWareList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2882
    const/4 v1, 0x0

    .line 2884
    :cond_0
    if-eqz v1, :cond_2

    .line 2885
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2886
    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapterGameScreenRefreshRate isAppInGameList mIsNeedResetGameScreenRefreshRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsNeedResetGameScreenRefreshRate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsNeedResetGameScreenRefreshRate:Z

    if-nez v2, :cond_4

    .line 2889
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->resetScreenRefreshRateTo60()V

    .line 2890
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsNeedResetGameScreenRefreshRate:Z

    goto :goto_0

    .line 2893
    :cond_2
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 2894
    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapterGameScreenRefreshRate isAppNotInGameList mIsNeedResetGameScreenRefreshRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsNeedResetGameScreenRefreshRate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :cond_3
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsNeedResetGameScreenRefreshRate:Z

    if-eqz v2, :cond_4

    .line 2897
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->resetScreenRefreshRateTo90()V

    .line 2898
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsNeedResetGameScreenRefreshRate:Z

    .line 2901
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 2902
    return-void
.end method

.method private addNotAlertList(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1335
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$17;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController$17;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    goto :goto_0

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1351
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private addWhiteList(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1314
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$16;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController$16;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    goto :goto_0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1331
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private changeAutoShowMode(ZZ)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "isGameKeys"    # Z

    .line 840
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 841
    return-void

    .line 844
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 845
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyNodeOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestoreFromScreen:Z

    if-nez v2, :cond_4

    .line 846
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GameModeService"

    const-string v2, "changeAutoShowMode  no restore"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestoreFromScreen:Z

    .line 848
    return-void

    .line 851
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyNodeOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 852
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GameModeService"

    const-string v2, "changeAutoShowMode no change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_3
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestoreFromScreen:Z

    .line 854
    return-void

    .line 859
    :cond_4
    if-eqz p1, :cond_5

    .line 860
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAutomaticMode()Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutomaticMode:Z

    .line 862
    :cond_5
    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable:= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mAutomaticMode:= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutomaticMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mNeedRestore:="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestore:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutomaticMode:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestore:Z

    if-eqz v2, :cond_9

    .line 865
    :cond_6
    if-eqz p1, :cond_7

    move v2, v1

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    :goto_0
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setGameModeForBrightness(I)V

    .line 866
    if-eqz p1, :cond_8

    iget v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    .line 867
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->setAutoShowMode(I)V

    .line 868
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestore:Z

    goto :goto_1

    .line 869
    :cond_8
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestore:Z

    if-eqz v2, :cond_9

    .line 870
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->setAutoShowMode(I)V

    .line 871
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutomaticMode:Z

    .line 872
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNeedRestore:Z

    .line 875
    :cond_9
    :goto_1
    return-void
.end method

.method private checkGameAppResume()Z
    .locals 5

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "isMainStackGame":Z
    const/4 v1, 0x0

    .line 804
    .local v1, "isSecStackGame":Z
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameAppResume(Lcn/nubia/game/ProcessItem;)Z

    move-result v0

    .line 805
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameAppResume(Lcn/nubia/game/ProcessItem;)Z

    move-result v1

    .line 806
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 807
    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMainStackGame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",isSecStackGame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mIsRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 812
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrevAppIsGame:Z

    if-eqz v3, :cond_2

    .line 813
    :cond_1
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    .line 814
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    invoke-direct {p0, v3, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->sendGameModeBroadcast(ZZ)V

    .line 815
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    invoke-direct {p0, v3, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setGameMode(ZZ)V

    .line 816
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GameModeService"

    const-string v4, "[GAME MODE STOP]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrevAppIsGame:Z

    .line 819
    return v2

    .line 821
    :cond_3
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    if-eqz v3, :cond_7

    .line 822
    :cond_4
    iput-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    .line 823
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    invoke-direct {p0, v3, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->sendGameModeBroadcast(ZZ)V

    .line 824
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    invoke-direct {p0, v3, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setGameMode(ZZ)V

    .line 826
    if-eqz v0, :cond_5

    .line 827
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v2, v2, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameModePackageName:Ljava/lang/String;

    goto :goto_0

    .line 828
    :cond_5
    if-eqz v1, :cond_6

    .line 829
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v2, v2, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameModePackageName:Ljava/lang/String;

    .line 832
    :cond_6
    :goto_0
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "GameModeService"

    const-string v3, "[GAME MODE START]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_7
    iput-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrevAppIsGame:Z

    .line 836
    return v4
.end method

.method private clearDefaultHomeInternal(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2754
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 2755
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 2756
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear default home:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2760
    :cond_0
    nop

    .line 2761
    const/4 v0, 0x1

    return v0

    .line 2757
    :catch_0
    move-exception v0

    .line 2758
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2759
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private dimissGameKeyMapDialog()V
    .locals 2

    .line 2203
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapGuideDialog:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapGuideDialog:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->dismiss()V

    .line 2205
    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapGuideDialog:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    .line 2207
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    if-eqz v0, :cond_1

    .line 2208
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->dismiss()V

    .line 2209
    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 2211
    :cond_1
    return-void
.end method

.method private disableShowNetworkAccelerationDialog()V
    .locals 4

    .line 1538
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportNetworkAcc:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsShowNetworkAccDialog:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1542
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 1543
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_networkacc_show_dialog"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1544
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_networkacc_dialog_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    :cond_1
    goto :goto_1

    .line 1539
    :cond_2
    :goto_0
    return-void

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1549
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 914
    move v0, p1

    .line 916
    .local v0, "brightnessMode":I
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 917
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_mode"

    .line 916
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 921
    goto :goto_0

    .line 919
    :catch_0
    move-exception v1

    .line 920
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 922
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    :goto_0
    return v0
.end method

.method private getDefaultAppComponentName()Landroid/content/ComponentName;
    .locals 7

    .line 2766
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2767
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2768
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2769
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2770
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const v2, 0x10040

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2772
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 2773
    .local v3, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 2774
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 2776
    :cond_0
    return-object v3
.end method

.method private getGameKeyState()Z
    .locals 4

    .line 2446
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 2447
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_db_game_keys"

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2446
    invoke-virtual {v0, v1}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeys(I)Z

    move-result v0

    .line 2450
    .local v0, "gameKeyState":Z
    return v0
.end method

.method private getHomeIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 2780
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2781
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2782
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2783
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2784
    return-object v0
.end method

.method private getInputMethodList()V
    .locals 2

    .line 1431
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$20;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$20;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1445
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private getProcessName()V
    .locals 6

    .line 1638
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1639
    .local v0, "mAm":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1640
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1641
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    .line 1642
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageNameActivity:Ljava/lang/String;

    .line 1643
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GameModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRunningPackageName:="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mRunningPackageNameActivity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageNameActivity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const/high16 v5, 0x400000

    invoke-interface {v3, v4, v5, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningUid:I

    .line 1647
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRunningUid:="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    .end local v0    # "mAm":Landroid/app/ActivityManager;
    .end local v1    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    goto :goto_0

    .line 1649
    :catch_0
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameModeService"

    const-string v2, "getProcessName failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private handleDualHandShankBroadcast()V
    .locals 3

    .line 2012
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 2013
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2014
    :cond_1
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GameModeService"

    const-string v1, "TouchGameKeyMapView/HandShankMapView is showing,dont show DualHandShankMapView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_2
    return-void

    .line 2017
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2018
    return-void

    .line 2020
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const-string v1, "cn.nubia.gamelauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const-string v1, "cn.nubia.launcher"

    .line 2021
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 2024
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankState:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    if-eqz v0, :cond_8

    .line 2025
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isLandOrientationScreenMap()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    .line 2026
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->inGameSpacePkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 2031
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2032
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->dismiss()V

    .line 2033
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 2034
    return-void

    .line 2036
    :cond_7
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageNameActivity:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->showDualHandShankMapOption(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2037
    return-void

    .line 2027
    :cond_8
    :goto_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "GameModeService"

    const-string v1, "DualHandShankMapView can not show without enough condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_9
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30c0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->showGameToast(Ljava/lang/String;)V

    .line 2029
    return-void

    .line 2022
    :cond_a
    :goto_1
    return-void
.end method

.method private handleDualScreenMapAction(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2325
    const-string v0, "cn.nubia.intent.action.DUAL_SCREEN_MAP_OPTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2326
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDualScreenMapAction, mRunningPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2328
    .local v0, "enableTouch":Z
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->isDefaultGame(Ljava/lang/String;)Z

    move-result v2

    .line 2329
    .local v2, "defaultGame":Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 2330
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const-string/jumbo v5, "main_"

    invoke-static {v3, v4, v5}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2332
    .local v3, "floatBallCoordinate":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const-string/jumbo v6, "secondary_"

    invoke-static {v4, v5, v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2334
    .local v4, "floatBoxCoordinate":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2335
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->resumeDefaultDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 2338
    .end local v3    # "floatBallCoordinate":Ljava/lang/String;
    .end local v4    # "floatBoxCoordinate":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showDualScreenMapOption(Ljava/lang/String;Z)V

    .line 2339
    .end local v0    # "enableTouch":Z
    .end local v2    # "defaultGame":Z
    goto/16 :goto_1

    :cond_2
    const-string v0, "cn.nubia.action.SCREEN_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2340
    new-instance v0, Lcn/nubia/game/ProcessItem;

    invoke-direct {v0}, Lcn/nubia/game/ProcessItem;-><init>()V

    .line 2341
    .local v0, "app":Lcn/nubia/game/ProcessItem;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 2342
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAppInGameList(Lcn/nubia/game/ProcessItem;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 2343
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 2344
    .local v2, "open":Z
    if-nez v2, :cond_4

    return-void

    .line 2345
    :cond_4
    const-string v3, "displayid"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2347
    .local v3, "activeScreen":I
    sget-boolean v5, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "GameModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDualScreenMapAction, activeScreen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_5
    const-string v5, ""

    .line 2349
    .local v5, "toastMsg":Ljava/lang/String;
    if-ne v1, v3, :cond_6

    .line 2350
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x30c0041

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2351
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    goto :goto_0

    .line 2352
    :cond_6
    if-nez v3, :cond_8

    .line 2353
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 2354
    .local v4, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_7

    return-void

    .line 2355
    :cond_7
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 2356
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x30c0042

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2358
    .end local v4    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_8
    :goto_0
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "NX627J"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getGameKeyState()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2359
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "GameModeService"

    const-string v4, "handleDualScreenMapAction,NX627J gamekey is off, dont show toast"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2361
    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2362
    invoke-direct {p0, v5}, Lcn/nubia/server/appmgmt/game/GameModeController;->showGameToast(Ljava/lang/String;)V

    .line 2366
    .end local v0    # "app":Lcn/nubia/game/ProcessItem;
    .end local v2    # "open":Z
    .end local v3    # "activeScreen":I
    .end local v5    # "toastMsg":Ljava/lang/String;
    :cond_a
    :goto_1
    return-void
.end method

.method private handleGameKeyMapAction()V
    .locals 3

    .line 2107
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMapGuide(Landroid/content/Context;)Z

    move-result v0

    .line 2108
    .local v0, "displayGuide":Z
    if-eqz v0, :cond_0

    .line 2109
    new-instance v1, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapGuideDialog:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    .line 2110
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapGuideDialog:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    new-instance v2, Lcn/nubia/server/appmgmt/game/GameModeController$33;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$33;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->setGuideClickListener(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$IGuideClickInterface;)V

    .line 2118
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapGuideDialog:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->show()V

    .line 2119
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->disableGameKeyMapGuide(Landroid/content/Context;)V

    goto :goto_0

    .line 2121
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getProcessName()V

    .line 2122
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->showGameKeyMapOption(Ljava/lang/String;Z)V

    .line 2124
    :goto_0
    return-void
.end method

.method private handleHandShankBroadcast()V
    .locals 5

    .line 1970
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 1971
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1972
    :cond_1
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GameModeService"

    const-string v1, "TouchGameKeyMapView/DualHandShankMapView is showing,dont show HandShankMapView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_2
    return-void

    .line 1975
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1976
    return-void

    .line 1978
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1979
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "GameModeService"

    const-string v1, "GameKeyMapView is showing,dont show HandShankMapView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_5
    return-void

    .line 1982
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const-string v1, "cn.nubia.gamelauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const-string v1, "cn.nubia.launcher"

    .line 1983
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_1

    .line 1986
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankState:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    if-nez v0, :cond_b

    .line 1987
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isLandOrientationScreenMap()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    .line 1988
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->inGameSpacePkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 1993
    :cond_8
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1994
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->dismiss()V

    .line 1995
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 1996
    return-void

    .line 1998
    :cond_9
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1999
    .local v0, "enableTouch":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->isDefaultGame(Ljava/lang/String;)Z

    move-result v1

    .line 2000
    .local v1, "defaultGame":Z
    if-nez v0, :cond_a

    if-eqz v1, :cond_a

    .line 2001
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const-string/jumbo v4, "main_"

    invoke-static {v2, v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2003
    .local v2, "floatBallCoordinate":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2004
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->resumeDefaultDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 2007
    .end local v2    # "floatBallCoordinate":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->showHandShankMapOption(Ljava/lang/String;Z)V

    .line 2008
    return-void

    .line 1989
    .end local v0    # "enableTouch":Z
    .end local v1    # "defaultGame":Z
    :cond_b
    :goto_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GameModeService"

    const-string v1, "HandShankMapView can not show without enough condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_c
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30c0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->showGameToast(Ljava/lang/String;)V

    .line 1991
    return-void

    .line 1984
    :cond_d
    :goto_1
    return-void
.end method

.method private handleTouchAndHandShankAction(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1883
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "NX627J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1884
    :cond_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchAndHandShankAction broadcast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :cond_1
    const-string v0, "cn.nubia.intent.action.HAND_SHANK_SCREEN_MAP_OPTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1887
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    if-eqz v0, :cond_5

    .line 1888
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->IS_FROM_FUNCTION_CLICK:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1889
    .local v0, "isFromFunctionClick":Z
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->CLICK_MAC_ADDRESS:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1890
    .local v3, "handChoiceMAC":Ljava/lang/String;
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "GameModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTouchAndHandShankAction handChoiceMAC :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :cond_2
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBELeft:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBERight:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1892
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBELeft:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1893
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->saveLastHandShankLRChoice(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1894
    :cond_3
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBERight:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1895
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->saveLastHandShankLRChoice(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1898
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->handleDualHandShankBroadcast()V

    .line 1899
    .end local v0    # "isFromFunctionClick":Z
    .end local v3    # "handChoiceMAC":Ljava/lang/String;
    goto :goto_1

    .line 1900
    :cond_5
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->handleHandShankBroadcast()V

    .line 1904
    :cond_6
    :goto_1
    const-string v0, "cn.nubia.intent.action.TOUCH_GAME_KEY_MAP_OPTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1905
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->handleTouchGameKeyBroadcast()V

    .line 1908
    :cond_7
    const-string v0, "cn.nubia.gamelauncher.ACTION_GAMEHANDLE_CONNECTION_STATE_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1909
    const-string/jumbo v0, "isConnected"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankState:Z

    .line 1910
    const-string/jumbo v0, "isDoubleHandle"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    .line 1911
    const-string/jumbo v0, "left"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBELeft:Ljava/lang/String;

    .line 1912
    const-string/jumbo v0, "right"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBERight:Ljava/lang/String;

    .line 1913
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTouchAndHandShankAction addrBELeft:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBELeft:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " addrBERight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBERight:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mHandShankState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mDualHandShankState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :cond_8
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankState:Z

    if-eqz v0, :cond_16

    .line 1916
    const/4 v0, 0x0

    .line 1917
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v0, v3, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 1918
    if-nez v0, :cond_9

    .line 1919
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getProcessName()V

    .line 1920
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    .line 1922
    :cond_9
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    if-nez v3, :cond_10

    .line 1923
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBELeft:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBERight:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1924
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "GameModeService"

    const-string v2, "handleTouchAndHandShankAction--> single hand shank should not have two MAC address, return!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_a
    return-void

    .line 1927
    :cond_b
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBELeft:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1928
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBELeft:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setGamepadID(Landroid/content/Context;ILjava/lang/String;)V

    .line 1930
    :cond_c
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBERight:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1931
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBERight:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setGamepadID(Landroid/content/Context;ILjava/lang/String;)V

    .line 1933
    :cond_d
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 1934
    .local v1, "enableTouch":Z
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v3, :cond_e

    const-string v3, "GameModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchAndHandShankAction connect enableTouch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isGameKeyOn():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1936
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 1937
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 1938
    .local v3, "moveAreaDirection":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3, v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;)V

    .line 1940
    .end local v1    # "enableTouch":Z
    .end local v3    # "moveAreaDirection":I
    :cond_f
    goto/16 :goto_2

    .line 1941
    :cond_10
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBELeft:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBERight:Ljava/lang/String;

    if-nez v3, :cond_11

    goto :goto_3

    .line 1945
    :cond_11
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBELeft:Ljava/lang/String;

    const-string/jumbo v5, "left_"

    invoke-static {v3, v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setGamepadID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBERight:Ljava/lang/String;

    const-string/jumbo v5, "right_"

    invoke-static {v3, v4, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setGamepadID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1948
    .local v3, "enableTouchDual":Z
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v4, :cond_12

    const-string v4, "GameModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTouchAndHandShankAction connect dualHandShank enableTouchDual:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isGameKeyOn():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1950
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 1951
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "left_"

    invoke-static {v4, v0, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1953
    .local v4, "moveAreaDirectionLeft":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "left_"

    invoke-static {v5, v2, v4, v0, v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 1956
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "right_"

    invoke-static {v2, v0, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1958
    .local v2, "moveAreaDirectionRight":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "right_"

    invoke-static {v5, v1, v2, v0, v6}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 1962
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "moveAreaDirectionRight":I
    .end local v3    # "enableTouchDual":Z
    .end local v4    # "moveAreaDirectionLeft":I
    :cond_13
    :goto_2
    goto :goto_4

    .line 1942
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_14
    :goto_3
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v1, :cond_15

    const-string v1, "GameModeService"

    const-string v2, "handleTouchAndHandShankAction--> addrBELeft/addrBERight is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_15
    return-void

    .line 1963
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_16
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "GameModeService"

    const-string v1, "handleTouchAndHandShankAction disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_17
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 1967
    :cond_18
    :goto_4
    return-void
.end method

.method private handleTouchGameKeyBroadcast()V
    .locals 5

    .line 2040
    invoke-static {}, Lnubia/config/GameHelperFeatureConfig;->isFingerprintGameKeyEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2041
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    const-string/jumbo v1, "not support TouchGameKeyMapView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_0
    return-void

    .line 2044
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 2045
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2046
    :cond_3
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GameModeService"

    const-string v1, "HandShankMapView/DualHandShankMapView is showing,dont show TouchGameKeyMapView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_4
    return-void

    .line 2049
    :cond_5
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchGameKeyBroadcast, mRunningPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const-string v1, "cn.nubia.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const-string v1, "cn.nubia.gamelauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 2053
    :cond_7
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2054
    .local v0, "enableTouch":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isDefaultGame(Ljava/lang/String;)Z

    move-result v1

    .line 2055
    .local v1, "defaultGame":Z
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 2056
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    const-string/jumbo v4, "main_"

    invoke-static {v2, v3, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2058
    .local v2, "floatBallCoordinate":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2059
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->resumeDefaultDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 2062
    .end local v2    # "floatBallCoordinate":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isNX629V1S()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 2063
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->showTouchGameKeyMapOptionNX629V1s(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2065
    :cond_9
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->showTouchGameKeyMapOption(Ljava/lang/String;Z)V

    .line 2067
    :goto_0
    return-void

    .line 2051
    .end local v0    # "enableTouch":Z
    .end local v1    # "defaultGame":Z
    :cond_a
    :goto_1
    return-void
.end method

.method private initGameModeSwitchs()V
    .locals 3

    .line 1226
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 1227
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_game_mode"

    sget v2, Lcn/nubia/game/GameModeHelper;->DEFAULT_GAME_MODE:I

    .line 1226
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    .line 1229
    return-void
.end method

.method private isAllowStartGameBoxActivity(Z)Z
    .locals 9
    .param p1, "isStart"    # Z

    .line 2700
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2701
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateNubiaData()V

    .line 2703
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    monitor-enter v0

    .line 2704
    const/4 v1, 0x0

    move v2, v1

    .line 2704
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2705
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2706
    .local v3, "game":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2707
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2708
    .local v4, "array":[Ljava/lang/String;
    if-nez v4, :cond_1

    const-string v5, ""

    goto :goto_1

    :cond_1
    aget-object v5, v4, v1

    .line 2709
    .local v5, "packageName":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2710
    sget-boolean v6, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "GameModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not allow to resume gamebox1, resumingPackage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    :cond_2
    monitor-exit v0

    return v1

    .line 2704
    .end local v3    # "game":Ljava/lang/String;
    .end local v4    # "array":[Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2715
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2716
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 2717
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "GameModeService"

    const-string/jumbo v2, "isAllowStartGameBoxActivity isStart true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :cond_5
    const-string v1, "cn.nubia.gamehighlights"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 2720
    :cond_6
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "GameModeService"

    const-string/jumbo v3, "isAllowStartGameBoxActivity isStart false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    :cond_7
    const-string v2, "cn.nubia.gamehighlights"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "cn.nubia.video"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    return v0

    .line 2715
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1577
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1578
    return v1

    .line 1580
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1582
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x2000

    :try_start_0
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    const/4 v1, 0x1

    return v1

    .line 1584
    :catch_0
    move-exception v2

    .line 1585
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private isAppInGameList(Lcn/nubia/game/ProcessItem;)Z
    .locals 6
    .param p1, "app"    # Lcn/nubia/game/ProcessItem;

    .line 972
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 973
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 974
    const-string v1, "GameModeService"

    const-string/jumbo v2, "isAppInGameList app == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    return v0

    .line 978
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string v2, "cn.nubia.gamelauncher"

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 979
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 980
    const-string v1, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAppInGameList app is support game keys:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isFirstStart:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_3
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isFirstStart:Z

    if-eqz v1, :cond_4

    .line 983
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isFirstStart:Z

    .line 984
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateNubiaData()V

    .line 986
    :cond_4
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    monitor-enter v1

    .line 987
    move v3, v0

    .line 987
    .local v3, "i":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 988
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 989
    .local v4, "game":Ljava/lang/String;
    if-eqz v4, :cond_6

    iget-object v5, p1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 990
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 991
    const-string v0, "GameModeService"

    const-string/jumbo v5, "isAppInGameList true"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_5
    monitor-exit v1

    return v2

    .line 987
    .end local v4    # "game":Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 996
    .end local v3    # "i":I
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 998
    const-string v1, "GameModeService"

    const-string/jumbo v2, "isAppInGameList false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_8
    return v0

    .line 996
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1002
    :cond_9
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 1003
    const-string v0, "GameModeService"

    const-string/jumbo v1, "isAppInGameList1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_a
    sget-object v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPackageTriggerList:Ljava/util/List;

    iget-object v1, p1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isAppInNetworkAccGameList(Lcn/nubia/game/ProcessItem;)Z
    .locals 6
    .param p1, "app"    # Lcn/nubia/game/ProcessItem;

    .line 950
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportNetworkAcc:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 951
    return v1

    .line 954
    :cond_0
    if-nez p1, :cond_1

    .line 955
    return v1

    .line 958
    :cond_1
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GameModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start isAppInNetworkAccGameList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 960
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 961
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 962
    .local v2, "label":Ljava/lang/String;
    const-string v3, "\\|"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 963
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GameModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end isAppInNetworkAccGameList("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_3
    sget-object v3, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAcceAppLabelWhiteList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 965
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "label":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get label for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    return v0
.end method

.method private isAutomaticMode()Z
    .locals 3

    .line 910
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getBrightnessMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .line 2670
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2671
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isDualScreenMap()Z
    .locals 5

    .line 2368
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 2369
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_6

    .line 2370
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    const-string/jumbo v3, "isDualScreenMap, portrait !"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_0
    const/4 v0, 0x0

    .line 2372
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v3, v3, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2373
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v0, v3, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 2375
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getProcessName()V

    .line 2376
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    .line 2378
    :goto_0
    const-string v3, "com.tencent.tmgp.cf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.tencent.pocket"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 2391
    :cond_2
    return v1

    .line 2380
    :cond_3
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nubia_current_screen"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2381
    .local v3, "activeScreen":I
    if-ne v3, v2, :cond_4

    .line 2382
    return v1

    .line 2384
    :cond_4
    return v2

    .line 2386
    .end local v3    # "activeScreen":I
    :catch_0
    move-exception v2

    .line 2387
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2388
    :cond_5
    return v1

    .line 2394
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "nubia_current_screen"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 2395
    .local v0, "activeScreen":I
    if-ne v0, v2, :cond_8

    .line 2396
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "GameModeService"

    const-string/jumbo v3, "isDualScreenMap, secondary !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_7
    return v1

    .line 2399
    :cond_8
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "GameModeService"

    const-string/jumbo v4, "isDualScreenMap, ok !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2400
    :cond_9
    return v2

    .line 2401
    .end local v0    # "activeScreen":I
    :catch_1
    move-exception v0

    .line 2402
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2403
    :cond_a
    return v1
.end method

.method private isFreeformMode()Z
    .locals 1

    .line 2675
    invoke-static {}, Landroid/view/NubiaInput;->getInstance()Landroid/view/NubiaInput;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/NubiaInput;->isInFreeformMode()Z

    move-result v0

    return v0
.end method

.method private isGameAppResume(Lcn/nubia/game/ProcessItem;)Z
    .locals 3
    .param p1, "app"    # Lcn/nubia/game/ProcessItem;

    .line 936
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 937
    return v0

    .line 939
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAppInNetworkAccGameList(Lcn/nubia/game/ProcessItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 940
    iget-boolean v0, p1, Lcn/nubia/game/ProcessItem;->mIsResumed:Z

    return v0

    .line 942
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAppInGameList(Lcn/nubia/game/ProcessItem;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 943
    return v0

    .line 945
    :cond_2
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isGameAppResume("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_3
    iget-boolean v0, p1, Lcn/nubia/game/ProcessItem;->mIsResumed:Z

    return v0
.end method

.method private isGameKeyNodeOn()Z
    .locals 2

    .line 878
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/game/GameKeysHelper;->readNodeValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "gameKeyStatus":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 880
    const-string v0, "0"

    .line 882
    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    const/4 v1, 0x1

    return v1

    .line 885
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isLandOrientationScreenMap()Z
    .locals 3

    .line 2070
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 2072
    const/4 v0, 0x0

    .line 2073
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v2, v2, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2074
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v0, v2, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 2076
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getProcessName()V

    .line 2077
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    .line 2079
    :goto_0
    const-string v2, "com.tencent.tmgp.cf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2080
    return v1

    .line 2083
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 2085
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private killGameApp()V
    .locals 3

    .line 2680
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "cn.nubia.gamelauncher"

    .line 2681
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 2682
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxRunning:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2685
    goto :goto_0

    .line 2683
    :catch_0
    move-exception v0

    .line 2684
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GameModeService"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2686
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private limtNetSpeed(ZZ)V
    .locals 5
    .param p1, "isRunning"    # Z
    .param p2, "isGameKeys"    # Z

    .line 1448
    const/4 v0, 0x0

    .line 1449
    .local v0, "uid":I
    if-eqz p2, :cond_0

    .line 1450
    if-eqz p1, :cond_1

    sget-object v1, Lcn/nubia/game/GameModeHelper;->mPackageBlackList:Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1451
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningUid:I

    goto :goto_0

    .line 1454
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    if-eqz v1, :cond_1

    .line 1455
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget v0, v1, Lcn/nubia/game/ProcessItem;->mUid:I

    .line 1458
    :cond_1
    :goto_0
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->IsGameModeSubOpend(I)Z

    move-result v1

    .line 1459
    .local v1, "isOpenSub":Z
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isSplitScreen:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 1460
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "limtNetSpeed uid:="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_2
    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->limitBackgroundNetwork(I)V

    .line 1462
    iput v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastLimetUid:I

    goto :goto_1

    .line 1463
    :cond_3
    if-nez p1, :cond_5

    iget v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastLimetUid:I

    if-eqz v2, :cond_5

    .line 1464
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "limtNetSpeed mLastLimetUid:="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastLimetUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_4
    iget v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastLimetUid:I

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/LimitBackgroundNetworkUtils;->unlimitBackgroundNetwork(I)V

    .line 1466
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastLimetUid:I

    .line 1468
    :cond_5
    :goto_1
    return-void
.end method

.method private mapGameKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2161
    invoke-static {}, Lnubia/config/GameHelperFeatureConfig;->isFingerprintGameKeyEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2162
    return-void

    .line 2164
    :cond_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GameModeService"

    const-string/jumbo v1, "mapGameKey"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->needGameKeyMap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2167
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "GameModeService"

    const-string/jumbo v1, "mapGameKey, packageName is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2169
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->isGameKeyMapEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2170
    .local v0, "enableMap":Z
    if-eqz v0, :cond_6

    .line 2171
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->resumeGameKeyMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 2173
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrePkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    return-void

    .line 2176
    :cond_3
    goto :goto_0

    .line 2174
    :catch_0
    move-exception v1

    .line 2175
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2177
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    const-string v1, "cn.nubia.supersnap"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrePkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2178
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showGameToast(Ljava/lang/String;)V

    .line 2181
    :cond_5
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrePkgName:Ljava/lang/String;

    .line 2183
    .end local v0    # "enableMap":Z
    :cond_6
    goto :goto_1

    .line 2185
    :cond_7
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 2187
    :cond_8
    :goto_1
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrePkgName:Ljava/lang/String;

    .line 2188
    return-void
.end method

.method private modifyTouchFreq(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pkgname"    # Ljava/lang/String;

    .line 3059
    new-instance v0, Lcn/nubia/game/ProcessItem;

    invoke-direct {v0}, Lcn/nubia/game/ProcessItem;-><init>()V

    .line 3060
    .local v0, "app":Lcn/nubia/game/ProcessItem;
    iput p1, v0, Lcn/nubia/game/ProcessItem;->mUid:I

    .line 3061
    iput-object p2, v0, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 3062
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAppInGameList(Lcn/nubia/game/ProcessItem;)Z

    move-result v1

    .line 3063
    .local v1, "isGame":Z
    sget-object v2, Lcn/nubia/server/appmgmt/game/GameModeController;->mTestScoreSoftWareList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3064
    const/4 v1, 0x0

    .line 3066
    :cond_0
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 3067
    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "modifyTouchFreq, pkgname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mPrePackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrePackageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 3070
    return-void

    .line 3072
    :cond_2
    iput-object p2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrePackageName:Ljava/lang/String;

    .line 3074
    if-eqz v1, :cond_3

    sget-object v2, Lcn/nubia/server/appmgmt/game/GameModeController;->TOUCH_FREQ_HIGH:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v2, Lcn/nubia/server/appmgmt/game/GameModeController;->TOUCH_FREQ_LOW:Ljava/lang/String;

    .line 3075
    .local v2, "value":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcn/nubia/server/appmgmt/game/GameModeController$47;

    invoke-direct {v4, p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController$47;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3087
    return-void
.end method

.method private needGameKeyMap(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 2191
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2192
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    const-string/jumbo v1, "needGameKeyMap, game mode off !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_0
    return v2

    .line 2195
    :cond_1
    sget-object v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->mBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2196
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GameModeService"

    const-string/jumbo v1, "needGameKeyMap, it is black list !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    :cond_2
    return v2

    .line 2199
    :cond_3
    return v1
.end method

.method private noteResumingPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 2572
    const-string v0, "cn.nubia.gamelauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxPause:Z

    .line 2575
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isFreeformMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2576
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    .line 2578
    :cond_1
    const-string v0, "cn.nubia.gamelauncher.activity.GameSpaceActivity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.launcher3.Launcher"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2579
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->noteResumingPackage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2580
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->noteResumingPackage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2583
    :cond_3
    return-void
.end method

.method private registerNetworkAccObserver(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 1521
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportNetworkAcc:Z

    if-nez v0, :cond_0

    .line 1522
    return-void

    .line 1525
    :cond_0
    const-string v0, "game_mode_networkacc_show_dialog"

    .line 1526
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAccObserver:Landroid/database/ContentObserver;

    .line 1525
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1529
    const-string v0, "game_mode_networkacc_dialog_time"

    .line 1530
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAccObserver:Landroid/database/ContentObserver;

    .line 1529
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1533
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAccObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1534
    return-void
.end method

.method private registerPhoneStatus()V
    .locals 3

    .line 387
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/GameModeController$1;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPhoneStateListener:Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;

    .line 388
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 390
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPhoneStateListener:Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 393
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAudioManager:Landroid/media/AudioManager;

    .line 394
    return-void
.end method

.method private registerReceiver()V
    .locals 7

    .line 336
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 337
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 342
    .local v1, "screenFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 346
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v3, "touchAndHandShankFilter":Landroid/content/IntentFilter;
    const-string v4, "cn.nubia.intent.action.TOUCH_GAME_KEY_MAP_OPTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v4, "cn.nubia.intent.action.HAND_SHANK_SCREEN_MAP_OPTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v4, "cn.nubia.gamelauncher.ACTION_GAMEHANDLE_CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 354
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchAndHandShankReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    if-eqz v4, :cond_0

    .line 357
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 358
    .local v4, "gameKeyMapFilter":Landroid/content/IntentFilter;
    const-string v5, "cn.nubia.intent.action.GAME_KEY_MAP_OPTION"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 360
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    .end local v4    # "gameKeyMapFilter":Landroid/content/IntentFilter;
    :cond_0
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/GameModeController;->mExistDualScreenMap:Z

    if-eqz v4, :cond_1

    .line 363
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v4, "dualScreenMapFilter":Landroid/content/IntentFilter;
    const-string v5, "cn.nubia.intent.action.DUAL_SCREEN_MAP_OPTION"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v5, "cn.nubia.action.SCREEN_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 367
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-class v5, Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnubia/os/screenswitch/ScreenSwitchManager;

    .line 369
    .local v2, "screenSwitchManager":Lnubia/os/screenswitch/ScreenSwitchManager;
    new-instance v5, Lcn/nubia/server/appmgmt/game/GameModeController$6;

    invoke-direct {v5, p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController$6;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Lnubia/os/screenswitch/ScreenSwitchManager;)V

    iput-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mBeforeCallback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    .line 382
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mBeforeCallback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lnubia/os/screenswitch/ScreenSwitchManager;->registerSwtichCallBack(Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;I)V

    .line 384
    .end local v2    # "screenSwitchManager":Lnubia/os/screenswitch/ScreenSwitchManager;
    .end local v4    # "dualScreenMapFilter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 307
    const-string/jumbo v0, "nubia_game_mode"

    .line 308
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 307
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 311
    const-string v0, "game_mode_white_list"

    .line 312
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWhiteListObserver:Landroid/database/ContentObserver;

    .line 311
    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 315
    const-string/jumbo v0, "network_acceleration_app_label_white_list"

    .line 316
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAccAppLabelWhiteListObserver:Landroid/database/ContentObserver;

    .line 315
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 319
    const-string/jumbo v0, "ss_multi_window_enabled"

    .line 320
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSplitScreenObserver:Landroid/database/ContentObserver;

    .line 319
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 323
    const-string v0, "content://cn.nubia.gamelauncher.db.AppAddProvider/appadd?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->gamePackageAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 325
    const-string v0, "db_screen_rate"

    .line 326
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRateObserver:Landroid/database/ContentObserver;

    .line 325
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 329
    const-string/jumbo v0, "nubia_game_dock_station_enable"

    .line 330
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameDockStationObserver:Landroid/database/ContentObserver;

    .line 329
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 333
    return-void
.end method

.method private resetGameScreenRefreshRate(I)V
    .locals 2
    .param p1, "nodeValue"    # I

    .line 2977
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWriteGameScreenRefreshRate90:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2978
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWriteGameScreenRefreshRate90:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2980
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWriteGameScreenRefreshRate60:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2981
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWriteGameScreenRefreshRate60:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2983
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5a

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWriteGameScreenRefreshRate90:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWriteGameScreenRefreshRate60:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2984
    return-void
.end method

.method private resetScreenRefreshRateTo60()V
    .locals 3

    .line 2968
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2969
    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetScreenRefreshRateTo60 mGameScreenRefreshRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2972
    :cond_1
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->resetGameScreenRefreshRate(I)V

    .line 2974
    :cond_2
    return-void
.end method

.method private resetScreenRefreshRateTo90()V
    .locals 3

    .line 2961
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2962
    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetScreenRefreshRateTo90 mGameScreenRefreshRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    :cond_0
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->resetGameScreenRefreshRate(I)V

    .line 2965
    return-void
.end method

.method private sendGameModeBroadcast(ZZ)V
    .locals 7
    .param p1, "isRunning"    # Z
    .param p2, "isGameKeys"    # Z

    .line 1010
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendGameModeBroadcast isRunning:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isGameKeys:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    const/4 v0, 0x0

    .line 1012
    .local v0, "uid":I
    const-string v1, ""

    .line 1013
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1014
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 1015
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningUid:I

    .line 1016
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    .line 1017
    const-string v3, "cn.nubia.action.GAME_MODE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1019
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameAppResume(Lcn/nubia/game/ProcessItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1020
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget v0, v3, Lcn/nubia/game/ProcessItem;->mUid:I

    .line 1021
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v1, v3, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 1022
    :cond_2
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameAppResume(Lcn/nubia/game/ProcessItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1023
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    iget v0, v3, Lcn/nubia/game/ProcessItem;->mUid:I

    .line 1024
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v1, v3, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 1026
    :cond_3
    :goto_0
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    if-eqz v3, :cond_4

    .line 1027
    const-string v3, "cn.nubia.action.GAME_MODE_GAME_APP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1029
    :cond_4
    const-string v3, "cn.nubia.action.GAME_MODE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    :goto_1
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1033
    const-string/jumbo v3, "isRunning"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1034
    if-eqz p1, :cond_5

    .line 1035
    const-string/jumbo v3, "switchs"

    iget v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 1037
    :cond_5
    const-string/jumbo v3, "switchs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1040
    :goto_2
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportNetworkAcc:Z

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    .line 1041
    const-string v3, "appuid"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1042
    const-string/jumbo v3, "packagename"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1046
    :cond_6
    if-eqz p1, :cond_7

    .line 1047
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->noteGameModeIsRunning()V

    goto :goto_3

    .line 1049
    :cond_7
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->noteGameModeIsStopped()V

    .line 1051
    :goto_3
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1052
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "NX616J"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1053
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->WRITE_TP_NODE_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->writeNodeValue(Ljava/lang/String;)Z

    move-result v3

    .line 1054
    .local v3, "success":Z
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "GameModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendGameModeBroadcast success ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    .end local v3    # "success":Z
    :cond_8
    return-void
.end method

.method private sendTraceMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1304
    :try_start_0
    invoke-static {}, Lcom/android/server/NubiaTrackManager;->getInstance()Lcom/android/server/NubiaTrackManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/NubiaTrackManager;->init(Landroid/content/Context;)V

    .line 1305
    invoke-static {}, Lcom/android/server/NubiaTrackManager;->getInstance()Lcom/android/server/NubiaTrackManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "gamemode_launch"

    const-string v3, "game_app_packagename"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    goto :goto_0

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1310
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setAutoAdjHWFPS(Z)V
    .locals 5
    .param p1, "isAuto"    # Z

    .line 2949
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutoAdjHWFPSMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 2951
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutoAdjHWFPSMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2954
    :catch_0
    move-exception v0

    .line 2955
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 2952
    :catch_1
    move-exception v0

    .line 2953
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 2956
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_0
    nop

    .line 2958
    :cond_1
    :goto_1
    return-void
.end method

.method private setAutoShowMode(I)V
    .locals 2
    .param p1, "defaultValue"    # I

    .line 927
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 928
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    .line 927
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "snfe":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 933
    .end local v0    # "snfe":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setDefaultHomeInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "isStart"    # Z

    .line 2726
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getDefaultAppComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 2727
    .local v0, "preDefault":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2728
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "has default home:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :cond_0
    return v1

    .line 2731
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    const-string v2, "cn.nubia.gamelauncher"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2732
    return v1

    .line 2734
    :cond_2
    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    const-string v2, "cn.nubia.gamelauncher"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2735
    return v1

    .line 2737
    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "android"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2738
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->clearDefaultHomeInternal(Ljava/lang/String;)Z

    .line 2740
    :cond_4
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    .local v2, "name":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getHomeIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v3, v4, v2, v5}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 2743
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getHomeIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    const/16 v5, 0xa

    invoke-interface {v3, v4, v2, v5}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 2744
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_home"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2745
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "GameModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set default home:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2749
    :cond_5
    nop

    .line 2750
    const/4 v1, 0x1

    return v1

    .line 2746
    :catch_0
    move-exception v3

    .line 2747
    .local v3, "e":Landroid/os/RemoteException;
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2748
    :cond_6
    return v1
.end method

.method private setDualHandShank(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1730
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1731
    .local v0, "enableTouch":Z
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GameModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDualHandShank mHandShankState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " enableTouch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isGameKeyOn():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDualHandShankState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1731
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_0
    if-eqz v0, :cond_1

    .line 1734
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankState:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    if-eqz v1, :cond_1

    .line 1735
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 1736
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "left_"

    invoke-static {v1, p1, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1738
    .local v1, "moveAreaDirectionLeft":I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "left_"

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, p1, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 1741
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "right_"

    invoke-static {v2, p1, v3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1743
    .local v2, "moveAreaDirectionRight":I
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "right_"

    invoke-static {v3, v4, v2, p1, v5}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 1747
    .end local v1    # "moveAreaDirectionLeft":I
    .end local v2    # "moveAreaDirectionRight":I
    :cond_1
    return-void
.end method

.method private setGameMode(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "isGameKeys"    # Z

    .line 900
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->switchGameModeForToast(Z)V

    .line 901
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setGameModeForTouchAndHandShank(ZZ)V

    .line 902
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mExistDualScreenMap:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setGameModeForDualScreenMap(ZZ)V

    .line 904
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->limtNetSpeed(ZZ)V

    .line 906
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->changeAutoShowMode(ZZ)V

    .line 907
    return-void
.end method

.method private setGameModeForBrightness(I)V
    .locals 2
    .param p1, "defaultValue"    # I

    .line 891
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 892
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_on_off"

    .line 891
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    goto :goto_0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "snfe":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 897
    .end local v0    # "snfe":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setGameModeForDualScreenMap(ZZ)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "isGameKeys"    # Z

    .line 2232
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isDualScreenMap()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2233
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GameModeService"

    const-string/jumbo v2, "setGameModeForDualScreenMap, registerContentObserver!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cc_status"

    .line 2235
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mControlCenterObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    .line 2234
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2237
    const/4 v1, 0x0

    .line 2238
    .local v1, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 2239
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getProcessName()V

    .line 2240
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    goto :goto_0

    .line 2241
    :cond_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v2, v2, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2242
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v1, v2, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 2244
    :cond_2
    :goto_0
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setGameModeForDualScreenMap isGameKeys:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_3
    if-eqz v1, :cond_a

    .line 2246
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 2247
    .local v2, "enableTouch":Z
    if-eqz v2, :cond_6

    .line 2249
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nubia_current_screen"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 2250
    .local v3, "activeScreen":I
    if-nez v3, :cond_4

    .line 2251
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 2253
    :cond_4
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2253
    .end local v3    # "activeScreen":I
    goto :goto_1

    .line 2255
    :catch_0
    move-exception v0

    .line 2256
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2257
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    goto/16 :goto_2

    .line 2260
    :cond_6
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "main_"

    invoke-static {v3, v1, v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2262
    .local v3, "floatBallCoordinate":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "secondary_"

    invoke-static {v4, v1, v5}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2264
    .local v4, "floatBoxCoordinate":Ljava/lang/String;
    sget-boolean v5, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "GameModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setGameModeForDualScreenMap, mPackageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_7
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_SHOWGUIDE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2267
    .local v0, "isShowDuideBefore":I
    sget-boolean v5, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "GameModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setGameModeForDualScreenMap, isShowDuideBefore(0:not show,1:showed) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2269
    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->isDefaultGame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v0, :cond_9

    .line 2271
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->showDualScreenMapGuideDialog()V

    .line 2272
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_SHOWGUIDE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2276
    .end local v0    # "isShowDuideBefore":I
    .end local v2    # "enableTouch":Z
    .end local v3    # "floatBallCoordinate":Ljava/lang/String;
    .end local v4    # "floatBoxCoordinate":Ljava/lang/String;
    :cond_9
    :goto_2
    goto :goto_3

    .line 2277
    :cond_a
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "GameModeService"

    const-string/jumbo v2, "setGameModeForDualScreenMap, packageName is null !"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_b
    :goto_3
    goto :goto_4

    .line 2280
    :cond_c
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 2281
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mControlCenterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2282
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "GameModeService"

    const-string/jumbo v1, "setGameModeForDualScreenMap, unregisterContentObserver!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :cond_d
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2285
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->dismiss()V

    .line 2288
    :cond_e
    :goto_4
    return-void
.end method

.method private setGameModeForTouchAndHandShank(ZZ)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "isGameKeys"    # Z

    .line 1655
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isLandOrientationScreenMap()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1656
    const/4 v0, 0x0

    .line 1657
    .local v0, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1658
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getProcessName()V

    .line 1659
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mRunningPackageName:Ljava/lang/String;

    goto :goto_0

    .line 1660
    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v1, v1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1661
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    iget-object v0, v1, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 1663
    :cond_1
    :goto_0
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GameModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGameModeForTouchAndHandShank isGameKeys:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_2
    if-eqz v0, :cond_4

    .line 1665
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->setHandShank(Ljava/lang/String;)V

    .line 1666
    invoke-static {}, Lnubia/config/GameHelperFeatureConfig;->isFingerprintGameKeyEnable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1667
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->setTouchGameKey(Ljava/lang/String;)V

    .line 1669
    :cond_3
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->setDualHandShank(Ljava/lang/String;)V

    goto :goto_1

    .line 1671
    :cond_4
    const-string v1, "GameModeService"

    const-string/jumbo v2, "setGameModeForTouchAndHandShank, packageName is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1674
    :cond_5
    invoke-static {}, Lnubia/config/GameHelperFeatureConfig;->isFingerprintGameKeyEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1675
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1677
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 1678
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "GameModeService"

    const-string/jumbo v1, "setGameModeForTouchAndHandShank, unregisterContentObserver!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_7
    :goto_2
    return-void
.end method

.method private setHandShank(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1707
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1708
    .local v0, "enableTouch":Z
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GameModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHandShank mHandShankState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " enableTouch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isGameKeyOn():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDualHandShankState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1708
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_0
    if-eqz v0, :cond_6

    .line 1711
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankState:Z

    if-eqz v1, :cond_5

    .line 1712
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankState:Z

    if-eqz v1, :cond_2

    .line 1713
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GameModeService"

    const-string v2, "DualHandShank ,dont setHandShank"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_1
    return-void

    .line 1716
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 1717
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->getMoveAreaDirection(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1718
    .local v1, "moveAreaDirection":I
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1, p1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setJoystickDirection(Landroid/content/Context;IILjava/lang/String;)V

    .line 1719
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameHelpPackageNameForHand:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1720
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GameModeService"

    const-string/jumbo v3, "setHandShank start self do not toast... "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c0065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->showGameToast(Ljava/lang/String;)V

    .line 1722
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameHelpPackageNameForHand:Ljava/lang/String;

    .line 1724
    .end local v1    # "moveAreaDirection":I
    :cond_4
    goto :goto_0

    .line 1725
    :cond_5
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 1728
    :cond_6
    :goto_0
    return-void
.end method

.method private setNetworkAccelerationState()V
    .locals 3

    .line 1477
    const-string/jumbo v0, "ro.nubia.game_networkacc.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1478
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportNetworkAcc:Z

    goto :goto_0

    .line 1480
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportNetworkAcc:Z

    .line 1483
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportNetworkAcc:Z

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->registerNetworkAccObserver(Landroid/content/ContentResolver;)V

    .line 1486
    :cond_1
    return-void
.end method

.method private setSystemKeysGameModeDB(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1354
    invoke-static {}, Lcom/android/server/policy/SystemKeysCtrl;->getInstance()Lcom/android/server/policy/SystemKeysCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeysCtrl;->updateGameModeStatus(I)V

    .line 1355
    return-void
.end method

.method private setTouchGameKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1683
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1684
    .local v0, "enableTouch":Z
    if-eqz v0, :cond_3

    .line 1685
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GameModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTouchGameKey enableTouch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isGameKeyOn():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1687
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 1688
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameHelpPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1689
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GameModeService"

    const-string/jumbo v2, "setTouchGameKey start self do not toast... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showGameToast(Ljava/lang/String;)V

    .line 1691
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameHelpPackageName:Ljava/lang/String;

    goto :goto_0

    .line 1694
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1697
    :cond_3
    :goto_0
    return-void
.end method

.method private shouldShowNetworkAccelerationDialog(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1552
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPrevAppIsGame:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrevAppIsGame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrevAppIsGame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1555
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportNetworkAcc:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsShowNetworkAccDialog:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 1561
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string v2, "cn.nubia.gamelauncher"

    invoke-direct {p0, v0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1562
    return v1

    .line 1565
    :cond_2
    const-string v0, "cn.nubia.launcher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1566
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1567
    .local v2, "now":J
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "GameModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "now:="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", prevTime:="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrevTimeNetworkAccDialog:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_3
    iget-wide v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrevTimeNetworkAccDialog:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPrevTimeNetworkAccDialog:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v6, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->NETWORKACC_DIALOG_CYCLE:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    .line 1569
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 1558
    .end local v2    # "now":J
    :cond_5
    :goto_0
    return v1

    .line 1573
    :cond_6
    return v1
.end method

.method private showAlertDialog()V
    .locals 2

    .line 1377
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    return-void

    .line 1380
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$18;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$18;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    goto :goto_0

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1414
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private showDualHandShankMapView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 1867
    new-instance v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 1868
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setAttachePackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$31;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$31;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setOptClickListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$IDualHandShankClickListener;)V

    .line 1878
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBELeft:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->addrBERight:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->setLeftOrRightAddrBE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->show()V

    .line 1880
    return-void
.end method

.method private showDualScreenMapView(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2310
    new-instance v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 2311
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setAttachePackageName(Ljava/lang/String;)V

    .line 2312
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$38;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$38;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->setOptClickListener(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$IClickListener;)V

    .line 2321
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->show()V

    .line 2322
    return-void
.end method

.method private showGameKeyMapOption(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2146
    new-instance v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 2147
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->setAttachePackageName(Ljava/lang/String;)V

    .line 2148
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$35;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$35;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->setOptClickListener(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$IGameKeyClickListener;)V

    .line 2157
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->show()V

    .line 2158
    return-void
.end method

.method private showGameToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1699
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$23;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController$23;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1705
    return-void
.end method

.method private showHandShankMapView(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1853
    new-instance v0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 1854
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setAttachePackageName(Ljava/lang/String;)V

    .line 1855
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$30;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$30;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->setOptClickListener(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$IHandShankClickListener;)V

    .line 1864
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->show()V

    .line 1865
    return-void
.end method

.method private showNetworkAccelerationDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1591
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->shouldShowNetworkAccelerationDialog(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1592
    return-void

    .line 1595
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAccDialog:Lnubia/widget/NubiaCenterAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mNetworkAccDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1596
    return-void

    .line 1598
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$22;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$22;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    goto :goto_0

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1628
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method private showToast()V
    .locals 2

    .line 1417
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$19;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$19;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1427
    return-void
.end method

.method private showTouchGameKeyMapView(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1804
    new-instance v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    .line 1805
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setAttachePackageName(Ljava/lang/String;)V

    .line 1806
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$27;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$27;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->setOptClickListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$ITouchGameKeyClickListener;)V

    .line 1815
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->show()V

    .line 1816
    return-void
.end method

.method private showTouchGameKeyMapViewNX629V1s(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1838
    new-instance v0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    .line 1839
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setAttachePackageName(Ljava/lang/String;)V

    .line 1840
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$29;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$29;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->setOptClickListener(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$ITouchGameKeyClickListener;)V

    .line 1849
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->show()V

    .line 1850
    return-void
.end method

.method private startGameBox()V
    .locals 8

    .line 2598
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getDefaultAppComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 2599
    .local v0, "preDefault":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    const-string v1, "cn.nubia.gamelauncher"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.settings"

    .line 2600
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2601
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPreDefault:Landroid/content/ComponentName;

    .line 2602
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPreDefault:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 2603
    .local v1, "mPreDefaultToStr":Ljava/lang/String;
    const-string v2, "GameModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startGameBox mPreDefaultToStr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "previous_desktop_name"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2606
    .end local v1    # "mPreDefaultToStr":Ljava/lang/String;
    :cond_0
    const-string v1, "cn.nubia.gamelauncher"

    const-string v2, "cn.nubia.gamelauncher.activity.GameSpaceActivity"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->setDefaultHomeInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 2607
    .local v1, "isSet":Z
    if-eqz v1, :cond_4

    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAllowStartGameBoxActivity(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2608
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GameModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mGameBoxRunning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mGameBoxPause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxPause:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mResumingPackage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    :cond_1
    iget-wide v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDelay:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 2610
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2611
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->startHomeActivity(Z)V

    .line 2612
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxRunning:Z

    goto :goto_0

    .line 2614
    :cond_2
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxRunning:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxPause:Z

    if-nez v2, :cond_4

    .line 2615
    :cond_3
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->startHomeActivity(Z)V

    .line 2616
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxRunning:Z

    .line 2619
    :cond_4
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMagicVoiceCtrl:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->notifyMagicVoiceWithGamekey(Z)V

    .line 2620
    return-void
.end method

.method private startGameBoxIfUnlock(J)Z
    .locals 3
    .param p1, "delay"    # J

    .line 2478
    iput-wide p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDelay:J

    .line 2479
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameSwitch:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2481
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2482
    .local v0, "mActivityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->finishFocusedStackActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2485
    .end local v0    # "mActivityManager":Landroid/app/IActivityManager;
    goto :goto_0

    .line 2483
    :catch_0
    move-exception v0

    .line 2484
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GameModeService"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2486
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const-wide/16 p1, 0x32

    .line 2488
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2489
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2490
    const/4 v0, 0x1

    return v0
.end method

.method private startHomeActivity(Z)V
    .locals 3
    .param p1, "fromGameKey"    # Z

    .line 2689
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2690
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2691
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2693
    if-eqz p1, :cond_0

    .line 2694
    const-string/jumbo v1, "nubia.intent.extra.FROM_GAME_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2696
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2697
    return-void
.end method

.method private startNetworkAccelerationActivity()V
    .locals 2

    .line 1631
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.action.GAME_NETWORK_ACCELERATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1632
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1633
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1634
    return-void
.end method

.method private stopGameBox()V
    .locals 7

    .line 2623
    const/4 v0, 0x0

    .line 2624
    .local v0, "isSet":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    if-eqz v1, :cond_0

    .line 2625
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->dismiss()V

    .line 2627
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    if-eqz v1, :cond_1

    .line 2628
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->dismiss()V

    .line 2630
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    if-eqz v1, :cond_2

    .line 2631
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->dismiss()V

    .line 2633
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    if-eqz v1, :cond_3

    .line 2634
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->dismiss()V

    .line 2636
    :cond_3
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    if-eqz v1, :cond_4

    .line 2637
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->dismiss()V

    .line 2639
    :cond_4
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    if-eqz v1, :cond_5

    .line 2640
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->dismiss()V

    .line 2642
    :cond_5
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPreDefault:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2643
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPreDefault:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPreDefault:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setDefaultHomeInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 2645
    :cond_6
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "previous_desktop_name"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2646
    .local v1, "mPreDefaultToStr":Ljava/lang/String;
    const-string v3, "GameModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopGameBox mPreDefaultToStr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    if-eqz v1, :cond_7

    .line 2648
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPreDefault:Landroid/content/ComponentName;

    .line 2650
    :cond_7
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPreDefault:Landroid/content/ComponentName;

    if-eqz v3, :cond_8

    .line 2651
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPreDefault:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mPreDefault:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setDefaultHomeInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 2653
    :cond_8
    const-string v3, "cn.nubia.launcher"

    const-string v4, "com.android.launcher3.Launcher"

    invoke-direct {p0, v3, v4, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setDefaultHomeInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 2656
    .end local v1    # "mPreDefaultToStr":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_a

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAllowStartGameBoxActivity(Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2657
    iget-wide v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDelay:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    .line 2658
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2659
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->startHomeActivity(Z)V

    goto :goto_1

    .line 2661
    :cond_9
    const-string v1, "cn.nubia.gamelauncher"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2662
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->startHomeActivity(Z)V

    .line 2665
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->killGameApp()V

    .line 2666
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMagicVoiceCtrl:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->notifyMagicVoiceWithGamekey(Z)V

    .line 2667
    return-void
.end method

.method private switchGameModeForToast(Z)V
    .locals 2
    .param p1, "running"    # Z

    .line 1358
    if-eqz p1, :cond_3

    .line 1359
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->setSystemKeysGameModeDB(I)V

    .line 1360
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameModePackageName:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    const-string v1, " start self do not toast... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    return-void

    .line 1364
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 1365
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->IsGameModeSubOpend(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    .line 1366
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->IsGameModeSubOpend(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x10

    .line 1367
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->IsGameModeSubOpend(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1368
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->showToast()V

    goto :goto_0

    .line 1371
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->setSystemKeysGameModeDB(I)V

    .line 1373
    :cond_4
    :goto_0
    return-void
.end method

.method private update()V
    .locals 2

    .line 797
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    return-void
.end method

.method private updateAddPackage()V
    .locals 7

    .line 2408
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2409
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v0, "content://cn.nubia.gamelauncher.db.AppAddProvider/appadd?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 2411
    if-nez v0, :cond_2

    .line 2412
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getGameKeyState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2413
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isFirstStart:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2427
    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2415
    :cond_1
    return-void

    .line 2427
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 2409
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2417
    :cond_2
    :try_start_3
    const-string v3, "component"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2418
    .local v3, "appNameIndex":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2419
    .local v4, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, -0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2420
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2421
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2422
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2423
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_0

    .line 2424
    :cond_3
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2425
    :try_start_4
    iput-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    .line 2426
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2427
    .end local v3    # "appNameIndex":I
    .end local v4    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2429
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_4
    goto :goto_4

    .line 2426
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "appNameIndex":I
    .restart local v4    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2409
    .end local v3    # "appNameIndex":I
    .end local v4    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2427
    :goto_2
    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catch_1
    move-exception v4

    :try_start_a
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    throw v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    .line 2428
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GameModeService"

    const-string v3, "Failed load game app data."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2430
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private updateNetworkAccAppLabelWhiteList()V
    .locals 2

    .line 1254
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportNetworkAcc:Z

    if-nez v0, :cond_0

    .line 1255
    return-void

    .line 1259
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$14;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$14;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    goto :goto_0

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1277
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private updateNotAlertList()V
    .locals 2

    .line 1281
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$15;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$15;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    goto :goto_0

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1299
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private updateSplitScreen()V
    .locals 3

    .line 1471
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 1472
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ss_multi_window_enabled"

    .line 1471
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isSplitScreen:Z

    .line 1473
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSplitScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isSplitScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_1
    return-void
.end method

.method private updateWhiteList()V
    .locals 2

    .line 1233
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$13;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$13;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    goto :goto_0

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1251
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private writeNodeValue(I)V
    .locals 8
    .param p1, "nodeValue"    # I

    .line 3011
    const/4 v0, 0x0

    .line 3013
    .local v0, "writer":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3c

    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string v6, "/sys/kernel/lcd_enhance/dfps"

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v4

    .line 3014
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3015
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 3016
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 3017
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3018
    const-string v4, "GameModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeNodeValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3026
    :cond_0
    iget v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    if-nez v4, :cond_1

    if-ne p1, v3, :cond_1

    .line 3027
    :goto_0
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setAutoAdjHWFPS(Z)V

    goto :goto_1

    .line 3029
    :cond_1
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->setAutoAdjHWFPS(Z)V

    .line 3031
    goto :goto_1

    .line 3026
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 3020
    :catch_0
    move-exception v4

    .line 3021
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    sget-boolean v5, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 3022
    const-string v5, "GameModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeNodeValue Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    :cond_2
    sget-boolean v5, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3026
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    iget v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    if-nez v4, :cond_1

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 3032
    :goto_1
    return-void

    .line 3026
    :goto_2
    iget v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    if-nez v5, :cond_4

    if-ne p1, v3, :cond_4

    .line 3027
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->setAutoAdjHWFPS(Z)V

    goto :goto_3

    .line 3029
    :cond_4
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->setAutoAdjHWFPS(Z)V

    :goto_3
    throw v4
.end method


# virtual methods
.method public IsAllowDialogShow(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1156
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1157
    return v0

    .line 1159
    :cond_0
    const-string v1, "com.android.systemui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "cn.nubia.controlcenter"

    .line 1160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android"

    .line 1161
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "cn.nubia.gamelauncher"

    .line 1162
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "cn.nubia.apptimelock"

    .line 1163
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "com.af.benchaf"

    .line 1164
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "com.gamebench.metricscollector"

    .line 1165
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 1168
    :cond_1
    sget-object v1, Lcn/nubia/server/appmgmt/game/GameModeController;->mInputMethodList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1169
    return v0

    .line 1171
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isFreeformMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "com.tencent.mm,com.tencent.mobileqq"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1172
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v1, :cond_3

    .line 1173
    const-string v1, "GameModeService"

    const-string v2, "IsAllowDialogShow return true because inFreeformMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_3
    return v0

    .line 1177
    :cond_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->IsGameModeSubRunning(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1178
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->PackageIsResume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1181
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1182
    .local v2, "mAm":Landroid/app/ActivityManager;
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1183
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1184
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1185
    .local v4, "mTopPackageName":Ljava/lang/String;
    sget-boolean v5, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "GameModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsAllowDialogShow:="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_6

    .line 1187
    return v0

    .line 1192
    .end local v2    # "mAm":Landroid/app/ActivityManager;
    .end local v3    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "mTopPackageName":Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GameModeService"

    const-string v3, "getTopPackageName failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "GameModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "is not allow dialog show for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return v1

    .line 1197
    :cond_7
    return v0

    .line 1166
    :cond_8
    :goto_1
    return v0
.end method

.method public IsGameModeRunning()Z
    .locals 3

    .line 1139
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    if-eqz v0, :cond_1

    .line 1140
    const/4 v0, 0x0

    .line 1141
    .local v0, "mGameKeysHelper":Lcn/nubia/game/GameKeysHelper;
    if-nez v0, :cond_0

    .line 1142
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    .line 1144
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/game/GameKeysHelper;->getGameKeysValue()I

    move-result v1

    .line 1145
    .local v1, "dbValue":I
    invoke-virtual {v0, v1}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeys(I)Z

    move-result v2

    return v2

    .line 1147
    .end local v0    # "mGameKeysHelper":Lcn/nubia/game/GameKeysHelper;
    .end local v1    # "dbValue":I
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public IsGameModeSubRunning(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 1152
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->IsGameModeRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getGameLauncherAppNameList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2433
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    monitor-enter v0

    .line 2434
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 2435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGameMode()I
    .locals 1

    .line 1135
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    return v0
.end method

.method public getGameScreenRefreshRate(ILjava/lang/String;)I
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pkgname"    # Ljava/lang/String;

    .line 2912
    new-instance v0, Lcn/nubia/game/ProcessItem;

    invoke-direct {v0}, Lcn/nubia/game/ProcessItem;-><init>()V

    .line 2913
    .local v0, "app":Lcn/nubia/game/ProcessItem;
    iput p1, v0, Lcn/nubia/game/ProcessItem;->mUid:I

    .line 2914
    iput-object p2, v0, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 2915
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAppInGameList(Lcn/nubia/game/ProcessItem;)Z

    move-result v1

    .line 2916
    .local v1, "isGame":Z
    sget-object v2, Lcn/nubia/server/appmgmt/game/GameModeController;->mTestScoreSoftWareList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2917
    const/4 v1, 0x0

    .line 2919
    :cond_0
    const/16 v2, 0x3c

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    iget v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 2933
    :cond_1
    iput-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutoFrameRate:Z

    .line 2934
    const/4 v4, 0x0

    .line 2936
    .local v4, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/kernel/lcd_enhance/dfps"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v5

    .line 2937
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 2939
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2942
    goto :goto_0

    .line 2940
    :catch_0
    move-exception v2

    .line 2941
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v5, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2943
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->setAutoAdjHWFPS(Z)V

    .line 2944
    const/4 v2, -0x1

    return v2

    .line 2921
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutoFrameRate:Z

    if-eqz v4, :cond_4

    .line 2922
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/game/GameModeController;->setAutoAdjHWFPS(Z)V

    .line 2923
    iput-boolean v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutoFrameRate:Z

    .line 2925
    :cond_4
    const/16 v4, 0x5a

    if-nez v1, :cond_5

    .line 2926
    return v4

    .line 2927
    :cond_5
    iget v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    if-ne v3, v5, :cond_6

    .line 2928
    return v2

    .line 2930
    :cond_6
    return v4
.end method

.method public initAutoAdjHWFPSMethod()V
    .locals 5

    .line 2850
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_screen_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameScreenRefreshRate:I

    .line 2852
    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2853
    .local v0, "clz":Ljava/lang/Class;
    const-string/jumbo v1, "setAutoAdjHWFPS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mAutoAdjHWFPSMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2856
    .end local v0    # "clz":Ljava/lang/Class;
    goto :goto_0

    .line 2854
    :catch_0
    move-exception v0

    .line 2855
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2857
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public isGameAppOnForeground()Z
    .locals 8

    .line 2454
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isFirstStart:Z

    if-eqz v0, :cond_0

    .line 2455
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->isFirstStart:Z

    .line 2456
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->updateNubiaData()V

    .line 2458
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    monitor-enter v0

    .line 2459
    move v2, v1

    .line 2459
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 2460
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2461
    .local v3, "game":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2462
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2463
    .local v5, "array":[Ljava/lang/String;
    if-nez v5, :cond_1

    const-string v6, ""

    goto :goto_1

    :cond_1
    aget-object v6, v5, v1

    .line 2464
    .local v6, "packageName":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2465
    monitor-exit v0

    return v4

    .line 2459
    .end local v3    # "game":Ljava/lang/String;
    .end local v5    # "array":[Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2469
    .end local v2    # "i":I
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2470
    const-string v0, "cn.nubia.gamehighlights"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2471
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GameModeService"

    const-string/jumbo v1, "isGameAppOnForeground return true because cn.nubia.gamehighlights"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :cond_4
    return v4

    .line 2474
    :cond_5
    return v1

    .line 2469
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isGameKeyOn()Z
    .locals 3

    .line 2439
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    .line 2440
    .local v0, "gameKeysHelper":Lcn/nubia/game/GameKeysHelper;
    invoke-virtual {v0}, Lcn/nubia/game/GameKeysHelper;->getGameKeysValue()I

    move-result v1

    .line 2441
    .local v1, "dbValue":I
    invoke-virtual {v0, v1}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeys(I)Z

    move-result v2

    .line 2442
    .local v2, "isGameKeyOn":Z
    return v2
.end method

.method public noteAddWindow(IILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 1092
    const-string v0, "cn.nubia.supersnap"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1093
    iput p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapPid:I

    .line 1094
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapWindowState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1095
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 1096
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    const-string v1, "[[noteAddWindow stop gamemode]]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    .line 1099
    :cond_1
    return-void

    .line 1101
    :cond_2
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapWindowState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapWindowState:I

    .line 1102
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteAddWindow mSupersnapPid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") mSupersnapWindowState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_3
    return-void
.end method

.method public noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 1079
    return-void
.end method

.method public noteAppExit(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .line 1069
    return-void
.end method

.method public noteAppForeground(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 1074
    return-void
.end method

.method public noteAppInactive(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z

    .line 1065
    return-void
.end method

.method public noteCreateActivity(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2502
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_game_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2503
    .local v0, "gamekeyon":Z
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "never_ask_again_enter_gamemode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2504
    .local v1, "neveraskagain":Z
    :goto_1
    new-instance v2, Lcn/nubia/game/ProcessItem;

    invoke-direct {v2}, Lcn/nubia/game/ProcessItem;-><init>()V

    .line 2505
    .local v2, "app":Lcn/nubia/game/ProcessItem;
    iput-object p1, v2, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 2506
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->isAppInGameList(Lcn/nubia/game/ProcessItem;)Z

    move-result v3

    .line 2507
    .local v3, "isGame":Z
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 2508
    const-string v4, "GameModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gamekeyon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ";neveraskagain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ";isGame="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    :cond_2
    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 2511
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-virtual {v4}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2512
    return-void

    .line 2514
    :cond_3
    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v5, Lcn/nubia/server/appmgmt/game/GameModeController$39;

    invoke-direct {v5, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$39;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2525
    :cond_4
    return-void
.end method

.method public noteFreeformModeChange(Z)V
    .locals 5
    .param p1, "isOpen"    # Z

    .line 3097
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mExistDualScreenMap:Z

    if-eqz v0, :cond_6

    .line 3098
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3099
    if-eqz p1, :cond_3

    .line 3100
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3101
    .local v0, "enableDualScreen":Z
    if-eqz v0, :cond_2

    .line 3102
    const/4 v2, 0x1

    .line 3104
    .local v2, "activeScreen":I
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nubia_current_screen"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 3107
    goto :goto_0

    .line 3105
    :catch_0
    move-exception v3

    .line 3106
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3108
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 3109
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mResumingPackage:Ljava/lang/String;

    invoke-static {v1, v3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->resumeDualScreenMap(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 3111
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 3113
    .end local v2    # "activeScreen":I
    :goto_1
    goto :goto_2

    .line 3114
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 3116
    .end local v0    # "enableDualScreen":Z
    :goto_2
    goto :goto_3

    .line 3117
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3118
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->dismiss()V

    .line 3120
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    goto :goto_3

    .line 3123
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 3126
    :cond_6
    :goto_3
    return-void
.end method

.method public noteGameMagicVoice(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "pid"    # I

    .line 3091
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMagicVoiceCtrl:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    if-eqz v0, :cond_0

    .line 3092
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMagicVoiceCtrl:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->noteGameMagicVoice(II)V

    .line 3094
    :cond_0
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 654
    const-string v0, "cn.nubia.gamelauncher"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxPause:Z

    .line 657
    :cond_0
    iput-object p3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameHelpPackageName:Ljava/lang/String;

    .line 658
    iput-object p3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameHelpPackageNameForHand:Ljava/lang/String;

    .line 659
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 660
    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notePausingActivity("

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

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->dismiss()V

    .line 667
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    if-eqz v0, :cond_3

    .line 668
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->dismiss()V

    .line 670
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    if-eqz v0, :cond_4

    .line 671
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->dismiss()V

    .line 673
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 674
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->dimissGameKeyMapDialog()V

    .line 675
    invoke-static {}, Lnubia/config/GameHelperFeatureConfig;->isFingerprintGameKeyEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 676
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 679
    :cond_5
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->mExistDualScreenMap:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 680
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    if-eqz v0, :cond_6

    .line 681
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->dismiss()V

    .line 682
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 683
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 686
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    if-eqz v0, :cond_7

    .line 687
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->dismiss()V

    .line 688
    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 690
    :cond_7
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWaitingList:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWaitingList:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 691
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 692
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 695
    :cond_8
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;IILjava/lang/String;)V

    .line 697
    .local v0, "npar":Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v0    # "npar":Lcn/nubia/server/appmgmt/game/GameModeController$notePausingActivityRunnable;
    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 701
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_0
    return-void
.end method

.method public noteRemoveWindow(I)V
    .locals 6
    .param p1, "pid"    # I

    .line 1107
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapPid:I

    if-ne p1, v0, :cond_4

    .line 1108
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapWindowState:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapWindowState:I

    .line 1109
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapWindowState:I

    if-nez v0, :cond_3

    .line 1110
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mMainStackApp:Lcn/nubia/game/ProcessItem;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameAppResume(Lcn/nubia/game/ProcessItem;)Z

    move-result v0

    .line 1111
    .local v0, "isMainStackGame":Z
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSecStackApp:Lcn/nubia/game/ProcessItem;

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameAppResume(Lcn/nubia/game/ProcessItem;)Z

    move-result v2

    .line 1112
    .local v2, "isSecStackGame":Z
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1113
    const-string v3, "GameModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "noteRemoveWindow isMainStackGame="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isSecStackGame="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mIsRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_0
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    goto :goto_0

    .line 1120
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    .line 1121
    sget-boolean v3, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GameModeService"

    const-string v4, "[[noteRemoveWindow supersnap closed re-open game mode]]"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_2
    :goto_0
    iput v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapWindowState:I

    .line 1125
    .end local v0    # "isMainStackGame":Z
    .end local v2    # "isSecStackGame":Z
    :cond_3
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteRemoveWindow pid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") mSupersnapWindowState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mSupersnapWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_4
    return-void
.end method

.method public noteRemovingProcess(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .line 736
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 737
    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteRemovingProcess("

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

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    if-nez p3, :cond_1

    .line 741
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameModePackageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 744
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 745
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GameModeService"

    const-string/jumbo v1, "noteRemovingProcess clear the mLastGameModePackageName..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mLastGameModePackageName:Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    if-eqz v0, :cond_3

    .line 748
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->dismiss()V

    .line 750
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    if-eqz v0, :cond_4

    .line 751
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->dismiss()V

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 757
    :cond_4
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;

    invoke-direct {v0, p0, p1, p3}, Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;ILjava/lang/String;)V

    .line 759
    .local v0, "nrpr":Lcn/nubia/server/appmgmt/game/GameModeController$NoteRemovingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    const-string v1, "cn.nubia.gamelauncher"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 762
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameBoxRunning:Z

    .line 764
    :cond_5
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .line 522
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "GameModeService"

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

    .line 528
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cn.nubia.launcher"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->dismiss()V

    .line 532
    :cond_1
    invoke-direct {p0, p3, p4}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteResumingPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->MYDEBUG:Z

    if-eqz v0, :cond_2

    .line 535
    const-string v0, "GameModeService"

    const-string/jumbo v1, "noteResumingActivity return because inFreeformMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_2
    return-void

    .line 539
    :cond_3
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 540
    const-string v0, "GameModeService"

    const-string/jumbo v1, "noteResumingActivity modifyTouchFreq adapterGameScreenRefreshRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_4
    invoke-direct {p0, p1, p3}, Lcn/nubia/server/appmgmt/game/GameModeController;->modifyTouchFreq(ILjava/lang/String;)V

    .line 545
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    if-eqz v0, :cond_5

    .line 546
    invoke-direct {p0, p3}, Lcn/nubia/server/appmgmt/game/GameModeController;->mapGameKey(Ljava/lang/String;)V

    .line 548
    :cond_5
    const/4 v0, 0x0

    if-eqz p5, :cond_6

    .line 549
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 550
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->dismiss()V

    .line 551
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    .line 554
    :cond_6
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportGameKeys:Z

    if-nez v1, :cond_7

    sget-object v1, Lcn/nubia/game/GameModeHelper;->mPackageBlackList:Ljava/util/List;

    .line 555
    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcn/nubia/server/appmgmt/game/GameModeController;->mPackageTriggerList:Ljava/util/List;

    .line 556
    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcn/nubia/server/appmgmt/game/GameModeController;->mNotAlertList:Ljava/util/List;

    .line 557
    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 558
    iput-object p3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mWaitingList:Ljava/lang/String;

    .line 559
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->showAlertDialog()V

    .line 560
    return-void

    .line 562
    :cond_7
    iget v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsSupportNetworkAcc:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameMode:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsShowNetworkAccDialog:Z

    if-eqz v1, :cond_9

    .line 566
    :cond_8
    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;IILjava/lang/String;)V

    .line 568
    .local v1, "nrar":Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    .end local v1    # "nrar":Lcn/nubia/server/appmgmt/game/GameModeController$noteResumingActivityRunnable;
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    const-string v1, "cn.nubia.launcher"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "cn.nubia.gamelauncher"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 573
    invoke-static {v1, p3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 574
    invoke-static {v1, p3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 575
    invoke-static {v1, p3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 576
    :cond_a
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "GameModeService"

    const-string/jumbo v3, "noteResumingActivity TouchEnable false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_b
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 578
    invoke-static {}, Lnubia/config/GameHelperFeatureConfig;->isFingerprintGameKeyEnable()Z

    move-result v1

    if-nez v1, :cond_c

    .line 579
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p3}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;ZLjava/lang/String;)V

    .line 582
    :cond_c
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    .line 583
    invoke-static {v1, p3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 584
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 586
    :cond_d
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 588
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 589
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->dismiss()V

    .line 590
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 593
    :cond_e
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 594
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 595
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->dismiss()V

    .line 596
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 600
    :cond_f
    const-string v0, "cn.nubia.launcher"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->isGameTouchEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 601
    :cond_10
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_11
    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 606
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_0
    return-void
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .line 1084
    return-void
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 1061
    return-void
.end method

.method public noteWindowStateChange(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "windowId"    # I
    .param p3, "state"    # I

    .line 1087
    return-void
.end method

.method public showDualHandShankMapOption(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "fromUiThread"    # Z

    .line 1785
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualHandShankMapView:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1787
    :cond_0
    if-eqz p3, :cond_1

    .line 1788
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->showDualHandShankMapView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1797
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1790
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$26;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController$26;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    :goto_0
    goto :goto_2

    .line 1797
    :goto_1
    nop

    .line 1798
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1801
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public showDualScreenMapGuideDialog()V
    .locals 2

    .line 2216
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGuideDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2217
    return-void

    .line 2219
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$36;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameModeController$36;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    goto :goto_0

    .line 2226
    :catch_0
    move-exception v0

    .line 2227
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public showDualScreenMapOption(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fromUiThread"    # Z

    .line 2291
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mDualScreenMapView:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2293
    :cond_0
    if-eqz p2, :cond_1

    .line 2294
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showDualScreenMapView(Ljava/lang/String;)V

    goto :goto_0

    .line 2303
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2296
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$37;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController$37;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2305
    :goto_0
    goto :goto_2

    .line 2303
    :goto_1
    nop

    .line 2304
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2307
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public showGameKeyMapOption(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fromUiThread"    # Z

    .line 2127
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameKeyMapView:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2129
    :cond_0
    if-eqz p2, :cond_1

    .line 2130
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showGameKeyMapOption(Ljava/lang/String;)V

    goto :goto_0

    .line 2139
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2132
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$34;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController$34;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2141
    :goto_0
    goto :goto_2

    .line 2139
    :goto_1
    nop

    .line 2140
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2143
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public showHandShankMapOption(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fromUiThread"    # Z

    .line 1767
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandShankMapView:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1769
    :cond_0
    if-eqz p2, :cond_1

    .line 1770
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showHandShankMapView(Ljava/lang/String;)V

    goto :goto_0

    .line 1779
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1772
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$25;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController$25;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    :goto_0
    goto :goto_2

    .line 1779
    :goto_1
    nop

    .line 1780
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1783
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public showTouchGameKeyMapOption(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fromUiThread"    # Z

    .line 1749
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapView:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1751
    :cond_0
    if-eqz p2, :cond_1

    .line 1752
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showTouchGameKeyMapView(Ljava/lang/String;)V

    goto :goto_0

    .line 1761
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1754
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$24;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController$24;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    :goto_0
    goto :goto_2

    .line 1761
    :goto_1
    nop

    .line 1762
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1765
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public showTouchGameKeyMapOptionNX629V1s(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fromUiThread"    # Z

    .line 1819
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mTouchGameKeyMapViewNew:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1821
    :cond_0
    if-eqz p2, :cond_1

    .line 1822
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->showTouchGameKeyMapViewNX629V1s(Ljava/lang/String;)V

    goto :goto_0

    .line 1831
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1824
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameModeController$28;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController$28;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    :goto_0
    goto :goto_2

    .line 1831
    :goto_1
    nop

    .line 1832
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1835
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method public startOrStopGameBox(Z)Z
    .locals 2
    .param p1, "gameSwitch"    # Z

    .line 2494
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameSwitch:Z

    .line 2495
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mGameSwitch:Z

    if-eqz v0, :cond_0

    .line 2496
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mEnterGamemodePromptDialog:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->dismiss()V

    .line 2498
    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->startGameBoxIfUnlock(J)Z

    move-result v0

    return v0
.end method

.method public updateNubiaData()V
    .locals 2

    .line 2558
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->gameDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2559
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->gameDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2561
    :cond_0
    return-void
.end method

.method public writeNodeValue(Ljava/lang/String;)Z
    .locals 4
    .param p1, "outfileName"    # Ljava/lang/String;

    .line 2820
    const/4 v0, 0x0

    .line 2822
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 2823
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GameModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeNodeValue mIsRunning  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController;->mIsRunning:Z

    if-eqz v1, :cond_1

    .line 2825
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 2827
    :cond_1
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2829
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 2830
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2831
    const/4 v1, 0x1

    return v1

    .line 2832
    :catch_0
    move-exception v1

    .line 2833
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameModeController;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2834
    :cond_2
    const/4 v2, 0x0

    return v2
.end method
