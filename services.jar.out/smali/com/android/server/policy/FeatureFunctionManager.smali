.class public final Lcom/android/server/policy/FeatureFunctionManager;
.super Ljava/lang/Object;
.source "FeatureFunctionManager.java"


# instance fields
.field private mAntiMisOperationCtrl:Lcn/nubia/server/policy/AntiMisOperationCtrl;

.field private mCameraCtrl:Lcn/nubia/server/policy/CameraCtrl;

.field private final mContext:Landroid/content/Context;

.field final mDispatchingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/IKeyBeforeDispatchingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerprintCtrl:Lcom/android/server/policy/FingerprintCtrl;

.field private mGameDockModeController:Lcom/android/server/policy/GameDockModeController;

.field private mGameHelperCtrl:Lcom/android/server/policy/GameHelperCtrl;

.field private mGameKeysCtrl:Lcom/android/server/policy/GameKeysCtrl;

.field private final mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

.field final mQueueingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/IKeyBeforeQueueingHandler;",
            ">;"
        }
    .end annotation
.end field

.field final mSettingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/ISettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleModeCtrl:Lcom/android/server/policy/SingleModeCtrl;

.field private mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

.field private final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 64
    iput-object p3, p0, Lcom/android/server/policy/FeatureFunctionManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/FeatureFunctionManager;->initCtrls()V

    .line 66
    return-void
.end method

.method private initCtrls()V
    .locals 9

    .line 70
    new-instance v0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;-><init>(Lcom/android/server/policy/FeatureFunctionManager;Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .line 72
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isThreeFingerSwipeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/server/policy/TouchGestureFuncsCtrl;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/TouchGestureFuncsCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    .line 87
    .local v0, "touchGestureFuncsCtrl":Lcom/android/server/policy/TouchGestureFuncsCtrl;
    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v0    # "touchGestureFuncsCtrl":Lcom/android/server/policy/TouchGestureFuncsCtrl;
    :cond_0
    new-instance v0, Lcn/nubia/server/policy/CameraCtrl;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/policy/CameraCtrl;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mCameraCtrl:Lcn/nubia/server/policy/CameraCtrl;

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mCameraCtrl:Lcn/nubia/server/policy/CameraCtrl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mCameraCtrl:Lcn/nubia/server/policy/CameraCtrl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {}, Lnubia/config/SensorGestureFeature;->getWakeGestureNode()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "wakeGestureNode":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "wakeGestureFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    new-instance v2, Lcom/android/server/policy/DoubleClickScreenOnCtrl;

    iget-object v3, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/server/policy/DoubleClickScreenOnCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    .line 101
    .local v2, "doubleClickScreenCtrl":Lcom/android/server/policy/DoubleClickScreenOnCtrl;
    iget-object v3, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v3, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v2    # "doubleClickScreenCtrl":Lcom/android/server/policy/DoubleClickScreenOnCtrl;
    :cond_1
    invoke-static {}, Lnubia/config/SensorGestureFeature;->getPalmScreenLockNode()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "palmGestureNode":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v3, "palmGestureFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    new-instance v4, Lcom/android/server/policy/PalmCoverCtrl;

    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/PalmCoverCtrl;-><init>(Landroid/content/Context;)V

    .line 108
    .local v4, "palmCoverCtrl":Lcom/android/server/policy/PalmCoverCtrl;
    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v4    # "palmCoverCtrl":Lcom/android/server/policy/PalmCoverCtrl;
    :cond_2
    new-instance v4, Lcn/nubia/server/policy/AntiMisOperationCtrl;

    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcn/nubia/server/policy/AntiMisOperationCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/FeatureFunctionManager;->mAntiMisOperationCtrl:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    .line 113
    iget-object v4, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mAntiMisOperationCtrl:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-string/jumbo v4, "nubia_game_dock_mode_feature"

    invoke-static {v4}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "gameDockModeFeature":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    new-instance v5, Lcom/android/server/policy/GameDockModeController;

    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/android/server/policy/GameDockModeController;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameDockModeController:Lcom/android/server/policy/GameDockModeController;

    .line 121
    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameDockModeController:Lcom/android/server/policy/GameDockModeController;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameDockModeController:Lcom/android/server/policy/GameDockModeController;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameDockModeController:Lcom/android/server/policy/GameDockModeController;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_3
    new-instance v5, Lcom/android/server/policy/SystemKeysCtrl;

    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/android/server/policy/SystemKeysCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

    .line 129
    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v5, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSystemKeysCtrl:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v5, Lcn/nubia/server/policy/TouchHomeLightCtrl;

    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v5, v6, v7}, Lcn/nubia/server/policy/TouchHomeLightCtrl;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    .line 137
    .local v5, "touchHomeLightCtrl":Lcn/nubia/server/policy/TouchHomeLightCtrl;
    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v6, Lcom/android/server/policy/GameKeysCtrl;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v8}, Lcom/android/server/policy/GameKeysCtrl;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameKeysCtrl:Lcom/android/server/policy/GameKeysCtrl;

    .line 141
    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameKeysCtrl:Lcom/android/server/policy/GameKeysCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 144
    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v6, v7, v8}, Lcom/android/server/policy/SingleModeCtrl;->main(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/SingleModeCtrl;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleModeCtrl:Lcom/android/server/policy/SingleModeCtrl;

    .line 145
    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleModeCtrl:Lcom/android/server/policy/SingleModeCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleModeCtrl:Lcom/android/server/policy/SingleModeCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleModeCtrl:Lcom/android/server/policy/SingleModeCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_4
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 150
    new-instance v6, Lcom/android/server/policy/FingerprintCtrl;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v6, v7, v8}, Lcom/android/server/policy/FingerprintCtrl;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFingerprintCtrl:Lcom/android/server/policy/FingerprintCtrl;

    .line 151
    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFingerprintCtrl:Lcom/android/server/policy/FingerprintCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFingerprintCtrl:Lcom/android/server/policy/FingerprintCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFingerprintCtrl:Lcom/android/server/policy/FingerprintCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_5
    new-instance v6, Lcom/android/server/policy/GameHelperCtrl;

    invoke-direct {v6}, Lcom/android/server/policy/GameHelperCtrl;-><init>()V

    iput-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameHelperCtrl:Lcom/android/server/policy/GameHelperCtrl;

    .line 158
    iget-object v6, p0, Lcom/android/server/policy/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameHelperCtrl:Lcom/android/server/policy/GameHelperCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method


