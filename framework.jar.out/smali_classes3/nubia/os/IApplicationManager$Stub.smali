.class public abstract Lnubia/os/IApplicationManager$Stub;
.super Landroid/os/Binder;
.source "IApplicationManager.java"

# interfaces
.implements Lnubia/os/IApplicationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/IApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/IApplicationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.IApplicationManager"

.field static final TRANSACTION_IsAllowDialogShow:I = 0x5f

.field static final TRANSACTION_IsGameModeRunning:I = 0x5d

.field static final TRANSACTION_IsGameModeSubRunning:I = 0x5e

.field static final TRANSACTION_acquirePerformanceLock:I = 0x18

.field static final TRANSACTION_addPackageToPreLaunchBlackList:I = 0x25

.field static final TRANSACTION_allow3rdPartyPush:I = 0x7

.field static final TRANSACTION_allowAlarm:I = 0x6

.field static final TRANSACTION_allowBackgroundSyncToRun:I = 0x17

.field static final TRANSACTION_allowDeliverPendingNonWakeupAlarmInScreenOff:I = 0x8

.field static final TRANSACTION_allowFreezeAppWakeupAlarm:I = 0x5

.field static final TRANSACTION_allowFullWakeLockScreenOff:I = 0x2

.field static final TRANSACTION_allowPartialWakelock:I = 0x3

.field static final TRANSACTION_allowWakeupAlarm:I = 0x4

.field static final TRANSACTION_change4DNode:I = 0x71

.field static final TRANSACTION_checkActionAllowed:I = 0x53

.field static final TRANSACTION_checkAllowedGetActionName:I = 0x54

.field static final TRANSACTION_getActionState:I = 0x55

.field static final TRANSACTION_getAppLearningCallback:I = 0x1e

.field static final TRANSACTION_getAppLearningRecommendCallback:I = 0x1f

.field static final TRANSACTION_getApplicationRecond:I = 0x5a

.field static final TRANSACTION_getCurrentUserLearningProcess:I = 0x24

.field static final TRANSACTION_getForegroundPackageName:I = 0x57

.field static final TRANSACTION_getFrozenProcessStatus:I = 0x31

.field static final TRANSACTION_getGameLauncherAppNameList:I = 0x58

.field static final TRANSACTION_getGameMode:I = 0x5b

.field static final TRANSACTION_getGameScreenRefreshRate:I = 0x72

.field static final TRANSACTION_getLightEffectState:I = 0x78

.field static final TRANSACTION_getNetAvailable:I = 0x1b

.field static final TRANSACTION_grantPermissionDialogClick:I = 0x4e

.field static final TRANSACTION_installEvent:I = 0x4c

.field static final TRANSACTION_isAllowStartActivityInGameKeys:I = 0x60

.field static final TRANSACTION_isAllowedStartFrozenPackage:I = 0x32

.field static final TRANSACTION_isControlledByMotionDoze:I = 0x1a

.field static final TRANSACTION_isDangerousWakeLock:I = 0x1

.field static final TRANSACTION_isGameAppOnForeground:I = 0x5c

.field static final TRANSACTION_isGameKeyOn:I = 0x63

.field static final TRANSACTION_isLightEffectOpened:I = 0x74

.field static final TRANSACTION_isNotifyDisplayEvent:I = 0x34

.field static final TRANSACTION_isOpen4DNode:I = 0x70

.field static final TRANSACTION_isProcessFrozen:I = 0x2d

.field static final TRANSACTION_isProcessFrozenByUid:I = 0x2f

.field static final TRANSACTION_isProcessRealFrozen:I = 0x2e

.field static final TRANSACTION_isProcessRealFrozenByUid:I = 0x30

.field static final TRANSACTION_isUsbInstallSwitchOn:I = 0x59

.field static final TRANSACTION_noteActionMutex:I = 0x50

.field static final TRANSACTION_noteActivityStackRemoved:I = 0x13

.field static final TRANSACTION_noteAddWindow:I = 0x2b

.field static final TRANSACTION_noteAppAnrCrash:I = 0x69

.field static final TRANSACTION_noteAppBackground:I = 0x41

.field static final TRANSACTION_noteAppExit:I = 0x42

.field static final TRANSACTION_noteAppExitReason:I = 0x43

.field static final TRANSACTION_noteAppForeground:I = 0x40

.field static final TRANSACTION_noteAppInactive:I = 0x3e

.field static final TRANSACTION_noteAppTransitionAnimation:I = 0x15

.field static final TRANSACTION_noteAppUsingCamera:I = 0x68