# virtual methods
.method interceptHomeKey(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyguardOn"    # Z

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method interceptMenuAndBackKey(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyguardOn"    # Z

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method interceptMotionAfterPressHomeKey(I)Z
    .locals 1
    .param p1, "policyFlags"    # I

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method interceptMotionAfterPressMenuAndBackKey(I)Z
    .locals 1
    .param p1, "policyFlags"    # I

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method notifyGameSwitchChanged(JZZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "gameSwitch"    # Z
    .param p4, "isScreenOn"    # Z

    .line 267
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameKeysCtrl:Lcom/android/server/policy/GameKeysCtrl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/GameKeysCtrl;->notifyGameSwitchChanged(JZZ)V

    .line 268
    return-void
.end method

.method playSoundEffect(Landroid/view/KeyEvent;IZ)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyCode"    # I
    .param p3, "keyguardOn"    # Z

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/16 v0, 0x54

    if-ne p2, v0, :cond_1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 220
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 221
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 224
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method screenTurnedOff()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameKeysCtrl:Lcom/android/server/policy/GameKeysCtrl;

    invoke-virtual {v0}, Lcom/android/server/policy/GameKeysCtrl;->screenTurnedOff()V

    .line 264
    return-void
.end method

.method screenTurnedOn()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameKeysCtrl:Lcom/android/server/policy/GameKeysCtrl;

    invoke-virtual {v0}, Lcom/android/server/policy/GameKeysCtrl;->screenTurnedOn()V

    .line 260
    return-void
.end method

.method startOrStopGameBox(ZZZ)V
    .locals 1
    .param p1, "factoryFlag"    # Z
    .param p2, "gameSwitch"    # Z
    .param p3, "isScreenOn"    # Z

    .line 271
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mGameKeysCtrl:Lcom/android/server/policy/GameKeysCtrl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/GameKeysCtrl;->startOrStopGameBox(ZZZ)V

    .line 272
    return-void
.end method

.method systemBooted()V
    .locals 5

    .line 182
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, "fitcadIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.edge"

    const-string v3, "cn.nubia.fitcard.CardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v1, "floatIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "cn.nubia.edge"

    const-string v4, "cn.nubia.floatmenu.FloatService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 196
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    goto :goto_1

    .line 197
    :catch_1
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    .end local v0    # "fitcadIntent":Landroid/content/Intent;
    .end local v1    # "floatIntent":Landroid/content/Intent;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFingerprintCtrl:Lcom/android/server/policy/FingerprintCtrl;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFingerprintCtrl:Lcom/android/server/policy/FingerprintCtrl;

    invoke-virtual {v0}, Lcom/android/server/policy/FingerprintCtrl;->systemBooted()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleModeCtrl:Lcom/android/server/policy/SingleModeCtrl;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleModeCtrl:Lcom/android/server/policy/SingleModeCtrl;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleModeCtrl;->systemBooted()V

    .line 207
    :cond_2
    return-void
.end method

.method systemReady()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mAntiMisOperationCtrl:Lcn/nubia/server/policy/AntiMisOperationCtrl;

    invoke-virtual {v0}, Lcn/nubia/server/policy/AntiMisOperationCtrl;->initScreenSaverService()V

    .line 176
    return-void
.end method

.method updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFingerprintCtrl:Lcom/android/server/policy/FingerprintCtrl;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mFingerprintCtrl:Lcom/android/server/policy/FingerprintCtrl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/FingerprintCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleModeCtrl:Lcom/android/server/policy/SingleModeCtrl;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/server/policy/FeatureFunctionManager;->mSingleModeCtrl:Lcom/android/server/policy/SingleModeCtrl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SingleModeCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_1
    return-void
.end method