.field static final TRANSACTION_noteCreateActivity:I = 0x7b

.field static final TRANSACTION_noteDisplayPowerModeChanged:I = 0x3f

.field static final TRANSACTION_noteDisplayStateChanged:I = 0x35

.field static final TRANSACTION_noteEdgeGesture:I = 0x66

.field static final TRANSACTION_noteEndGps:I = 0x49

.field static final TRANSACTION_noteEndMusic:I = 0x45

.field static final TRANSACTION_noteEndMusicToColorfullight:I = 0x47

.field static final TRANSACTION_noteEndNetworkPosition:I = 0x4b

.field static final TRANSACTION_noteFingerprintAuth:I = 0x67

.field static final TRANSACTION_noteFocusChangedLw:I = 0xe

.field static final TRANSACTION_noteGPSReceivers:I = 0x56

.field static final TRANSACTION_noteGameMagicVoice:I = 0x79

.field static final TRANSACTION_noteGameModeIsRunning:I = 0x21

.field static final TRANSACTION_noteGameModeIsStopped:I = 0x22

.field static final TRANSACTION_noteIdleState:I = 0x3d

.field static final TRANSACTION_noteKeyguardStateChanged:I = 0x29

.field static final TRANSACTION_noteKillExceptionBackgroundApp:I = 0x6d

.field static final TRANSACTION_noteNaviGestureFinalization:I = 0xa

.field static final TRANSACTION_noteNaviGestureStarted:I = 0x9

.field static final TRANSACTION_noteNotificationClick:I = 0x6b

.field static final TRANSACTION_notePausingActivity:I = 0xf

.field static final TRANSACTION_notePlayAudioChange:I = 0x73

.field static final TRANSACTION_notePlayMusicToColorfullight:I = 0x46

.field static final TRANSACTION_noteProcessNeedPreLaunch:I = 0x20

.field static final TRANSACTION_noteProcessStatus:I = 0x26

.field static final TRANSACTION_noteProcessStatusChanged:I = 0x27

.field static final TRANSACTION_noteRemoveWindow:I = 0x2c

.field static final TRANSACTION_noteRemovingProcess:I = 0x12

.field static final TRANSACTION_noteResumedActivity:I = 0xd

.field static final TRANSACTION_noteResumedAppDie:I = 0x14

.field static final TRANSACTION_noteResumingActivity:I = 0xc

.field static final TRANSACTION_noteScreenState:I = 0x37

.field static final TRANSACTION_noteScreenStateChanged:I = 0x28

.field static final TRANSACTION_noteSetUserIsMonkey:I = 0x64

.field static final TRANSACTION_noteStartActivity:I = 0x6e

.field static final TRANSACTION_noteStartCtsTest:I = 0xb

.field static final TRANSACTION_noteStartGps:I = 0x48

.field static final TRANSACTION_noteStartMusic:I = 0x44

.field static final TRANSACTION_noteStartNetworkPosition:I = 0x4a

.field static final TRANSACTION_noteStartingProcess:I = 0x11

.field static final TRANSACTION_noteStatusBarExpanding:I = 0x16

.field static final TRANSACTION_noteStoppingActivity:I = 0x10

.field static final TRANSACTION_noteThreadLag:I = 0x6a

.field static final TRANSACTION_noteUpdateFunctionState:I = 0x7a

.field static final TRANSACTION_noteWakeUp:I = 0x6c

.field static final TRANSACTION_noteWindowStateChange:I = 0x2a

.field static final TRANSACTION_notifyClipChanged:I = 0x36

.field static final TRANSACTION_notifyGameSwitchChanged:I = 0x6f

.field static final TRANSACTION_registerActionMutexCallback:I = 0x51

.field static final TRANSACTION_registerAudioPlayCallback:I = 0x76

.field static final TRANSACTION_registerCallback:I = 0x39

.field static final TRANSACTION_registerCallbackWithFilter:I = 0x3a

.field static final TRANSACTION_registerFreezeChangeCallback:I = 0x65

.field static final TRANSACTION_releasePerformanceLock:I = 0x19

.field static final TRANSACTION_setAppLearningCallback:I = 0x1d

.field static final TRANSACTION_setAppLearningProcessList:I = 0x23

.field static final TRANSACTION_setFreezeCallback:I = 0x1c

.field static final TRANSACTION_setLightEffectState:I = 0x75

.field static final TRANSACTION_setNetworkFirewall:I = 0x38

.field static final TRANSACTION_smallPermissionDialogClick:I = 0x4f

.field static final TRANSACTION_startGameBoxIfGamekeyOn:I = 0x62

.field static final TRANSACTION_startOrStopGameBox:I = 0x61

.field static final TRANSACTION_unfreezeWhenKill:I = 0x33

.field static final TRANSACTION_uninstallEvent:I = 0x4d

.field static final TRANSACTION_unregisterActionMutexCallback:I = 0x52

.field static final TRANSACTION_unregisterAudioPlayCallback:I = 0x77

.field static final TRANSACTION_unregisterCallback:I = 0x3b

.field static final TRANSACTION_updateHighlightsCoordinate:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "nubia.os.IApplicationManager"

    invoke-virtual {p0, p0, v0}, Lnubia/os/IApplicationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/IApplicationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "nubia.os.IApplicationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/IApplicationManager;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Lnubia/os/IApplicationManager;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Lnubia/os/IApplicationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/os/IApplicationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 42
    const-string v13, "nubia.os.IApplicationManager"

    .line 43
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_1c

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v10, :pswitch_data_0

    .line 1478
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1470
    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteCreateActivity(Ljava/lang/String;)V

    .line 1474
    return v14

    .line 1462
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1465
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteUpdateFunctionState(I)V

    .line 1466
    return v14

    .line 1451
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1455
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1456
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->noteGameMagicVoice(II)V

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    return v14

    .line 1441
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1444
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->getLightEffectState(I)I

    move-result v1

    .line 1445
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1447
    return v14

    .line 1431
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IAudioPlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IAudioPlayCallback;

    move-result-object v0

    .line 1434
    .local v0, "_arg0":Lnubia/os/IAudioPlayCallback;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->unregisterAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z

    move-result v1

    .line 1435
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    return v14

    .line 1421
    .end local v0    # "_arg0":Lnubia/os/IAudioPlayCallback;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IAudioPlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IAudioPlayCallback;

    move-result-object v0

    .line 1424
    .restart local v0    # "_arg0":Lnubia/os/IAudioPlayCallback;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->registerAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z

    move-result v1

    .line 1425
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    return v14

    .line 1409
    .end local v0    # "_arg0":Lnubia/os/IAudioPlayCallback;
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1413
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1414
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->setLightEffectState(II)Z

    move-result v2

    .line 1415
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1417
    return v14

    .line 1401
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->isLightEffectOpened()Z

    move-result v0

    .line 1403
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    return v14

    .line 1386
    .end local v0    # "_result":Z
    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1390
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1392
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1394
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1395
    .local v3, "_arg3":I
    invoke-virtual {v9, v0, v1, v2, v3}, Lnubia/os/IApplicationManager$Stub;->notePlayAudioChange(IIII)V

    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    return v14

    .line 1374
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1378
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1379
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->getGameScreenRefreshRate(ILjava/lang/String;)I

    move-result v2

    .line 1380
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    return v14

    .line 1365
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v14

    nop

    :cond_0
    move v0, v1

    .line 1368
    .local v0, "_arg0":Z
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->change4DNode(Z)V

    .line 1369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    return v14

    .line 1357
    .end local v0    # "_arg0":Z
    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->isOpen4DNode()Z

    move-result v0

    .line 1359
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    return v14

    .line 1348
    .end local v0    # "_result":Z
    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v14

    nop

    :cond_1
    move v0, v1

    .line 1351
    .local v0, "_arg0":Z
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->notifyGameSwitchChanged(Z)V

    .line 1352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    return v14

    .line 1338
    .end local v0    # "_arg0":Z
    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1343
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->noteStartActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    return v14

    .line 1327
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1332
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->noteKillExceptionBackgroundApp(Ljava/lang/String;I)V

    .line 1333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    return v14

    .line 1316
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1320
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1321
    .restart local v1    # "_arg1":I
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->noteWakeUp(Ljava/lang/String;I)V

    .line 1322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    return v14

    .line 1301
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1304
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .line 1307
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_2
    nop

    .line 1310
    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1311
    .local v1, "_arg1":J
    invoke-virtual {v9, v0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->noteNotificationClick(Landroid/content/Intent;J)V

    .line 1312
    return v14

    .line 1284
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":J
    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1288
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1290
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 1292
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1294
    .local v18, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1295
    .local v20, "_arg4":Ljava/lang/String;
    move-object v0, v9

    move-object v1, v8

    move-object v2, v15

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lnubia/os/IApplicationManager$Stub;->noteThreadLag(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 1296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    return v14

    .line 1269
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":J
    .end local v20    # "_arg4":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1273
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1275
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1277
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 1278
    .local v15, "_arg3":J
    move-object v0, v9

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lnubia/os/IApplicationManager$Stub;->noteAppAnrCrash(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    return v14

    .line 1250
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":J
    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1254
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1256
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1258
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1260
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1262
    .local v18, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v7, v14

    goto :goto_1

    :cond_3
    move v7, v1

    .line 1263
    .local v7, "_arg5":Z
    :goto_1
    move-object v0, v9

    move v1, v8

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    invoke-virtual/range {v0 .. v7}, Lnubia/os/IApplicationManager$Stub;->noteAppUsingCamera(ILjava/lang/String;ILjava/lang/String;JZ)V

    .line 1264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    return v14

    .line 1239
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":J
    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1243
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v1, v14

    nop

    .line 1244
    .local v1, "_arg1":Z
    :cond_4
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->noteFingerprintAuth(Ljava/lang/String;Z)V

    .line 1245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    return v14

    .line 1230
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteEdgeGesture(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    return v14

    .line 1222
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IFreezeChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IFreezeChangeCallback;

    move-result-object v0

    .line 1225
    .local v0, "_arg0":Lnubia/os/IFreezeChangeCallback;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->registerFreezeChangeCallback(Lnubia/os/IFreezeChangeCallback;)V

    .line 1226
    return v14

    .line 1214
    .end local v0    # "_arg0":Lnubia/os/IFreezeChangeCallback;
    :pswitch_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v14

    nop

    :cond_5
    move v0, v1

    .line 1217
    .local v0, "_arg0":Z
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteSetUserIsMonkey(Z)V

    .line 1218
    return v14

    .line 1206
    .end local v0    # "_arg0":Z
    :pswitch_18
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->isGameKeyOn()Z

    move-result v0

    .line 1208
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    return v14

    .line 1196
    .end local v0    # "_result":Z
    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1199
    .local v0, "_arg0":J
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->startGameBoxIfGamekeyOn(J)Z

    move-result v2

    .line 1200
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    return v14

    .line 1186
    .end local v0    # "_arg0":J
    .end local v2    # "_result":Z
    :pswitch_1a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v14

    nop

    :cond_6
    move v0, v1

    .line 1189
    .local v0, "_arg0":Z
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->startOrStopGameBox(Z)Z

    move-result v1

    .line 1190
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    return v14

    .line 1178
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->isAllowStartActivityInGameKeys()Z

    move-result v0

    .line 1180
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    return v14

    .line 1168
    .end local v0    # "_result":Z
    :pswitch_1c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->IsAllowDialogShow(Ljava/lang/String;)Z

    move-result v1

    .line 1172
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    return v14

    .line 1158
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1161
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->IsGameModeSubRunning(I)Z

    move-result v1

    .line 1162
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    return v14

    .line 1150
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->IsGameModeRunning()Z

    move-result v0

    .line 1152
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    return v14

    .line 1142
    .end local v0    # "_result":Z
    :pswitch_1f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->isGameAppOnForeground()Z

    move-result v0

    .line 1144
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    return v14

    .line 1134
    .end local v0    # "_result":Z
    :pswitch_20
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->getGameMode()I

    move-result v0

    .line 1136
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    return v14

    .line 1124
    .end local v0    # "_result":I
    :pswitch_21
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1127
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->getApplicationRecond(I)Ljava/util/List;

    move-result-object v1

    .line 1128
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1130
    return v14

    .line 1116
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_22
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->isUsbInstallSwitchOn()Z

    move-result v0

    .line 1118
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    return v14

    .line 1108
    .end local v0    # "_result":Z
    :pswitch_23
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->getGameLauncherAppNameList()Ljava/util/List;

    move-result-object v0

    .line 1110
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1112
    return v14

    .line 1100
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_24
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->getForegroundPackageName()Ljava/util/List;

    move-result-object v0

    .line 1102
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1104
    return v14

    .line 1091
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_25
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    .line 1094
    .local v0, "_arg0":[Landroid/os/Bundle;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteGPSReceivers([Landroid/os/Bundle;)V

    .line 1095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    return v14

    .line 1081
    .end local v0    # "_arg0":[Landroid/os/Bundle;
    :pswitch_26
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->getActionState(Ljava/lang/String;)Z

    move-result v1

    .line 1085
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    return v14

    .line 1071
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1074
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1077
    return v14

    .line 1061
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_28
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1064
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->checkActionAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 1065
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    return v14

    .line 1050
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_29
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/mutex/IMutexCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/mutex/IMutexCallback;

    move-result-object v1

    .line 1055
    .local v1, "_arg1":Lcn/nubia/mutex/IMutexCallback;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->unregisterActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 1056
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    return v14

    .line 1039
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcn/nubia/mutex/IMutexCallback;
    :pswitch_2a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/mutex/IMutexCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/mutex/IMutexCallback;

    move-result-object v1

    .line 1044
    .restart local v1    # "_arg1":Lcn/nubia/mutex/IMutexCallback;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->registerActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    return v14

    .line 1024
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcn/nubia/mutex/IMutexCallback;
    :pswitch_2b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v14

    goto :goto_2

    :cond_7
    move v3, v1

    .line 1032
    .local v3, "_arg2":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    move v1, v14

    nop

    .line 1033
    .local v1, "_arg3":Z
    :cond_8
    invoke-virtual {v9, v0, v2, v3, v1}, Lnubia/os/IApplicationManager$Stub;->noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    return v14

    .line 1010
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg3":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_2c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 1013
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 1016
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_9
    nop

    .line 1018
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->smallPermissionDialogClick(Landroid/os/Bundle;)V

    .line 1019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    return v14

    .line 996
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_2d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 999
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 1002
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_a
    nop

    .line 1004
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->grantPermissionDialogClick(Landroid/os/Bundle;)V

    .line 1005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    return v14

    .line 982
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_2e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 985
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_5

    .line 988
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_b
    nop

    .line 990
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->uninstallEvent(Landroid/os/Bundle;)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    return v14

    .line 968
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_2f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 971
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_6

    .line 974
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_c
    nop

    .line 976
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->installEvent(Landroid/os/Bundle;)V

    .line 977
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    return v14

    .line 949
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_30
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 953
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 955
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 957
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 959
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 961
    .local v19, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 962
    .local v21, "_arg5":J
    move-object v0, v9

    move v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Lnubia/os/IApplicationManager$Stub;->noteEndNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    return v14

    .line 930
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":J
    .end local v21    # "_arg5":J
    :pswitch_31
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 934
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 936
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 938
    .restart local v17    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 940
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 942
    .restart local v19    # "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 943
    .restart local v21    # "_arg5":J
    move-object v0, v9

    move v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Lnubia/os/IApplicationManager$Stub;->noteStartNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    return v14

    .line 911
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":J
    .end local v21    # "_arg5":J
    :pswitch_32
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 915
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 917
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 919
    .restart local v17    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 921
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 923
    .restart local v19    # "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 924
    .restart local v21    # "_arg5":J
    move-object v0, v9

    move v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Lnubia/os/IApplicationManager$Stub;->noteEndGps(IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    return v14

    .line 892
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":J
    .end local v21    # "_arg5":J
    :pswitch_33
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 896
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 898
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 900
    .restart local v17    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 902
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 904
    .restart local v19    # "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 905
    .restart local v21    # "_arg5":J
    move-object v0, v9

    move v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Lnubia/os/IApplicationManager$Stub;->noteStartGps(IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    return v14

    .line 881
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":J
    .end local v21    # "_arg5":J
    :pswitch_34
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 885
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 886
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->noteEndMusicToColorfullight(II)V

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    return v14

    .line 870
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_35
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 874
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 875
    .restart local v1    # "_arg1":I
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->notePlayMusicToColorfullight(II)V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    return v14

    .line 857
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_36
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 861
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 863
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 864
    .local v2, "_arg2":J
    invoke-virtual {v9, v0, v1, v2, v3}, Lnubia/os/IApplicationManager$Stub;->noteEndMusic(IIJ)V

    .line 865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    return v14

    .line 844
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_37
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 848
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 850
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 851
    .restart local v2    # "_arg2":J
    invoke-virtual {v9, v0, v1, v2, v3}, Lnubia/os/IApplicationManager$Stub;->noteStartMusic(IIJ)V

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    return v14

    .line 829
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_38
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 833
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 838
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lnubia/os/IApplicationManager$Stub;->noteAppExitReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    return v14

    .line 814
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_39
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 818
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 820
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 822
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 823
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lnubia/os/IApplicationManager$Stub;->noteAppExit(ILjava/lang/String;ILjava/lang/String;)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    return v14

    .line 797
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 801
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 803
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 805
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 807
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 808
    .local v17, "_arg4":J
    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v3, v15

    move-object/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lnubia/os/IApplicationManager$Stub;->noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V

    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    return v14

    .line 776
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":J
    :pswitch_3b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 780
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 782
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 784
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 786
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 788
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 790
    .local v20, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v8, v14

    goto :goto_7

    :cond_d
    move v8, v1

    .line 791
    .local v8, "_arg6":Z
    :goto_7
    move-object v0, v9

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    invoke-virtual/range {v0 .. v8}, Lnubia/os/IApplicationManager$Stub;->noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    return v14

    .line 767
    .end local v8    # "_arg6":Z
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":J
    :pswitch_3c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 770
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteDisplayPowerModeChanged(I)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    return v14

    .line 756
    .end local v0    # "_arg0":I
    :pswitch_3d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v1, v14

    nop

    .line 761
    .local v1, "_arg1":Z
    :cond_e
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->noteAppInactive(Ljava/lang/String;Z)V

    .line 762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    return v14

    .line 747
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_3e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 750
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteIdleState(I)V

    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    return v14

    .line 738
    .end local v0    # "_arg0":I
    :pswitch_3f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 741
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->updateHighlightsCoordinate(I)V

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    return v14

    .line 729
    .end local v0    # "_arg0":I
    :pswitch_40
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/ITaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ITaskCallback;

    move-result-object v0

    .line 732
    .local v0, "_arg0":Lnubia/os/ITaskCallback;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->unregisterCallback(Lnubia/os/ITaskCallback;)V

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    return v14

    .line 711
    .end local v0    # "_arg0":Lnubia/os/ITaskCallback;
    :pswitch_41
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/ITaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ITaskCallback;

    move-result-object v1

    .line 715
    .local v1, "_arg0":Lnubia/os/ITaskCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 717
    .local v2, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 718
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg2":Landroid/os/Bundle;
    goto :goto_8

    .line 721
    .end local v0    # "_arg2":Landroid/os/Bundle;
    :cond_f
    nop

    .line 723
    .restart local v0    # "_arg2":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {v9, v1, v2, v3, v0}, Lnubia/os/IApplicationManager$Stub;->registerCallbackWithFilter(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    return v14

    .line 700
    .end local v0    # "_arg2":Landroid/os/Bundle;
    .end local v1    # "_arg0":Lnubia/os/ITaskCallback;
    .end local v2    # "_arg1":J
    :pswitch_42
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/ITaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ITaskCallback;

    move-result-object v0

    .line 704
    .local v0, "_arg0":Lnubia/os/ITaskCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 705
    .local v1, "_arg1":J
    invoke-virtual {v9, v0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    return v14

    .line 687
    .end local v0    # "_arg0":Lnubia/os/ITaskCallback;
    .end local v1    # "_arg1":J
    :pswitch_43
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 691
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    move v1, v14

    nop

    .line 694
    .local v1, "_arg2":Z
    :cond_10
    invoke-virtual {v9, v0, v2, v1}, Lnubia/os/IApplicationManager$Stub;->setNetworkFirewall(ILjava/lang/String;Z)V

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    return v14

    .line 678
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_44
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 681
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteScreenState(I)V

    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    return v14

    .line 667
    .end local v0    # "_arg0":I
    :pswitch_45
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->notifyClipChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    return v14

    .line 654
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_46
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 658
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 660
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 661
    .local v2, "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->noteDisplayStateChanged(III)V

    .line 662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    return v14

    .line 640
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_47
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 644
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 646
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 647
    .restart local v2    # "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->isNotifyDisplayEvent(III)Z

    move-result v3

    .line 648
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    return v14

    .line 631
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_48
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 634
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->unfreezeWhenKill(I)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    return v14

    .line 611
    .end local v0    # "_arg0":I
    :pswitch_49
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 615
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 617
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 619
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 621
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 623
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 624
    .local v18, "_arg5":Ljava/lang/String;
    move-object v0, v9

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lnubia/os/IApplicationManager$Stub;->isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 625
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    return v14

    .line 590
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 596
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 597
    .local v2, "_arg2_length":I
    if-gez v2, :cond_11

    .line 598
    const/4 v3, 0x0

    .local v3, "_arg2":[I
    goto :goto_9

    .line 601
    .end local v3    # "_arg2":[I
    :cond_11
    new-array v3, v2, [I

    .line 603
    .restart local v3    # "_arg2":[I
    :goto_9
    invoke-virtual {v9, v0, v1, v3}, Lnubia/os/IApplicationManager$Stub;->getFrozenProcessStatus(Ljava/lang/String;I[I)Z

    move-result v4

    .line 604
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 607
    return v14

    .line 580
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_result":Z
    :pswitch_4b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 583
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->isProcessRealFrozenByUid(I)Z

    move-result v1

    .line 584
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    return v14

    .line 570
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 573
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->isProcessFrozenByUid(I)Z

    move-result v1

    .line 574
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    return v14

    .line 560
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 563
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->isProcessRealFrozen(I)Z

    move-result v1

    .line 564
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    return v14

    .line 550
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 553
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->isProcessFrozen(I)Z

    move-result v1

    .line 554
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    return v14

    .line 541
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 544
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteRemoveWindow(I)V

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    return v14

    .line 528
    .end local v0    # "_arg0":I
    :pswitch_50
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 532
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 534
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->noteAddWindow(IILjava/lang/String;)V

    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    return v14

    .line 515
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_51
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 519
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 522
    .local v2, "_arg2":I
    invoke-virtual {v9, v0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->noteWindowStateChange(III)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    return v14

    .line 506
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_52
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 509
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteKeyguardStateChanged(I)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    return v14

    .line 497
    .end local v0    # "_arg0":I
    :pswitch_53
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 500
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteScreenStateChanged(I)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    return v14

    .line 490
    .end local v0    # "_arg0":I
    :pswitch_54
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->noteProcessStatusChanged()V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    return v14

    .line 469
    :pswitch_55
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 473
    .local v8, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 475
    .local v15, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 477
    .local v16, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    .line 479
    .local v17, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 481
    .local v18, "_arg4":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v19

    .line 483
    .local v19, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v20

    .line 484
    .local v20, "_arg6":[Z
    move-object v0, v9

    move-object v1, v8

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lnubia/os/IApplicationManager$Stub;->noteProcessStatus([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    return v14

    .line 460
    .end local v8    # "_arg0":[I
    .end local v15    # "_arg1":[I
    .end local v16    # "_arg2":[Ljava/lang/String;
    .end local v17    # "_arg3":[I
    .end local v18    # "_arg4":[I
    .end local v19    # "_arg5":[Ljava/lang/String;
    .end local v20    # "_arg6":[Z
    :pswitch_56
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->addPackageToPreLaunchBlackList(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    return v14

    .line 452
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_57
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->getCurrentUserLearningProcess()Ljava/util/List;

    move-result-object v0

    .line 454
    .local v0, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 456
    return v14

    .line 442
    .end local v0    # "_result":Ljava/util/List;
    :pswitch_58
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 445
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 446
    .local v1, "_arg0":Ljava/util/List;
    invoke-virtual {v9, v1}, Lnubia/os/IApplicationManager$Stub;->setAppLearningProcessList(Ljava/util/List;)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    return v14

    .line 435
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/List;
    :pswitch_59
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->noteGameModeIsStopped()V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    return v14

    .line 428
    :pswitch_5a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->noteGameModeIsRunning()V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    return v14

    .line 411
    :pswitch_5b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 415
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 419
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v4, v14

    goto :goto_a

    :cond_12
    move v4, v1

    .line 421
    .local v4, "_arg3":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v5, v14

    goto :goto_b

    :cond_13
    move v5, v1

    .line 422
    .local v5, "_arg4":Z
    :goto_b
    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lnubia/os/IApplicationManager$Stub;->noteProcessNeedPreLaunch(Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    return v14

    .line 403
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :pswitch_5c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->getAppLearningRecommendCallback()Lnubia/os/IAppLearningRecommendCallback;

    move-result-object v1

    .line 405
    .local v1, "_result":Lnubia/os/IAppLearningRecommendCallback;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v1, :cond_14

    invoke-interface {v1}, Lnubia/os/IAppLearningRecommendCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_14
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 407
    return v14

    .line 395
    .end local v1    # "_result":Lnubia/os/IAppLearningRecommendCallback;
    :pswitch_5d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->getAppLearningCallback()Lnubia/os/IAppLearningCallback;

    move-result-object v1

    .line 397
    .local v1, "_result":Lnubia/os/IAppLearningCallback;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v1, :cond_15

    invoke-interface {v1}, Lnubia/os/IAppLearningCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_15
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 399
    return v14

    .line 386
    .end local v1    # "_result":Lnubia/os/IAppLearningCallback;
    :pswitch_5e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IAppLearningCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IAppLearningCallback;

    move-result-object v0

    .line 389
    .local v0, "_arg0":Lnubia/os/IAppLearningCallback;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->setAppLearningCallback(Lnubia/os/IAppLearningCallback;)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    return v14

    .line 377
    .end local v0    # "_arg0":Lnubia/os/IAppLearningCallback;
    :pswitch_5f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IFreezeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IFreezeCallback;

    move-result-object v0

    .line 380
    .local v0, "_arg0":Lnubia/os/IFreezeCallback;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->setFreezeCallback(Lnubia/os/IFreezeCallback;)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    return v14

    .line 369
    .end local v0    # "_arg0":Lnubia/os/IFreezeCallback;
    :pswitch_60
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->getNetAvailable()Z

    move-result v0

    .line 371
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    return v14

    .line 357
    .end local v0    # "_result":Z
    :pswitch_61
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->isControlledByMotionDoze(ILjava/lang/String;)Z

    move-result v2

    .line 363
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    return v14

    .line 348
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_62
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 351
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    return v14

    .line 333
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_63
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 337
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 339
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 341
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 342
    .local v15, "_arg3":J
    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lnubia/os/IApplicationManager$Stub;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    return v14

    .line 321
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":J
    :pswitch_64
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->allowBackgroundSyncToRun(ILjava/lang/String;)Z

    move-result v2

    .line 327
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    return v14

    .line 312
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_65
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move v1, v14

    nop

    :cond_16
    move v0, v1

    .line 315
    .local v0, "_arg0":Z
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteStatusBarExpanding(Z)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    return v14

    .line 303
    .end local v0    # "_arg0":Z
    :pswitch_66
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v1, v14

    nop

    :cond_17
    move v0, v1

    .line 306
    .restart local v0    # "_arg0":Z
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteAppTransitionAnimation(Z)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    return v14

    .line 288
    .end local v0    # "_arg0":Z
    :pswitch_67
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 292
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lnubia/os/IApplicationManager$Stub;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    return v14

    .line 279
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_68
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteActivityStackRemoved(I)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    return v14

    .line 264
    .end local v0    # "_arg0":I
    :pswitch_69
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 270
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 273
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lnubia/os/IApplicationManager$Stub;->noteRemovingProcess(IILjava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    return v14

    .line 249
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_6a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 258
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lnubia/os/IApplicationManager$Stub;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    return v14

    .line 234
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_6b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 240
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 243
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lnubia/os/IApplicationManager$Stub;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    return v14

    .line 213
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_6c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 217
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 219
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 221
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 223
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v5, v14

    goto :goto_c

    :cond_18
    move v5, v1

    .line 225
    .restart local v5    # "_arg4":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 227
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 228
    .local v19, "_arg6":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lnubia/os/IApplicationManager$Stub;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    return v14

    .line 204
    .end local v5    # "_arg4":Z
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":Ljava/lang/String;
    :pswitch_6d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteFocusChangedLw(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    return v14

    .line 195
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteResumedActivity(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    return v14

    .line 174
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 178
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 180
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 182
    .restart local v16    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 184
    .restart local v17    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    move v5, v14

    goto :goto_d

    :cond_19
    move v5, v1

    .line 186
    .restart local v5    # "_arg4":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 188
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 189
    .restart local v19    # "_arg6":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lnubia/os/IApplicationManager$Stub;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    return v14

    .line 165
    .end local v5    # "_arg4":Z
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":Ljava/lang/String;
    :pswitch_70
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v1, v14

    nop

    :cond_1a
    move v0, v1

    .line 168
    .local v0, "_arg0":Z
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->noteStartCtsTest(Z)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    return v14

    .line 158
    .end local v0    # "_arg0":Z
    :pswitch_71
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->noteNaviGestureFinalization()V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    return v14

    .line 151
    :pswitch_72
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lnubia/os/IApplicationManager$Stub;->noteNaviGestureStarted()V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    return v14

    .line 136
    :pswitch_73
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 139
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .local v0, "_arg0":Landroid/app/PendingIntent;
    goto :goto_e

    .line 142
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :cond_1b
    nop

    .line 144
    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    :goto_e
    invoke-virtual {v9, v0}, Lnubia/os/IApplicationManager$Stub;->allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z

    move-result v1

    .line 145
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return v14

    .line 124
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_result":Z
    :pswitch_74
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 130
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return v14

    .line 112
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_75
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->allowAlarm(ILjava/lang/String;)Z

    move-result v2

    .line 118
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v14

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_76
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->allowFreezeAppWakeupAlarm(ILjava/lang/String;)Z

    move-result v2

    .line 106
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return v14

    .line 88
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_77
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->allowWakeupAlarm(ILjava/lang/String;)Z

    move-result v2

    .line 94
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v14

    .line 76
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_78
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->allowPartialWakelock(ILjava/lang/String;)Z

    move-result v2

    .line 82
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v14

    .line 64
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_79
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->allowFullWakeLockScreenOff(ILjava/lang/String;)Z

    move-result v2

    .line 70
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return v14

    .line 52
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_7a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lnubia/os/IApplicationManager$Stub;->isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 58
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v14

    .line 47
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :cond_1c
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
