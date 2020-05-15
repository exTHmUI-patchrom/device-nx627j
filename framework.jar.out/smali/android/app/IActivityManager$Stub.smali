.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "IActivityManager.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final TRANSACTION_activityDestroyed:I = 0x3a

.field static final TRANSACTION_activityIdle:I = 0xf

.field static final TRANSACTION_activityPaused:I = 0x10

.field static final TRANSACTION_activityRelaunched:I = 0x104

.field static final TRANSACTION_activityResumed:I = 0x23

.field static final TRANSACTION_activitySlept:I = 0x7a

.field static final TRANSACTION_activityStopped:I = 0x11

.field static final TRANSACTION_addAppTask:I = 0xd1

.field static final TRANSACTION_addInstrumentationResults:I = 0x28

.field static final TRANSACTION_addPackageDependency:I = 0x5e

.field static final TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x134

.field static final TRANSACTION_appNotRespondingViaProvider:I = 0xb9

.field static final TRANSACTION_attachApplication:I = 0xe

.field static final TRANSACTION_backgroundWhitelistUid:I = 0x12d

.field static final TRANSACTION_backupAgentCreated:I = 0x5a

.field static final TRANSACTION_bindBackupAgent:I = 0x59

.field static final TRANSACTION_bindService:I = 0x20

.field static final TRANSACTION_bootAnimationComplete:I = 0xd5

.field static final TRANSACTION_broadcastIntent:I = 0xb

.field static final TRANSACTION_cancelIntentSender:I = 0x3c

.field static final TRANSACTION_cancelRecentsAnimation:I = 0xc6

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x126

.field static final TRANSACTION_checkGrantUriPermission:I = 0x76

.field static final TRANSACTION_checkPermission:I = 0x31

.field static final TRANSACTION_checkPermissionWithToken:I = 0xda

.field static final TRANSACTION_checkUriPermission:I = 0x32

.field static final TRANSACTION_clearApplicationUserData:I = 0x4d

.field static final TRANSACTION_clearGrantedUriPermissions:I = 0x10a

.field static final TRANSACTION_clearPendingBackup:I = 0xa1

.field static final TRANSACTION_closeSystemDialogs:I = 0x60

.field static final TRANSACTION_convertFromTranslucent:I = 0xb0

.field static final TRANSACTION_convertToTranslucent:I = 0xb1

.field static final TRANSACTION_crashApplication:I = 0x71

.field static final TRANSACTION_createStackOnDisplay:I = 0xde

.field static final TRANSACTION_dismissKeyguard:I = 0x124

.field static final TRANSACTION_dismissPip:I = 0xf8

.field static final TRANSACTION_dismissSplitScreenMode:I = 0xf7

.field static final TRANSACTION_dumpHeap:I = 0x77

.field static final TRANSACTION_dumpHeapFinished:I = 0xe4

.field static final TRANSACTION_dumpMemLeakInfo:I = 0x13b

.field static final TRANSACTION_dumpSystrace:I = 0x11f

.field static final TRANSACTION_dumpSystraceWhenStuck:I = 0x140

.field static final TRANSACTION_enterPictureInPictureMode:I = 0x101

.field static final TRANSACTION_enterSafeMode:I = 0x40

.field static final TRANSACTION_exitFreeformMode:I = 0xf4

.field static final TRANSACTION_fileExist:I = 0x143

.field static final TRANSACTION_finishActivity:I = 0x8

.field static final TRANSACTION_finishActivityAffinity:I = 0x93

.field static final TRANSACTION_finishFocusedStackActivity:I = 0x149

.field static final TRANSACTION_finishHeavyWeightApp:I = 0x6c

.field static final TRANSACTION_finishInstrumentation:I = 0x29

.field static final TRANSACTION_finishReceiver:I = 0xd

.field static final TRANSACTION_finishSubActivity:I = 0x1c

.field static final TRANSACTION_finishVoiceTask:I = 0xcc

.field static final TRANSACTION_forceStopPackage:I = 0x4e

.field static final TRANSACTION_getActivityClassForToken:I = 0x2d

.field static final TRANSACTION_getActivityDisplayId:I = 0xbb

.field static final TRANSACTION_getActivityOptions:I = 0xc8

.field static final TRANSACTION_getAllProcMemoryInfo:I = 0x141

.field static final TRANSACTION_getAllStackInfos:I = 0xac

.field static final TRANSACTION_getAppTaskThumbnailSize:I = 0xd2

.field static final TRANSACTION_getAppTasks:I = 0xc9

.field static final TRANSACTION_getAssistContextExtras:I = 0xa3

.field static final TRANSACTION_getCallingActivity:I = 0x13

.field static final TRANSACTION_getCallingPackage:I = 0x12

.field static final TRANSACTION_getConfiguration:I = 0x2a

.field static final TRANSACTION_getContentProvider:I = 0x19

.field static final TRANSACTION_getContentProviderExternal:I = 0x8b

.field static final TRANSACTION_getCurrentUser:I = 0x8f

.field static final TRANSACTION_getDeviceConfigurationInfo:I = 0x53

.field static final TRANSACTION_getFilteredTasks:I = 0x15

.field static final TRANSACTION_getFocusedStackInfo:I = 0xae

.field static final TRANSACTION_getFocusedStackResumedIntentAction:I = 0x13f

.field static final TRANSACTION_getFocusedStackResumedPkg:I = 0x13e

.field static final TRANSACTION_getFocusedWindowMode:I = 0xd6

.field static final TRANSACTION_getFrontActivityScreenCompatMode:I = 0x7b

.field static final TRANSACTION_getGrantedUriPermissions:I = 0x109

.field static final TRANSACTION_getIntentForIntentSender:I = 0xa2

.field static final TRANSACTION_getIntentSender:I = 0x3b

.field static final TRANSACTION_getLastResumedActivityUserId:I = 0x12c

.field static final TRANSACTION_getLaunchedFromPackage:I = 0xa5

.field static final TRANSACTION_getLaunchedFromUid:I = 0x94

.field static final TRANSACTION_getLockTaskModeState:I = 0xe2

.field static final TRANSACTION_getMaxNumPictureInPictureActions:I = 0x103

.field static final TRANSACTION_getMemoryInfo:I = 0x4b

.field static final TRANSACTION_getMemoryTrimLevel:I = 0x115

.field static final TRANSACTION_getMyMemoryState:I = 0x8d

.field static final TRANSACTION_getPackageAskScreenCompat:I = 0x7f

.field static final TRANSACTION_getPackageForIntentSender:I = 0x3d

.field static final TRANSACTION_getPackageForToken:I = 0x2e

.field static final TRANSACTION_getPackageProcessState:I = 0xe9

.field static final TRANSACTION_getPackageScreenCompatMode:I = 0x7d

.field static final TRANSACTION_getPersistedUriPermissions:I = 0xb8

.field static final TRANSACTION_getProcessLimit:I = 0x30

.field static final TRANSACTION_getProcessMemoryInfo:I = 0x61

.field static final TRANSACTION_getProcessPss:I = 0x88

.field static final TRANSACTION_getProcessesAdjs:I = 0x135

.field static final TRANSACTION_getProcessesInErrorState:I = 0x4c

.field static final TRANSACTION_getProviderMimeType:I = 0x72

.field static final TRANSACTION_getRecentTasks:I = 0x38

.field static final TRANSACTION_getRequestedOrientation:I = 0x46

.field static final TRANSACTION_getRunningAppProcesses:I = 0x52

.field static final TRANSACTION_getRunningAppProcessesForPid:I = 0x44

.field static final TRANSACTION_getRunningExternalApplications:I = 0x6b

.field static final TRANSACTION_getRunningServiceControlPanel:I = 0x1d

.field static final TRANSACTION_getRunningUserIds:I = 0x9c

.field static final TRANSACTION_getServices:I = 0x50

.field static final TRANSACTION_getStackInfo:I = 0xaf

.field static final TRANSACTION_getTagForIntentSender:I = 0xbd

.field static final TRANSACTION_getTaskBounds:I = 0xba

.field static final TRANSACTION_getTaskDescription:I = 0x51

.field static final TRANSACTION_getTaskDescriptionIcon:I = 0xd7

.field static final TRANSACTION_getTaskForActivity:I = 0x18

.field static final TRANSACTION_getTaskSnapshot:I = 0x127

.field static final TRANSACTION_getTasks:I = 0x14

.field static final TRANSACTION_getUidForIntentSender:I = 0x5c

.field static final TRANSACTION_getUidProcessState:I = 0xed

.field static final TRANSACTION_getUriPermissionOwnerForActivity:I = 0x105

.field static final TRANSACTION_grantUriPermission:I = 0x33

.field static final TRANSACTION_grantUriPermissionFromOwner:I = 0x74

.field static final TRANSACTION_handleApplicationCrash:I = 0x5

.field static final TRANSACTION_handleApplicationStrictModeViolation:I = 0x6d

.field static final TRANSACTION_handleApplicationWtf:I = 0x65

.field static final TRANSACTION_handleIncomingUser:I = 0x5d

.field static final TRANSACTION_hang:I = 0xa8

.field static final TRANSACTION_inputDispatchingTimedOut:I = 0xa0

.field static final TRANSACTION_isAppForeground:I = 0x10b

.field static final TRANSACTION_isAppInLockedStatus:I = 0x139

.field static final TRANSACTION_isAppStartModeDisabled:I = 0xfc

.field static final TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0xee

.field static final TRANSACTION_isBackgroundRestricted:I = 0x11c

.field static final TRANSACTION_isImmersive:I = 0x6e

.field static final TRANSACTION_isInLockTaskMode:I = 0xc1

.field static final TRANSACTION_isInMultiWindowMode:I = 0xfe

.field static final TRANSACTION_isInPictureInPictureMode:I = 0xff

.field static final TRANSACTION_isIntentSenderAForegroundService:I = 0x97

.field static final TRANSACTION_isIntentSenderAnActivity:I = 0x96

.field static final TRANSACTION_isIntentSenderTargetedToPackage:I = 0x86

.field static final TRANSACTION_isRootVoiceInteraction:I = 0xf0

.field static final TRANSACTION_isTopActivityImmersive:I = 0x70

.field static final TRANSACTION_isTopOfTask:I = 0xcd

.field static final TRANSACTION_isUidActive:I = 0x4

.field static final TRANSACTION_isUserAMonkey:I = 0x67

.field static final TRANSACTION_isUserRunning:I = 0x79

.field static final TRANSACTION_isVrModePackageEnabled:I = 0x117

.field static final TRANSACTION_keyguardGoingAway:I = 0xec

.field static final TRANSACTION_killAllBackgroundProcesses:I = 0x8a

.field static final TRANSACTION_killApplication:I = 0x5f

.field static final TRANSACTION_killApplicationProcess:I = 0x62

.field static final TRANSACTION_killBackgroundProcesses:I = 0x66

.field static final TRANSACTION_killPackageDependents:I = 0x100

.field static final TRANSACTION_killPids:I = 0x4f

.field static final TRANSACTION_killProcess:I = 0x142

.field static final TRANSACTION_killProcessesBelowForeground:I = 0x8e

.field static final TRANSACTION_killUid:I = 0xa6

.field static final TRANSACTION_launchAssistIntent:I = 0xd8

.field static final TRANSACTION_makePackageIdle:I = 0x114

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x4a

.field static final TRANSACTION_moveStackToDisplay:I = 0x122

.field static final TRANSACTION_moveTaskBackwards:I = 0x17

.field static final TRANSACTION_moveTaskToFront:I = 0x16

.field static final TRANSACTION_moveTaskToStack:I = 0xaa

.field static final TRANSACTION_moveTasksToFullscreenStack:I = 0xfa

.field static final TRANSACTION_moveTopActivityToPinnedStack:I = 0xfb

.field static final TRANSACTION_navigateUpTo:I = 0x91

.field static final TRANSACTION_newUriPermissionOwner:I = 0x73

.field static final TRANSACTION_noteAlarmFinish:I = 0xe8

.field static final TRANSACTION_noteAlarmStart:I = 0xe7

.field static final TRANSACTION_noteWakeupAlarm:I = 0x42

.field static final TRANSACTION_notifyActivityDrawn:I = 0xb2

.field static final TRANSACTION_notifyCleartextNetwork:I = 0xdd

.field static final TRANSACTION_notifyEnterAnimationComplete:I = 0xcf

.field static final TRANSACTION_notifyGameCallActivityStart:I = 0x13a

.field static final TRANSACTION_notifyLaunchTaskBehindComplete:I = 0xce

.field static final TRANSACTION_notifyLockedProfile:I = 0x118

.field static final TRANSACTION_notifyPinnedStackAnimationEnded:I = 0x110

.field static final TRANSACTION_notifyPinnedStackAnimationStarted:I = 0x10f

.field static final TRANSACTION_notifyUnLockApp:I = 0x138

.field static final TRANSACTION_notifyUnLockAppById:I = 0x137

.field static final TRANSACTION_notifyUnLockAppWithTimeLock:I = 0x13d

.field static final TRANSACTION_notifyUnLockAppWithTimeLockById:I = 0x13c

.field static final TRANSACTION_openContentUri:I = 0x1

.field static final TRANSACTION_overridePendingTransition:I = 0x64

.field static final TRANSACTION_peekService:I = 0x54

.field static final TRANSACTION_performIdleMaintenance:I = 0xb5

.field static final TRANSACTION_positionTaskInStack:I = 0xf3

.field static final TRANSACTION_profileControl:I = 0x55

.field static final TRANSACTION_publishContentProviders:I = 0x1a

.field static final TRANSACTION_publishService:I = 0x22

.field static final TRANSACTION_refContentProvider:I = 0x1b

.field static final TRANSACTION_registerIntentSenderCancelListener:I = 0x3e

.field static final TRANSACTION_registerProcessObserver:I = 0x84

.field static final TRANSACTION_registerReceiver:I = 0x9

.field static final TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x133

.field static final TRANSACTION_registerRemoteAnimations:I = 0x132

.field static final TRANSACTION_registerTaskStackListener:I = 0xdb

.field static final TRANSACTION_registerUidObserver:I = 0x2

.field static final TRANSACTION_registerUserSwitchObserver:I = 0x9a

.field static final TRANSACTION_releaseActivityInstance:I = 0xd3

.field static final TRANSACTION_releasePersistableUriPermission:I = 0xb7

.field static final TRANSACTION_releaseSomeActivities:I = 0xd4

.field static final TRANSACTION_removeContentProvider:I = 0x43

.field static final TRANSACTION_removeContentProviderExternal:I = 0x8c

.field static final TRANSACTION_removeStack:I = 0x111

.field static final TRANSACTION_removeStacksInWindowingModes:I = 0x112

.field static final TRANSACTION_removeStacksWithActivityTypes:I = 0x113

.field static final TRANSACTION_removeTask:I = 0x83

.field static final TRANSACTION_reportActivityFullyDrawn:I = 0xb3

.field static final TRANSACTION_reportAssistContextExtras:I = 0xa4

.field static final TRANSACTION_reportSizeConfigurations:I = 0xf5

.field static final TRANSACTION_requestAssistContextExtras:I = 0xe0

.field static final TRANSACTION_requestAutofillData:I = 0x123

.field static final TRANSACTION_requestBugReport:I = 0x9d

.field static final TRANSACTION_requestTelephonyBugReport:I = 0x9e

.field static final TRANSACTION_requestWifiBugReport:I = 0x9f

.field static final TRANSACTION_resizeDockedStack:I = 0x106

.field static final TRANSACTION_resizePinnedStack:I = 0x116

.field static final TRANSACTION_resizeStack:I = 0xab

.field static final TRANSACTION_resizeTask:I = 0xe1

.field static final TRANSACTION_restart:I = 0xb4

.field static final TRANSACTION_restartUserInBackground:I = 0x125

.field static final TRANSACTION_resumeAppSwitches:I = 0x58

.field static final TRANSACTION_revokeUriPermission:I = 0x34

.field static final TRANSACTION_revokeUriPermissionFromOwner:I = 0x75

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x128

.field static final TRANSACTION_sendIdleJobTrigger:I = 0x11a

.field static final TRANSACTION_sendIntentSender:I = 0x11b

.field static final TRANSACTION_serviceDoneExecuting:I = 0x39

.field static final TRANSACTION_setActivityController:I = 0x35

.field static final TRANSACTION_setAgentApp:I = 0x25

.field static final TRANSACTION_setAlwaysFinish:I = 0x26

.field static final TRANSACTION_setDebugApp:I = 0x24

.field static final TRANSACTION_setDelayBroadCastState:I = 0x144

.field static final TRANSACTION_setDisablePreviewScreenshots:I = 0x12b

.field static final TRANSACTION_setDummyTranslucent:I = 0x136

.field static final TRANSACTION_setDumpHeapDebugLimit:I = 0xe3

.field static final TRANSACTION_setFocusedStack:I = 0xad

.field static final TRANSACTION_setFocusedTask:I = 0x82

.field static final TRANSACTION_setFrontActivityScreenCompatMode:I = 0x7c

.field static final TRANSACTION_setHasTopUi:I = 0x120

.field static final TRANSACTION_setImmersive:I = 0x6f

.field static final TRANSACTION_setLockScreenShown:I = 0x92

.field static final TRANSACTION_setPackageAskScreenCompat:I = 0x80

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x7e

.field static final TRANSACTION_setPersistentVrThread:I = 0x129

.field static final TRANSACTION_setPictureInPictureParams:I = 0x102

.field static final TRANSACTION_setPreLoadingRenderThreadState:I = 0x145

.field static final TRANSACTION_setPreLoadingWebViewState:I = 0x146

.field static final TRANSACTION_setPreStartState:I = 0x147

.field static final TRANSACTION_setProcessImportant:I = 0x48

.field static final TRANSACTION_setProcessLimit:I = 0x2f

.field static final TRANSACTION_setProcessMemoryTrimLevel:I = 0xbc

.field static final TRANSACTION_setRenderThread:I = 0x11e

.field static final TRANSACTION_setRequestedOrientation:I = 0x45

.field static final TRANSACTION_setServiceForeground:I = 0x49

.field static final TRANSACTION_setShowWhenLocked:I = 0x12f

.field static final TRANSACTION_setSplitScreenResizing:I = 0x107

.field static final TRANSACTION_setTaskDescription:I = 0xc2

.field static final TRANSACTION_setTaskResizeable:I = 0xdf

.field static final TRANSACTION_setTaskWindowingMode:I = 0xa9

.field static final TRANSACTION_setTaskWindowingModeSplitScreenPrimary:I = 0xf6

.field static final TRANSACTION_setTurnScreenOn:I = 0x130

.field static final TRANSACTION_setTwoLevelState:I = 0x148

.field static final TRANSACTION_setUserIsMonkey:I = 0xa7

.field static final TRANSACTION_setVoiceKeepAwake:I = 0xe5

.field static final TRANSACTION_setVrMode:I = 0x108

.field static final TRANSACTION_setVrThread:I = 0x11d

.field static final TRANSACTION_shouldUpRecreateTask:I = 0x90

.field static final TRANSACTION_showAssistFromActivity:I = 0xef

.field static final TRANSACTION_showBootMessage:I = 0x89

.field static final TRANSACTION_showLockTaskEscapeMessage:I = 0xea

.field static final TRANSACTION_showWaitingForDebugger:I = 0x36

.field static final TRANSACTION_shutdown:I = 0x56

.field static final TRANSACTION_signalPersistentProcesses:I = 0x37

.field static final TRANSACTION_startActivities:I = 0x78

.field static final TRANSACTION_startActivity:I = 0x6

.field static final TRANSACTION_startActivityAndWait:I = 0x68

.field static final TRANSACTION_startActivityAsCaller:I = 0xd0

.field static final TRANSACTION_startActivityAsUser:I = 0x98

.field static final TRANSACTION_startActivityFromRecents:I = 0xc7

.field static final TRANSACTION_startActivityIntentSender:I = 0x63

.field static final TRANSACTION_startActivityWithConfig:I = 0x6a

.field static final TRANSACTION_startAssistantActivity:I = 0xc4

.field static final TRANSACTION_startBinderTracking:I = 0xf1

.field static final TRANSACTION_startConfirmDeviceCredentialIntent:I = 0x119

.field static final TRANSACTION_startInPlaceAnimationOnFrontMostApplication:I = 0xd9

.field static final TRANSACTION_startInstrumentation:I = 0x27

.field static final TRANSACTION_startLocalVoiceInteraction:I = 0x10c

.field static final TRANSACTION_startLockTaskModeByToken:I = 0xbf

.field static final TRANSACTION_startNextMatchingActivity:I = 0x41

.field static final TRANSACTION_startRecentsActivity:I = 0xc5

.field static final TRANSACTION_startService:I = 0x1e

.field static final TRANSACTION_startSystemLockTaskMode:I = 0xca

.field static final TRANSACTION_startUserInBackground:I = 0xbe

.field static final TRANSACTION_startUserInBackgroundWithListener:I = 0x131

.field static final TRANSACTION_startVoiceActivity:I = 0xc3

.field static final TRANSACTION_stopAppSwitches:I = 0x57

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0xf2

.field static final TRANSACTION_stopLocalVoiceInteraction:I = 0x10d

.field static final TRANSACTION_stopLockTaskModeByToken:I = 0xc0

.field static final TRANSACTION_stopService:I = 0x1f

.field static final TRANSACTION_stopServiceToken:I = 0x2c

.field static final TRANSACTION_stopSystemLockTaskMode:I = 0xcb

.field static final TRANSACTION_stopUser:I = 0x99

.field static final TRANSACTION_supportsLocalVoiceInteraction:I = 0x10e

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0xf9

.field static final TRANSACTION_switchUser:I = 0x81

.field static final TRANSACTION_takePersistableUriPermission:I = 0xb6

.field static final TRANSACTION_unbindBackupAgent:I = 0x5b

.field static final TRANSACTION_unbindFinished:I = 0x47

.field static final TRANSACTION_unbindService:I = 0x21

.field static final TRANSACTION_unbroadcastIntent:I = 0xc

.field static final TRANSACTION_unhandledBack:I = 0x7

.field static final TRANSACTION_unlockUser:I = 0xfd

.field static final TRANSACTION_unregisterIntentSenderCancelListener:I = 0x3f

.field static final TRANSACTION_unregisterProcessObserver:I = 0x85

.field static final TRANSACTION_unregisterReceiver:I = 0xa

.field static final TRANSACTION_unregisterTaskStackListener:I = 0xdc

.field static final TRANSACTION_unregisterUidObserver:I = 0x3

.field static final TRANSACTION_unregisterUserSwitchObserver:I = 0x9b

.field static final TRANSACTION_unstableProviderDied:I = 0x95

.field static final TRANSACTION_updateConfiguration:I = 0x2b

.field static final TRANSACTION_updateDeviceOwner:I = 0xeb

.field static final TRANSACTION_updateDisplayOverrideConfiguration:I = 0x121

.field static final TRANSACTION_updateLockTaskFeatures:I = 0x12e

.field static final TRANSACTION_updateLockTaskPackages:I = 0xe6

.field static final TRANSACTION_updatePersistentConfiguration:I = 0x87

.field static final TRANSACTION_waitForNetworkStateUpdate:I = 0x12a

.field static final TRANSACTION_willActivityBeVisible:I = 0x69


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "android.app.IActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityManager;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method private onTransact$addAppTask$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11668
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11670
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 11672
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11673
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg1":Landroid/content/Intent;
    goto :goto_0

    .line 11676
    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_0
    move-object v1, v2

    .line 11679
    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 11680
    sget-object v3, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$TaskDescription;

    .local v3, "_arg2":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_1

    .line 11683
    .end local v3    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    :cond_1
    move-object v3, v2

    .line 11686
    .restart local v3    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 11687
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .local v2, "_arg3":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 11690
    .end local v2    # "_arg3":Landroid/graphics/Bitmap;
    :cond_2
    nop

    .line 11692
    .restart local v2    # "_arg3":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/app/IActivityManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v4

    .line 11693
    .local v4, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11694
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 11695
    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$bindService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 17
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10564
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10566
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10568
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 10570
    .local v11, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 10571
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 10574
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_0
    move-object v5, v2

    goto :goto_1

    .end local v5    # "_arg2":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 10577
    .restart local v5    # "_arg2":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10579
    .local v12, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v13

    .line 10581
    .local v13, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10583
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 10585
    .local v15, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 10586
    .local v16, "_arg7":I
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v11

    move-object v6, v12

    move-object v7, v13

    move v8, v14

    move-object v9, v15

    move/from16 v10, v16

    invoke-virtual/range {v2 .. v10}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v2

    .line 10587
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10588
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10589
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$broadcastIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 24
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10397
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10399
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10401
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10402
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 10405
    .local v2, "_arg1":Landroid/content/Intent;
    move-object v4, v2

    goto :goto_0

    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_0
    move-object v4, v3

    .line 10408
    .local v4, "_arg1":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10410
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v17

    .line 10412
    .local v17, "_arg3":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 10414
    .local v18, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10416
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10417
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10420
    .local v2, "_arg6":Landroid/os/Bundle;
    move-object v9, v2

    goto :goto_1

    .end local v2    # "_arg6":Landroid/os/Bundle;
    :cond_1
    move-object v9, v3

    .line 10423
    .local v9, "_arg6":Landroid/os/Bundle;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    .line 10425
    .local v20, "_arg7":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 10427
    .local v21, "_arg8":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 10428
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10431
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 10434
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/16 v22, 0x1

    if-eqz v2, :cond_3

    move/from16 v13, v22

    goto :goto_3

    :cond_3
    move v13, v3

    .line 10436
    .local v13, "_arg10":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v14, v22

    goto :goto_4

    :cond_4
    move v14, v3

    .line 10438
    .local v14, "_arg11":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 10439
    .local v23, "_arg12":I
    move-object/from16 v2, p0

    move-object v3, v1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v10, v20

    move/from16 v11, v21

    move/from16 v15, v23

    invoke-virtual/range {v2 .. v15}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v2

    .line 10440
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10441
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10442
    return v22
.end method

.method private onTransact$checkGrantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11204
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11208
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 11210
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11211
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 11214
    .local v4, "_arg2":Landroid/net/Uri;
    :goto_0
    move-object v4, v1

    goto :goto_1

    .end local v4    # "_arg2":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 11217
    .restart local v4    # "_arg2":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11219
    .local v8, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11220
    .local v9, "_arg4":I
    move-object v1, p0

    move v2, v0

    move-object v3, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v1

    .line 11221
    .local v1, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11222
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11223
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$checkPermissionWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11736
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11738
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 11740
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11742
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11744
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 11745
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v4

    .line 11746
    .local v4, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11747
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 11748
    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$checkUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 12
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10645
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 10648
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 10651
    .local v2, "_arg0":Landroid/net/Uri;
    :goto_0
    move-object v2, v0

    goto :goto_1

    .end local v2    # "_arg0":Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 10654
    .restart local v2    # "_arg0":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 10656
    .local v0, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10658
    .local v8, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10660
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10662
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 10663
    .local v11, "_arg5":Landroid/os/IBinder;
    move-object v1, p0

    move v3, v0

    move v4, v8

    move v5, v9

    move v6, v10

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v1

    .line 10664
    .local v1, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10665
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10666
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10852
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10854
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 10856
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10858
    .local v1, "_arg1":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v3

    .line 10860
    .local v3, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 10861
    .local v4, "_arg3":I
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v5

    .line 10862
    .local v5, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10863
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10864
    return v2
.end method

.method private onTransact$crashApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11136
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11140
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11142
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 11144
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11146
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11147
    .local v10, "_arg4":Ljava/lang/String;
    move-object v1, p0

    move v2, v0

    move v3, v7

    move-object v4, v8

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->crashApplication(IILjava/lang/String;ILjava/lang/String;)V

    .line 11148
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11149
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$dumpHeap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 12
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11228
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 11232
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11234
    .local v9, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v2

    .line 11236
    .local v4, "_arg2":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v5, v10

    goto :goto_1

    :cond_1
    move v5, v2

    .line 11238
    .local v5, "_arg3":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v6, v10

    goto :goto_2

    :cond_2
    move v6, v2

    .line 11240
    .local v6, "_arg4":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 11242
    .local v11, "_arg5":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 11243
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 11246
    .local v8, "_arg6":Landroid/os/ParcelFileDescriptor;
    :goto_3
    move-object v8, v1

    goto :goto_4

    .end local v8    # "_arg6":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 11248
    .restart local v8    # "_arg6":Landroid/os/ParcelFileDescriptor;
    :goto_4
    move-object v1, p0

    move-object v2, v0

    move v3, v9

    move-object v7, v11

    invoke-virtual/range {v1 .. v8}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v1

    .line 11249
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11250
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11251
    return v10
.end method

.method private onTransact$finishReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 12
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10448
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10450
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 10452
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10454
    .local v8, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 10456
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10457
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 10460
    .local v5, "_arg3":Landroid/os/Bundle;
    :goto_0
    move-object v5, v1

    goto :goto_1

    .end local v5    # "_arg3":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10463
    .restart local v5    # "_arg3":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    move v6, v10

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    move v6, v1

    .line 10465
    .local v6, "_arg4":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 10466
    .local v11, "_arg5":I
    move-object v1, p0

    move-object v2, v0

    move v3, v8

    move-object v4, v9

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 10467
    return v10
.end method

.method private onTransact$getContentProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10483
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10485
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 10487
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 10489
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 10491
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 10492
    .local v3, "_arg3":Z
    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v6

    .line 10493
    .local v6, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10494
    if-eqz v6, :cond_1

    .line 10495
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10496
    invoke-virtual {v6, p2, v5}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 10499
    :cond_1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10501
    :goto_1
    return v5
.end method

.method private onTransact$getIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 22
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10737
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10739
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10741
    .local v1, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 10743
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 10745
    .local v14, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 10747
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 10749
    .local v16, "_arg4":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [Landroid/content/Intent;

    .line 10751
    .local v17, "_arg5":[Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 10753
    .local v18, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 10755
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/16 v20, 0x0

    if-eqz v2, :cond_0

    .line 10756
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10759
    .local v2, "_arg8":Landroid/os/Bundle;
    move-object v11, v2

    goto :goto_0

    .end local v2    # "_arg8":Landroid/os/Bundle;
    :cond_0
    move-object/from16 v11, v20

    .line 10762
    .local v11, "_arg8":Landroid/os/Bundle;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 10763
    .local v21, "_arg9":I
    move-object/from16 v2, p0

    move v3, v1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v12, v21

    invoke-virtual/range {v2 .. v12}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v2

    .line 10764
    .local v2, "_result":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10765
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    :goto_1
    move-object/from16 v3, v20

    goto :goto_2

    :cond_1
    goto :goto_1

    :goto_2
    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10766
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$grantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10671
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10673
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 10675
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 10677
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10678
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 10681
    .local v4, "_arg2":Landroid/net/Uri;
    :goto_0
    move-object v4, v1

    goto :goto_1

    .end local v4    # "_arg2":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10684
    .restart local v4    # "_arg2":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10686
    .local v8, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10687
    .local v9, "_arg4":I
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 10688
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10689
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$grantUriPermissionFromOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11156
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11158
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 11160
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11162
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 11164
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 11165
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 11168
    .local v6, "_arg3":Landroid/net/Uri;
    :goto_0
    move-object v6, v2

    goto :goto_1

    .end local v6    # "_arg3":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 11171
    .restart local v6    # "_arg3":Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11173
    .local v12, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 11175
    .local v13, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 11176
    .local v14, "_arg6":I
    move-object v2, p0

    move-object v3, v1

    move v4, v10

    move-object v5, v11

    move v7, v12

    move v8, v13

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/app/IActivityManager$Stub;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 11177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11178
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$handleApplicationWtf$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11007
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11009
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 11011
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11013
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 11015
    .local v2, "_arg2":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 11016
    sget-object v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .local v4, "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    goto :goto_1

    .line 11019
    .end local v4    # "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    :cond_1
    const/4 v4, 0x0

    .line 11021
    .restart local v4    # "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;)Z

    move-result v5

    .line 11022
    .local v5, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11023
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 11024
    return v3
.end method

.method private onTransact$handleIncomingUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10907
    const-string v0, "android.app.IActivityManager"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10909
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 10911
    .local v0, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10913
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 10915
    .local v11, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_0

    move v6, v12

    goto :goto_0

    :cond_0
    move v6, v3

    .line 10917
    .local v6, "_arg3":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v7, v12

    goto :goto_1

    :cond_1
    move v7, v3

    .line 10919
    .local v7, "_arg4":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 10921
    .local v13, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 10922
    .local v14, "_arg6":Ljava/lang/String;
    move-object v2, p0

    move v3, v0

    move v4, v10

    move v5, v11

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 10923
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10924
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10925
    return v12
.end method

.method private onTransact$killApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10931
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10933
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 10935
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10937
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 10939
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10940
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 10941
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10942
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$launchAssistIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11706
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11708
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11709
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 11712
    .local v0, "_arg0":Landroid/content/Intent;
    move-object v3, v0

    goto :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_0
    move-object v3, v1

    .line 11715
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11717
    .local v0, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 11719
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11721
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11722
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 11725
    .local v7, "_arg4":Landroid/os/Bundle;
    :goto_1
    move-object v7, v1

    goto :goto_2

    .end local v7    # "_arg4":Landroid/os/Bundle;
    :cond_1
    goto :goto_1

    .line 11727
    .restart local v7    # "_arg4":Landroid/os/Bundle;
    :goto_2
    move-object v2, p0

    move v4, v0

    move-object v5, v8

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/app/IActivityManager$Stub;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v1

    .line 11728
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11729
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11730
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$navigateUpTo$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11308
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11310
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 11312
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11313
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg1":Landroid/content/Intent;
    goto :goto_0

    .line 11316
    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_0
    move-object v1, v2

    .line 11319
    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 11321
    .local v3, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 11322
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .local v2, "_arg3":Landroid/content/Intent;
    goto :goto_1

    .line 11325
    .end local v2    # "_arg3":Landroid/content/Intent;
    :cond_1
    nop

    .line 11327
    .restart local v2    # "_arg3":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/app/IActivityManager$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v4

    .line 11328
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11329
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 11330
    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$noteAlarmFinish$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11826
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11828
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 11830
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11831
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .local v1, "_arg1":Landroid/os/WorkSource;
    goto :goto_0

    .line 11834
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_0
    const/4 v1, 0x0

    .line 11837
    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11839
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11840
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 11841
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11842
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$noteAlarmStart$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11805
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11807
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 11809
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11810
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .local v1, "_arg1":Landroid/os/WorkSource;
    goto :goto_0

    .line 11813
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_0
    const/4 v1, 0x0

    .line 11816
    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11818
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11819
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 11820
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11821
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$noteWakeupAlarm$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10777
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10779
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 10781
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10782
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 10785
    .local v3, "_arg1":Landroid/os/WorkSource;
    :goto_0
    move-object v3, v1

    goto :goto_1

    .end local v3    # "_arg1":Landroid/os/WorkSource;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10788
    .restart local v3    # "_arg1":Landroid/os/WorkSource;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 10790
    .local v7, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10792
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 10793
    .local v9, "_arg4":Ljava/lang/String;
    move-object v1, p0

    move-object v2, v0

    move v4, v7

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 10794
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10795
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$overridePendingTransition$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10991
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10993
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 10995
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 10997
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 10999
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 11000
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 11001
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11002
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$profileControl$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10876
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10878
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 10880
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 10882
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v4, v1

    .line 10884
    .local v4, "_arg2":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 10885
    sget-object v1, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfilerInfo;

    .line 10888
    .local v5, "_arg3":Landroid/app/ProfilerInfo;
    :goto_1
    move-object v5, v1

    goto :goto_2

    .end local v5    # "_arg3":Landroid/app/ProfilerInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 10891
    .restart local v5    # "_arg3":Landroid/app/ProfilerInfo;
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10892
    .local v9, "_arg4":I
    move-object v1, p0

    move-object v2, v0

    move v3, v7

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v1

    .line 10893
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10894
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10895
    return v8
.end method

.method private onTransact$registerReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10362
    move-object/from16 v1, p2

    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10364
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 10366
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10368
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v12

    .line 10370
    .local v12, "_arg2":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 10371
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 10374
    .local v7, "_arg3":Landroid/content/IntentFilter;
    :goto_0
    move-object v7, v3

    goto :goto_1

    .end local v7    # "_arg3":Landroid/content/IntentFilter;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 10377
    .restart local v7    # "_arg3":Landroid/content/IntentFilter;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 10379
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10381
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 10382
    .local v15, "_arg6":I
    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v11

    move-object v6, v12

    move-object v8, v13

    move v9, v14

    move v10, v15

    invoke-virtual/range {v3 .. v10}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v3

    .line 10383
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10384
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 10385
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10386
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 10389
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10391
    :goto_2
    return v4
.end method

.method private onTransact$releasePersistableUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11498
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 11501
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "_arg0":Landroid/net/Uri;
    goto :goto_0

    .line 11504
    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x0

    .line 11507
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11509
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11511
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 11512
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 11513
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11514
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$reportAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11398
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11400
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 11402
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11403
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 11406
    .local v1, "_arg1":Landroid/os/Bundle;
    move-object v3, v1

    goto :goto_0

    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_0
    move-object v3, v2

    .line 11409
    .local v3, "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 11410
    sget-object v1, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/assist/AssistStructure;

    .line 11413
    .local v1, "_arg2":Landroid/app/assist/AssistStructure;
    move-object v4, v1

    goto :goto_1

    .end local v1    # "_arg2":Landroid/app/assist/AssistStructure;
    :cond_1
    move-object v4, v2

    .line 11416
    .local v4, "_arg2":Landroid/app/assist/AssistStructure;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 11417
    sget-object v1, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/assist/AssistContent;

    .line 11420
    .local v1, "_arg3":Landroid/app/assist/AssistContent;
    move-object v5, v1

    goto :goto_2

    .end local v1    # "_arg3":Landroid/app/assist/AssistContent;
    :cond_2
    move-object v5, v2

    .line 11423
    .local v5, "_arg3":Landroid/app/assist/AssistContent;
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 11424
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 11427
    .local v1, "_arg4":Landroid/net/Uri;
    move-object v6, v1

    goto :goto_3

    .end local v1    # "_arg4":Landroid/net/Uri;
    :cond_3
    move-object v6, v2

    .line 11429
    .local v6, "_arg4":Landroid/net/Uri;
    :goto_3
    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 11430
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11431
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$reportSizeConfigurations$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11859
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11861
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 11863
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 11865
    .local v1, "_arg1":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 11867
    .local v2, "_arg2":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 11868
    .local v3, "_arg3":[I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    .line 11869
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11870
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$requestAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11758
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11762
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v8

    .line 11764
    .local v8, "_arg1":Landroid/app/IAssistDataReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11765
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 11768
    .local v4, "_arg2":Landroid/os/Bundle;
    :goto_0
    move-object v4, v1

    goto :goto_1

    .end local v4    # "_arg2":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 11771
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 11773
    .local v9, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    move v6, v10

    goto :goto_2

    :cond_1
    move v6, v2

    .line 11775
    .local v6, "_arg4":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v7, v10

    goto :goto_3

    :cond_2
    move v7, v2

    .line 11776
    .local v7, "_arg5":Z
    :goto_3
    move-object v1, p0

    move v2, v0

    move-object v3, v8

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v1

    .line 11777
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11778
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11779
    return v10
.end method

.method private onTransact$requestAutofillData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12037
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12039
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 12041
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 12042
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 12045
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .line 12048
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 12050
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 12051
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v4

    .line 12052
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12053
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 12054
    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$resizeDockedStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11932
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11934
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11935
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 11938
    .local v0, "_arg0":Landroid/graphics/Rect;
    move-object v3, v0

    goto :goto_0

    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :cond_0
    move-object v3, v1

    .line 11941
    .local v3, "_arg0":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 11942
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 11945
    .local v0, "_arg1":Landroid/graphics/Rect;
    move-object v4, v0

    goto :goto_1

    .end local v0    # "_arg1":Landroid/graphics/Rect;
    :cond_1
    move-object v4, v1

    .line 11948
    .local v4, "_arg1":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 11949
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 11952
    .local v0, "_arg2":Landroid/graphics/Rect;
    move-object v5, v0

    goto :goto_2

    .end local v0    # "_arg2":Landroid/graphics/Rect;
    :cond_2
    move-object v5, v1

    .line 11955
    .local v5, "_arg2":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 11956
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 11959
    .local v0, "_arg3":Landroid/graphics/Rect;
    move-object v6, v0

    goto :goto_3

    .end local v0    # "_arg3":Landroid/graphics/Rect;
    :cond_3
    move-object v6, v1

    .line 11962
    .local v6, "_arg3":Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 11963
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Rect;

    .line 11966
    .local v7, "_arg4":Landroid/graphics/Rect;
    :goto_4
    move-object v7, v1

    goto :goto_5

    .end local v7    # "_arg4":Landroid/graphics/Rect;
    :cond_4
    goto :goto_4

    .line 11968
    .restart local v7    # "_arg4":Landroid/graphics/Rect;
    :goto_5
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/IActivityManager$Stub;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 11969
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11970
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$resizeStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11442
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11446
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11447
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 11450
    .local v3, "_arg1":Landroid/graphics/Rect;
    :goto_0
    move-object v3, v1

    goto :goto_1

    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 11453
    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    move v4, v8

    goto :goto_2

    :cond_1
    move v4, v2

    .line 11455
    .local v4, "_arg2":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v5, v8

    goto :goto_3

    :cond_2
    move v5, v2

    .line 11457
    .local v5, "_arg3":Z
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v6, v8

    goto :goto_4

    :cond_3
    move v6, v2

    .line 11459
    .local v6, "_arg4":Z
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11460
    .local v9, "_arg5":I
    move-object v1, p0

    move v2, v0

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 11461
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11462
    return v8
.end method

.method private onTransact$revokeUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10694
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10696
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 10698
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 10700
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10701
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 10704
    .local v4, "_arg2":Landroid/net/Uri;
    :goto_0
    move-object v4, v1

    goto :goto_1

    .end local v4    # "_arg2":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10707
    .restart local v4    # "_arg2":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10709
    .local v8, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10710
    .local v9, "_arg4":I
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 10711
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10712
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$revokeUriPermissionFromOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11183
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11185
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 11187
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11188
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg1":Landroid/net/Uri;
    goto :goto_0

    .line 11191
    .end local v1    # "_arg1":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    .line 11194
    .restart local v1    # "_arg1":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11196
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 11197
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 11198
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11199
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$sendIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11995
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11997
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 11999
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 12001
    .local v11, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 12003
    .local v12, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 12004
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 12007
    .local v2, "_arg3":Landroid/content/Intent;
    move-object v6, v2

    goto :goto_0

    .end local v2    # "_arg3":Landroid/content/Intent;
    :cond_0
    move-object v6, v3

    .line 12010
    .local v6, "_arg3":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 12012
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v14

    .line 12014
    .local v14, "_arg5":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 12016
    .local v15, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 12017
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 12020
    .local v2, "_arg7":Landroid/os/Bundle;
    move-object v10, v2

    goto :goto_1

    .end local v2    # "_arg7":Landroid/os/Bundle;
    :cond_1
    move-object v10, v3

    .line 12022
    .local v10, "_arg7":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v11

    move v5, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    invoke-virtual/range {v2 .. v10}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 12023
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12024
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12025
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$serviceDoneExecuting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10721
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10723
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 10725
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10727
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 10729
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 10730
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 10731
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setDumpHeapDebugLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11786
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11788
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 11790
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11792
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 11794
    .local v8, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11795
    .local v10, "_arg3":Ljava/lang/String;
    move-object v1, p0

    move-object v2, v0

    move v3, v7

    move-wide v4, v8

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 11796
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11797
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$setProcessImportant$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10805
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10807
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 10809
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10811
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10813
    .local v2, "_arg2":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10814
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    .line 10815
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10816
    return v3
.end method

.method private onTransact$setServiceForeground$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10821
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10824
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 10827
    .local v0, "_arg0":Landroid/content/ComponentName;
    move-object v3, v0

    goto :goto_0

    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_0
    move-object v3, v1

    .line 10830
    .local v3, "_arg0":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 10832
    .local v0, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10834
    .local v8, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10835
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 10838
    .local v6, "_arg3":Landroid/app/Notification;
    :goto_1
    move-object v6, v1

    goto :goto_2

    .end local v6    # "_arg3":Landroid/app/Notification;
    :cond_1
    goto :goto_1

    .line 10841
    .restart local v6    # "_arg3":Landroid/app/Notification;
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10842
    .local v1, "_arg4":I
    move-object v2, p0

    move-object v4, v0

    move v5, v8

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    .line 10843
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10844
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$setTaskWindowingModeSplitScreenPrimary$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11875
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11877
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11879
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11881
    .local v8, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    move v4, v9

    goto :goto_0

    :cond_0
    move v4, v2

    .line 11883
    .local v4, "_arg2":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v5, v9

    goto :goto_1

    :cond_1
    move v5, v2

    .line 11885
    .local v5, "_arg3":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 11886
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 11889
    .local v6, "_arg4":Landroid/graphics/Rect;
    :goto_2
    move-object v6, v1

    goto :goto_3

    .end local v6    # "_arg4":Landroid/graphics/Rect;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 11892
    .restart local v6    # "_arg4":Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v7, v9

    goto :goto_4

    :cond_3
    move v7, v2

    .line 11893
    .local v7, "_arg5":Z
    :goto_4
    move-object v1, p0

    move v2, v0

    move v3, v8

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z

    move-result v1

    .line 11894
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11895
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11896
    return v9
.end method

.method private onTransact$startActivities$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11256
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11258
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 11260
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11262
    .local v10, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [Landroid/content/Intent;

    .line 11264
    .local v11, "_arg2":[Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 11266
    .local v12, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 11268
    .local v13, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 11269
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11272
    .local v8, "_arg5":Landroid/os/Bundle;
    :goto_0
    move-object v8, v2

    goto :goto_1

    .end local v8    # "_arg5":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 11275
    .restart local v8    # "_arg5":Landroid/os/Bundle;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 11276
    .local v14, "_arg6":I
    move-object v2, p0

    move-object v3, v1

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/app/IActivityManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v2

    .line 11277
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11278
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11279
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10316
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10318
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10320
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 10322
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10323
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 10326
    .local v2, "_arg2":Landroid/content/Intent;
    move-object v5, v2

    goto :goto_0

    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_0
    move-object v5, v3

    .line 10329
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 10331
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 10333
    .local v15, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10335
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 10337
    .local v17, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 10339
    .local v18, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10340
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 10343
    .local v2, "_arg8":Landroid/app/ProfilerInfo;
    move-object v11, v2

    goto :goto_1

    .end local v2    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_1
    move-object v11, v3

    .line 10346
    .local v11, "_arg8":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 10347
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10350
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 10352
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-virtual/range {v2 .. v12}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v2

    .line 10353
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10354
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10355
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivityAndWait$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 22
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11031
    move-object/from16 v1, p2

    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11033
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 11035
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11037
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 11038
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 11041
    .local v3, "_arg2":Landroid/content/Intent;
    move-object v6, v3

    goto :goto_0

    .end local v3    # "_arg2":Landroid/content/Intent;
    :cond_0
    move-object v6, v4

    .line 11044
    .local v6, "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 11046
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 11048
    .local v17, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 11050
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11052
    .local v19, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 11054
    .local v20, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 11055
    sget-object v3, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProfilerInfo;

    .line 11058
    .local v3, "_arg8":Landroid/app/ProfilerInfo;
    move-object v12, v3

    goto :goto_1

    .end local v3    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_1
    move-object v12, v4

    .line 11061
    .local v12, "_arg8":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 11062
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 11065
    .local v3, "_arg9":Landroid/os/Bundle;
    move-object v13, v3

    goto :goto_2

    .end local v3    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v13, v4

    .line 11068
    .local v13, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 11069
    .local v21, "_arg10":I
    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v14, v21

    invoke-virtual/range {v3 .. v14}, Landroid/app/IActivityManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v3

    .line 11070
    .local v3, "_result":Landroid/app/WaitResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11071
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 11072
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 11073
    invoke-virtual {v3, v1, v4}, Landroid/app/WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 11076
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 11078
    :goto_3
    return v4
.end method

.method private onTransact$startActivityAsCaller$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 23
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11620
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11622
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 11624
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11626
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 11627
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 11630
    .local v2, "_arg2":Landroid/content/Intent;
    move-object v5, v2

    goto :goto_0

    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_0
    move-object v5, v3

    .line 11633
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 11635
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 11637
    .local v17, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 11639
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11641
    .local v19, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 11643
    .local v20, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11644
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 11647
    .local v2, "_arg8":Landroid/app/ProfilerInfo;
    move-object v11, v2

    goto :goto_1

    .end local v2    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_1
    move-object v11, v3

    .line 11650
    .local v11, "_arg8":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 11651
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11654
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 11657
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/16 v21, 0x1

    if-eqz v2, :cond_3

    move/from16 v13, v21

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    move v13, v2

    .line 11659
    .local v13, "_arg10":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 11660
    .local v22, "_arg11":I
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v14, v22

    invoke-virtual/range {v2 .. v14}, Landroid/app/IActivityManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v2

    .line 11661
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11662
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11663
    return v21
.end method

.method private onTransact$startActivityAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11341
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11343
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 11345
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 11347
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 11348
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 11351
    .local v2, "_arg2":Landroid/content/Intent;
    move-object v5, v2

    goto :goto_0

    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_0
    move-object v5, v3

    .line 11354
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11356
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 11358
    .local v16, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11360
    .local v17, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 11362
    .local v18, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11364
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11365
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 11368
    .local v2, "_arg8":Landroid/app/ProfilerInfo;
    move-object v11, v2

    goto :goto_1

    .end local v2    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_1
    move-object v11, v3

    .line 11371
    .local v11, "_arg8":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 11372
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11375
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 11378
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 11379
    .local v20, "_arg10":I
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    .line 11380
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11381
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11382
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivityIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 22
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10950
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10952
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10954
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v14

    .line 10956
    .local v14, "_arg1":Landroid/content/IIntentSender;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 10958
    .local v15, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10959
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 10962
    .local v2, "_arg3":Landroid/content/Intent;
    move-object v6, v2

    goto :goto_0

    .end local v2    # "_arg3":Landroid/content/Intent;
    :cond_0
    move-object v6, v3

    .line 10965
    .local v6, "_arg3":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10967
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 10969
    .local v17, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10971
    .local v18, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 10973
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 10975
    .local v20, "_arg8":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 10977
    .local v21, "_arg9":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10978
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10981
    .local v2, "_arg10":Landroid/os/Bundle;
    move-object v13, v2

    goto :goto_1

    .end local v2    # "_arg10":Landroid/os/Bundle;
    :cond_1
    move-object v13, v3

    .line 10983
    .local v13, "_arg10":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v2

    .line 10984
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10985
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10986
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivityWithConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11084
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11086
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 11088
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 11090
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 11091
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 11094
    .local v2, "_arg2":Landroid/content/Intent;
    move-object v5, v2

    goto :goto_0

    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_0
    move-object v5, v3

    .line 11097
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11099
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 11101
    .local v16, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11103
    .local v17, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 11105
    .local v18, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11107
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11108
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 11111
    .local v2, "_arg8":Landroid/content/res/Configuration;
    move-object v11, v2

    goto :goto_1

    .end local v2    # "_arg8":Landroid/content/res/Configuration;
    :cond_1
    move-object v11, v3

    .line 11114
    .local v11, "_arg8":Landroid/content/res/Configuration;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 11115
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11118
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 11121
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 11122
    .local v20, "_arg10":I
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v2

    .line 11123
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11124
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11125
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startAssistantActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11576
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11578
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 11580
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11582
    .local v9, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11584
    .local v10, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11585
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 11588
    .local v1, "_arg3":Landroid/content/Intent;
    move-object v5, v1

    goto :goto_0

    .end local v1    # "_arg3":Landroid/content/Intent;
    :cond_0
    move-object v5, v2

    .line 11591
    .local v5, "_arg3":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 11593
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 11594
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 11597
    .local v1, "_arg5":Landroid/os/Bundle;
    move-object v7, v1

    goto :goto_1

    .end local v1    # "_arg5":Landroid/os/Bundle;
    :cond_1
    move-object v7, v2

    .line 11600
    .local v7, "_arg5":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11601
    .local v12, "_arg6":I
    move-object v1, p0

    move-object v2, v0

    move v3, v9

    move v4, v10

    move-object v6, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/app/IActivityManager$Stub;->startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v1

    .line 11602
    .local v1, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11603
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11604
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$startInstrumentation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10600
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10602
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 10603
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 10606
    .local v1, "_arg0":Landroid/content/ComponentName;
    move-object v4, v1

    goto :goto_0

    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_0
    move-object v4, v2

    .line 10609
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 10611
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 10613
    .local v12, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 10614
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10617
    .local v7, "_arg3":Landroid/os/Bundle;
    :goto_1
    move-object v7, v2

    goto :goto_2

    .end local v7    # "_arg3":Landroid/os/Bundle;
    :cond_1
    goto :goto_1

    .line 10620
    .restart local v7    # "_arg3":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v2

    .line 10622
    .local v2, "_arg4":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v13

    .line 10624
    .local v13, "_arg5":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10626
    .local v14, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 10627
    .local v15, "_arg7":Ljava/lang/String;
    move-object/from16 v3, p0

    move-object v5, v1

    move v6, v12

    move-object v8, v2

    move-object v9, v13

    move v10, v14

    move-object v11, v15

    invoke-virtual/range {v3 .. v11}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v3

    .line 10628
    .local v3, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10629
    move-object/from16 v5, p2

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10630
    const/4 v6, 0x1

    return v6
.end method

.method private onTransact$startService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10510
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10512
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 10514
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10515
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 10518
    .local v3, "_arg1":Landroid/content/Intent;
    :goto_0
    move-object v3, v1

    goto :goto_1

    .end local v3    # "_arg1":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10521
    .restart local v3    # "_arg1":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10523
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    move v5, v10

    goto :goto_2

    :cond_1
    move v5, v9

    .line 10525
    .local v5, "_arg3":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10527
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 10528
    .local v12, "_arg5":I
    move-object v1, p0

    move-object v2, v0

    move-object v4, v8

    move-object v6, v11

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 10529
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10530
    if-eqz v1, :cond_2

    .line 10531
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 10532
    invoke-virtual {v1, p2, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 10535
    :cond_2
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 10537
    :goto_3
    return v10
.end method

.method private onTransact$startVoiceActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11530
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11532
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11534
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 11536
    .local v14, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 11538
    .local v15, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 11539
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 11542
    .local v2, "_arg3":Landroid/content/Intent;
    move-object v6, v2

    goto :goto_0

    .end local v2    # "_arg3":Landroid/content/Intent;
    :cond_0
    move-object v6, v3

    .line 11545
    .local v6, "_arg3":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 11547
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v17

    .line 11549
    .local v17, "_arg5":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v18

    .line 11551
    .local v18, "_arg6":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11553
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11554
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 11557
    .local v2, "_arg8":Landroid/app/ProfilerInfo;
    move-object v11, v2

    goto :goto_1

    .end local v2    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_1
    move-object v11, v3

    .line 11560
    .local v11, "_arg8":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 11561
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11564
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 11567
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 11568
    .local v20, "_arg10":I
    move-object/from16 v2, p0

    move-object v3, v1

    move v4, v14

    move v5, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    .line 11569
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11570
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11571
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$stopService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10542
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10544
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 10546
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10547
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg1":Landroid/content/Intent;
    goto :goto_0

    .line 10550
    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    .line 10553
    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10555
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 10556
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    .line 10557
    .local v4, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10558
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10559
    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$takePersistableUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11477
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 11480
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "_arg0":Landroid/net/Uri;
    goto :goto_0

    .line 11483
    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x0

    .line 11486
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11488
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11490
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 11491
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 11492
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11493
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$unlockUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11907
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11909
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11911
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 11913
    .local v1, "_arg1":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 11915
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    .line 11916
    .local v3, "_arg3":Landroid/os/IProgressListener;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v4

    .line 11917
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11918
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 11919
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "android.app.IActivityManager"

    .line 45
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_73

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3437
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 3430
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3431
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->finishFocusedStackActivity()V

    .line 3432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3433
    return v2

    .line 3422
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v3, v2

    nop

    :cond_0
    move v1, v3

    .line 3425
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setTwoLevelState(Z)V

    .line 3426
    return v2

    .line 3414
    .end local v1    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v3, v2

    nop

    :cond_1
    move v1, v3

    .line 3417
    .restart local v1    # "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setPreStartState(Z)V

    .line 3418
    return v2

    .line 3406
    .end local v1    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    nop

    :cond_2
    move v1, v3

    .line 3409
    .restart local v1    # "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setPreLoadingWebViewState(Z)V

    .line 3410
    return v2

    .line 3398
    .end local v1    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v3, v2

    nop

    :cond_3
    move v1, v3

    .line 3401
    .restart local v1    # "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setPreLoadingRenderThreadState(Z)V

    .line 3402
    return v2

    .line 3390
    .end local v1    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v3, v2

    nop

    :cond_4
    move v1, v3

    .line 3393
    .restart local v1    # "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setDelayBroadCastState(Z)V

    .line 3394
    return v2

    .line 3380
    .end local v1    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3383
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->fileExist(Ljava/lang/String;)Z

    move-result v3

    .line 3384
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3385
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3386
    return v2

    .line 3371
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3374
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->killProcess(I)V

    .line 3375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3376
    return v2

    .line 3363
    .end local v1    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3364
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getAllProcMemoryInfo()Ljava/util/List;

    move-result-object v1

    .line 3365
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3366
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3367
    return v2

    .line 3357
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3358
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->dumpSystraceWhenStuck()V

    .line 3359
    return v2

    .line 3349
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3350
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFocusedStackResumedIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 3351
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3352
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3353
    return v2

    .line 3341
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3342
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFocusedStackResumedPkg()Ljava/lang/String;

    move-result-object v1

    .line 3343
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3344
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3345
    return v2

    .line 3329
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3333
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v3, v2

    nop

    .line 3334
    .local v3, "_arg1":Z
    :cond_5
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->notifyUnLockAppWithTimeLock(Ljava/lang/String;Z)Z

    move-result v4

    .line 3335
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3336
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3337
    return v2

    .line 3317
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3321
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v3, v2

    nop

    .line 3322
    .restart local v3    # "_arg1":Z
    :cond_6
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->notifyUnLockAppWithTimeLockById(IZ)Z

    move-result v4

    .line 3323
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3324
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3325
    return v2

    .line 3310
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3311
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->dumpMemLeakInfo()V

    .line 3312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3313
    return v2

    .line 3300
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3303
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->notifyGameCallActivityStart(Ljava/lang/String;)Z

    move-result v3

    .line 3304
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3306
    return v2

    .line 3290
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3293
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isAppInLockedStatus(Ljava/lang/String;)Z

    move-result v3

    .line 3294
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3295
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3296
    return v2

    .line 3278
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3282
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v3, v2

    nop

    .line 3283
    .local v3, "_arg1":Z
    :cond_7
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->notifyUnLockApp(Ljava/lang/String;Z)Z

    move-result v4

    .line 3284
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3285
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3286
    return v2

    .line 3266
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3270
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    move v3, v2

    nop

    .line 3271
    .restart local v3    # "_arg1":Z
    :cond_8
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->notifyUnLockAppById(IZ)Z

    move-result v4

    .line 3272
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3273
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3274
    return v2

    .line 3255
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3257
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3259
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v3, v2

    nop

    .line 3260
    .restart local v3    # "_arg1":Z
    :cond_9
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setDummyTranslucent(Landroid/os/IBinder;Z)V

    .line 3261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3262
    return v2

    .line 3247
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3248
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getProcessesAdjs()Ljava/util/Map;

    move-result-object v1

    .line 3249
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3250
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3251
    return v2

    .line 3233
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 3236
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .line 3239
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_a
    nop

    .line 3241
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    .line 3242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3243
    return v2

    .line 3217
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3221
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 3222
    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationAdapter;

    .local v1, "_arg1":Landroid/view/RemoteAnimationAdapter;
    goto :goto_1

    .line 3225
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    :cond_b
    nop

    .line 3227
    .restart local v1    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    :goto_1
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 3228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3229
    return v2

    .line 3201
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    .end local v3    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3205
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 3206
    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    .local v1, "_arg1":Landroid/view/RemoteAnimationDefinition;
    goto :goto_2

    .line 3209
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :cond_c
    nop

    .line 3211
    .restart local v1    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :goto_2
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    .line 3212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3213
    return v2

    .line 3189
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3193
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    .line 3194
    .local v3, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v4

    .line 3195
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3196
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3197
    return v2

    .line 3178
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IProgressListener;
    .end local v4    # "_result":Z
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3182
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    move v3, v2

    nop

    .line 3183
    .local v3, "_arg1":Z
    :cond_d
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 3184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3185
    return v2

    .line 3167
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3171
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    move v3, v2

    nop

    .line 3172
    .restart local v3    # "_arg1":Z
    :cond_e
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 3173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3174
    return v2

    .line 3156
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3160
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3161
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->updateLockTaskFeatures(II)V

    .line 3162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3163
    return v2

    .line 3147
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3150
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->backgroundWhitelistUid(I)V

    .line 3151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3152
    return v2

    .line 3139
    .end local v1    # "_arg0":I
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getLastResumedActivityUserId()I

    move-result v1

    .line 3141
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3142
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3143
    return v2

    .line 3128
    .end local v1    # "_result":I
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3132
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    move v3, v2

    nop

    .line 3133
    .local v3, "_arg1":Z
    :cond_f
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V

    .line 3134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3135
    return v2

    .line 3119
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3121
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 3122
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    .line 3123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3124
    return v2

    .line 3110
    .end local v3    # "_arg0":J
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3113
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    .line 3114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3115
    return v2

    .line 3099
    .end local v1    # "_arg0":I
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3101
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3103
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3104
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 3105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3106
    return v2

    .line 3081
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3085
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    move v4, v2

    goto :goto_3

    :cond_10
    move v4, v3

    .line 3086
    .local v4, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v1, v4}, Landroid/app/IActivityManager$Stub;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v5

    .line 3087
    .local v5, "_result":Landroid/app/ActivityManager$TaskSnapshot;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3088
    if-eqz v5, :cond_11

    .line 3089
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3090
    invoke-virtual {v5, p3, v2}, Landroid/app/ActivityManager$TaskSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 3093
    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3095
    :goto_4
    return v2

    .line 3072
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v5    # "_result":Landroid/app/ActivityManager$TaskSnapshot;
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3074
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3075
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    .line 3076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3077
    return v2

    .line 3062
    .end local v1    # "_arg0":I
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3064
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3065
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(I)I

    move-result v3

    .line 3066
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3067
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3068
    return v2

    .line 3044
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3046
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3048
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v4

    .line 3050
    .local v4, "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 3051
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, "_arg2":Ljava/lang/CharSequence;
    goto :goto_5

    .line 3054
    .end local v1    # "_arg2":Ljava/lang/CharSequence;
    :cond_12
    nop

    .line 3056
    .restart local v1    # "_arg2":Ljava/lang/CharSequence;
    :goto_5
    invoke-virtual {p0, v3, v4, v1}, Landroid/app/IActivityManager$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 3057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3058
    return v2

    .line 3040
    .end local v1    # "_arg2":Ljava/lang/CharSequence;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    :pswitch_26
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$requestAutofillData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3029
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3031
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3033
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3034
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->moveStackToDisplay(II)V

    .line 3035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3036
    return v2

    .line 3012
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 3015
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .local v1, "_arg0":Landroid/content/res/Configuration;
    goto :goto_6

    .line 3018
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    :cond_13
    nop

    .line 3021
    .restart local v1    # "_arg0":Landroid/content/res/Configuration;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3022
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v4

    .line 3023
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3024
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3025
    return v2

    .line 3003
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    move v3, v2

    nop

    :cond_14
    move v1, v3

    .line 3006
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    .line 3007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3008
    return v2

    .line 2996
    .end local v1    # "_arg0":Z
    :pswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2997
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->dumpSystrace()V

    .line 2998
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2999
    return v2

    .line 2987
    :pswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2989
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2990
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    .line 2991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2992
    return v2

    .line 2978
    .end local v1    # "_arg0":I
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2980
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2981
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setVrThread(I)V

    .line 2982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2983
    return v2

    .line 2968
    .end local v1    # "_arg0":I
    :pswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2970
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2971
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v3

    .line 2972
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2973
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2974
    return v2

    .line 2964
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2e
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$sendIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2957
    :pswitch_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    .line 2959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2960
    return v2

    .line 2936
    :pswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 2939
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .local v3, "_arg0":Landroid/content/Intent;
    goto :goto_7

    .line 2942
    .end local v3    # "_arg0":Landroid/content/Intent;
    :cond_15
    move-object v3, v1

    .line 2945
    .restart local v3    # "_arg0":Landroid/content/Intent;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 2946
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_8

    .line 2949
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_16
    nop

    .line 2951
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 2952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2953
    return v2

    .line 2927
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg0":Landroid/content/Intent;
    :pswitch_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2929
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2930
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    .line 2931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2932
    return v2

    .line 2912
    .end local v1    # "_arg0":I
    :pswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 2915
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 2918
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_17
    nop

    .line 2920
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2921
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2922
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2923
    return v2

    .line 2891
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    .line 2894
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .local v3, "_arg0":Landroid/graphics/Rect;
    goto :goto_a

    .line 2897
    .end local v3    # "_arg0":Landroid/graphics/Rect;
    :cond_18
    move-object v3, v1

    .line 2900
    .restart local v3    # "_arg0":Landroid/graphics/Rect;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 2901
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, "_arg1":Landroid/graphics/Rect;
    goto :goto_b

    .line 2904
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_19
    nop

    .line 2906
    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    :goto_b
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2908
    return v2

    .line 2883
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg0":Landroid/graphics/Rect;
    :pswitch_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2884
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v1

    .line 2885
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2886
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2887
    return v2

    .line 2872
    .end local v1    # "_result":I
    :pswitch_35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2876
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2877
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    .line 2878
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2879
    return v2

    .line 2863
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2865
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 2866
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->removeStacksWithActivityTypes([I)V

    .line 2867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2868
    return v2

    .line 2854
    .end local v1    # "_arg0":[I
    :pswitch_37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2856
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 2857
    .restart local v1    # "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->removeStacksInWindowingModes([I)V

    .line 2858
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2859
    return v2

    .line 2845
    .end local v1    # "_arg0":[I
    :pswitch_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2847
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2848
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->removeStack(I)V

    .line 2849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2850
    return v2

    .line 2838
    .end local v1    # "_arg0":I
    :pswitch_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->notifyPinnedStackAnimationEnded()V

    .line 2840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2841
    return v2

    .line 2831
    :pswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2832
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->notifyPinnedStackAnimationStarted()V

    .line 2833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2834
    return v2

    .line 2823
    :pswitch_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2824
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v1

    .line 2825
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2826
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2827
    return v2

    .line 2814
    .end local v1    # "_result":Z
    :pswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2816
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2817
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 2818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2819
    return v2

    .line 2798
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_3d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2800
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2802
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 2803
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_c

    .line 2806
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_1a
    nop

    .line 2808
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2810
    return v2

    .line 2788
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2791
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isAppForeground(I)Z

    move-result v3

    .line 2792
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2793
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2794
    return v2

    .line 2777
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2779
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2781
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2782
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    .line 2783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2784
    return v2

    .line 2759
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2761
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2763
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2764
    .local v4, "_arg1":I
    invoke-virtual {p0, v1, v4}, Landroid/app/IActivityManager$Stub;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 2765
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2766
    if-eqz v5, :cond_1b

    .line 2767
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2768
    invoke-virtual {v5, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 2771
    :cond_1b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2773
    :goto_d
    return v2

    .line 2740
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2742
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 2744
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    move v3, v2

    nop

    .line 2746
    .local v3, "_arg1":Z
    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    .line 2747
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "_arg2":Landroid/content/ComponentName;
    goto :goto_e

    .line 2750
    .end local v1    # "_arg2":Landroid/content/ComponentName;
    :cond_1d
    nop

    .line 2752
    .restart local v1    # "_arg2":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p0, v4, v3, v1}, Landroid/app/IActivityManager$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v5

    .line 2753
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2754
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2755
    return v2

    .line 2731
    .end local v1    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_result":I
    :pswitch_42
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    move v3, v2

    nop

    :cond_1e
    move v1, v3

    .line 2734
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setSplitScreenResizing(Z)V

    .line 2735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2736
    return v2

    .line 2727
    .end local v1    # "_arg0":Z
    :pswitch_43
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$resizeDockedStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2717
    :pswitch_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2719
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2720
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v3

    .line 2721
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2722
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2723
    return v2

    .line 2708
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2710
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2711
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    .line 2712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2713
    return v2

    .line 2698
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2700
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2701
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    move-result v3

    .line 2702
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2703
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2704
    return v2

    .line 2682
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2684
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2686
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 2687
    sget-object v1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureParams;

    .local v1, "_arg1":Landroid/app/PictureInPictureParams;
    goto :goto_f

    .line 2690
    .end local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    :cond_1f
    nop

    .line 2692
    .restart local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    :goto_f
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 2693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2694
    return v2

    .line 2665
    .end local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2669
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 2670
    sget-object v1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureParams;

    .restart local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    goto :goto_10

    .line 2673
    .end local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    :cond_20
    nop

    .line 2675
    .restart local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    :goto_10
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v4

    .line 2676
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2677
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2678
    return v2

    .line 2654
    .end local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2656
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2658
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2659
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    .line 2660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2661
    return v2

    .line 2644
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_4a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2647
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    move-result v3

    .line 2648
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2650
    return v2

    .line 2634
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2637
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    move-result v3

    .line 2638
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2639
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2640
    return v2

    .line 2630
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_4c
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$unlockUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2618
    :pswitch_4d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2622
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2623
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v4

    .line 2624
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2625
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2626
    return v2

    .line 2601
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_4e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2605
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    .line 2606
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, "_arg1":Landroid/graphics/Rect;
    goto :goto_11

    .line 2609
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_21
    nop

    .line 2611
    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    :goto_11
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v4

    .line 2612
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    return v2

    .line 2590
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_4f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2594
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    move v3, v2

    nop

    .line 2595
    .local v3, "_arg1":Z
    :cond_22
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->moveTasksToFullscreenStack(IZ)V

    .line 2596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2597
    return v2

    .line 2581
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    move v3, v2

    nop

    :cond_23
    move v1, v3

    .line 2584
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 2585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2586
    return v2

    .line 2570
    .end local v1    # "_arg0":Z
    :pswitch_51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    move v3, v2

    nop

    :cond_24
    move v1, v3

    .line 2574
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2575
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->dismissPip(ZI)V

    .line 2576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2577
    return v2

    .line 2561
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    move v3, v2

    nop

    :cond_25
    move v1, v3

    .line 2564
    .restart local v1    # "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->dismissSplitScreenMode(Z)V

    .line 2565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2566
    return v2

    .line 2557
    .end local v1    # "_arg0":Z
    :pswitch_53
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$setTaskWindowingModeSplitScreenPrimary$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2553
    :pswitch_54
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$reportSizeConfigurations$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2544
    :pswitch_55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2546
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2547
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->exitFreeformMode(Landroid/os/IBinder;)V

    .line 2548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2549
    return v2

    .line 2531
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2535
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2537
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2538
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->positionTaskInStack(III)V

    .line 2539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2540
    return v2

    .line 2516
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_57
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    .line 2519
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_12

    .line 2522
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_26
    nop

    .line 2524
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_12
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v3

    .line 2525
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2526
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2527
    return v2

    .line 2508
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_result":Z
    :pswitch_58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2509
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v1

    .line 2510
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2511
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2512
    return v2

    .line 2498
    .end local v1    # "_result":Z
    :pswitch_59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2500
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2501
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v3

    .line 2502
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2503
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    return v2

    .line 2481
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_5a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2483
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2485
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 2486
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_13

    .line 2489
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_27
    nop

    .line 2491
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_13
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v4

    .line 2492
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2493
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2494
    return v2

    .line 2473
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_5b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v1

    .line 2475
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2476
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2477
    return v2

    .line 2461
    .end local v1    # "_result":Z
    :pswitch_5c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2465
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2466
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v4

    .line 2467
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2468
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    return v2

    .line 2453
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_5d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2456
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->keyguardGoingAway(I)V

    .line 2457
    return v2

    .line 2444
    .end local v1    # "_arg0":I
    :pswitch_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2447
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2449
    return v2

    .line 2436
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_5f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2439
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2440
    return v2

    .line 2424
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_60
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2426
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2428
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2429
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2430
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2431
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2432
    return v2

    .line 2420
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_61
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$noteAlarmFinish$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2416
    :pswitch_62
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$noteAlarmStart$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2405
    :pswitch_63
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2409
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 2410
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2412
    return v2

    .line 2394
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2396
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v1

    .line 2398
    .local v1, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    move v3, v2

    nop

    .line 2399
    .local v3, "_arg1":Z
    :cond_28
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2401
    return v2

    .line 2385
    .end local v1    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    .end local v3    # "_arg1":Z
    :pswitch_65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2387
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2388
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2390
    return v2

    .line 2381
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_66
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$setDumpHeapDebugLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2373
    :pswitch_67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2374
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v1

    .line 2375
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2376
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2377
    return v2

    .line 2355
    .end local v1    # "_result":I
    :pswitch_68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2359
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    .line 2360
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, "_arg1":Landroid/graphics/Rect;
    goto :goto_14

    .line 2363
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_29
    nop

    .line 2366
    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2367
    .local v4, "_arg2":I
    invoke-virtual {p0, v3, v1, v4}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 2368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2369
    return v2

    .line 2351
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg2":I
    :pswitch_69
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$requestAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2340
    :pswitch_6a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2344
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2345
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    .line 2346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2347
    return v2

    .line 2330
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2333
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->createStackOnDisplay(I)I

    move-result v3

    .line 2334
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2336
    return v2

    .line 2319
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_6c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2323
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 2324
    .local v3, "_arg1":[B
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    .line 2325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2326
    return v2

    .line 2310
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_6d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2312
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 2313
    .local v1, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 2314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2315
    return v2

    .line 2301
    .end local v1    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_6e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 2304
    .restart local v1    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 2305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2306
    return v2

    .line 2297
    .end local v1    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_6f
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$checkPermissionWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2283
    :pswitch_70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    .line 2286
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_15

    .line 2289
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_2a
    nop

    .line 2291
    .restart local v1    # "_arg0":Landroid/os/Bundle;
    :goto_15
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V

    .line 2292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2293
    return v2

    .line 2279
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :pswitch_71
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$launchAssistIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2261
    :pswitch_72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2265
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2266
    .local v4, "_arg1":I
    invoke-virtual {p0, v1, v4}, Landroid/app/IActivityManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2267
    .local v5, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2268
    if-eqz v5, :cond_2b

    .line 2269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2270
    invoke-virtual {v5, p3, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_16

    .line 2273
    :cond_2b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2275
    :goto_16
    return v2

    .line 2253
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Landroid/graphics/Bitmap;
    :pswitch_73
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2254
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFocusedWindowMode()I

    move-result v1

    .line 2255
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2257
    return v2

    .line 2246
    .end local v1    # "_result":I
    :pswitch_74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2247
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    .line 2248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2249
    return v2

    .line 2237
    :pswitch_75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2240
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 2241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2242
    return v2

    .line 2227
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2230
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v3

    .line 2231
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2232
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2233
    return v2

    .line 2213
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v1

    .line 2215
    .local v1, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2216
    if-eqz v1, :cond_2c

    .line 2217
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2218
    invoke-virtual {v1, p3, v2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 2221
    :cond_2c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2223
    :goto_17
    return v2

    .line 2209
    .end local v1    # "_result":Landroid/graphics/Point;
    :pswitch_78
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$addAppTask$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2205
    :pswitch_79
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAsCaller$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2196
    :pswitch_7a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2199
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    return v2

    .line 2187
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_7b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2190
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2192
    return v2

    .line 2177
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_7c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2180
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v3

    .line 2181
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2182
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2183
    return v2

    .line 2168
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_7d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v1

    .line 2171
    .local v1, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2173
    return v2

    .line 2161
    .end local v1    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_7e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->stopSystemLockTaskMode()V

    .line 2163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2164
    return v2

    .line 2152
    :pswitch_7f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2155
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    .line 2156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2157
    return v2

    .line 2142
    .end local v1    # "_arg0":I
    :pswitch_80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2145
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2146
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 2148
    return v2

    .line 2126
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2129
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v4

    .line 2130
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2131
    if-eqz v4, :cond_2d

    .line 2132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2133
    invoke-virtual {v4, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    .line 2136
    :cond_2d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2138
    :goto_18
    return v2

    .line 2109
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2113
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    .line 2114
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_19

    .line 2117
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_2e
    nop

    .line 2119
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_19
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v4

    .line 2120
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2121
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2122
    return v2

    .line 2100
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f

    move v3, v2

    nop

    :cond_2f
    move v1, v3

    .line 2103
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->cancelRecentsAnimation(Z)V

    .line 2104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2105
    return v2

    .line 2082
    .end local v1    # "_arg0":Z
    :pswitch_84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_30

    .line 2085
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_1a

    .line 2088
    .end local v1    # "_arg0":Landroid/content/Intent;
    :cond_30
    nop

    .line 2091
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v3

    .line 2093
    .local v3, "_arg1":Landroid/app/IAssistDataReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v4

    .line 2094
    .local v4, "_arg2":Landroid/view/IRecentsAnimationRunner;
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V

    .line 2095
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2096
    return v2

    .line 2078
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Landroid/app/IAssistDataReceiver;
    .end local v4    # "_arg2":Landroid/view/IRecentsAnimationRunner;
    :pswitch_85
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startAssistantActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2074
    :pswitch_86
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startVoiceActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2058
    :pswitch_87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2062
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    .line 2063
    sget-object v1, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$TaskDescription;

    .local v1, "_arg1":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_1b

    .line 2066
    .end local v1    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    :cond_31
    nop

    .line 2068
    .restart local v1    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    :goto_1b
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2070
    return v2

    .line 2050
    .end local v1    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v1

    .line 2052
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    return v2

    .line 2041
    .end local v1    # "_result":Z
    :pswitch_89
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2044
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 2045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2046
    return v2

    .line 2032
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_8a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2035
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 2036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2037
    return v2

    .line 2022
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_8b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2025
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v3

    .line 2026
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2027
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2028
    return v2

    .line 2010
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_8c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 2014
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2015
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2016
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2017
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2018
    return v2

    .line 1996
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_8d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2000
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2002
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2003
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v5

    .line 2004
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2006
    return v2

    .line 1986
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_8e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1989
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v3

    .line 1990
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1991
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1992
    return v2

    .line 1970
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_8f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1973
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 1974
    .local v4, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1975
    if-eqz v4, :cond_32

    .line 1976
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1977
    invoke-virtual {v4, p3, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    .line 1980
    :cond_32
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1982
    :goto_1c
    return v2

    .line 1961
    .end local v1    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Rect;
    :pswitch_90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1964
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 1965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1966
    return v2

    .line 1943
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1947
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    move v4, v2

    goto :goto_1d

    :cond_33
    move v4, v3

    .line 1948
    .local v4, "_arg1":Z
    :goto_1d
    invoke-virtual {p0, v1, v4}, Landroid/app/IActivityManager$Stub;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 1949
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    if-eqz v5, :cond_34

    .line 1951
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1952
    invoke-virtual {v5, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 1955
    :cond_34
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1957
    :goto_1e
    return v2

    .line 1939
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_92
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$releasePersistableUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1935
    :pswitch_93
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$takePersistableUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1928
    :pswitch_94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    .line 1930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1931
    return v2

    .line 1921
    :pswitch_95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->restart()V

    .line 1923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    return v2

    .line 1910
    :pswitch_96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1914
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    move v3, v2

    nop

    .line 1915
    .local v3, "_arg1":Z
    :cond_35
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 1916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1917
    return v2

    .line 1901
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1904
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 1905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1906
    return v2

    .line 1884
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1888
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    .line 1889
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_1f

    .line 1892
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_36
    nop

    .line 1894
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_1f
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v4

    .line 1895
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1896
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1897
    return v2

    .line 1874
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1877
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v3

    .line 1878
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    return v2

    .line 1856
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_9a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1860
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1861
    .local v4, "_arg1":I
    invoke-virtual {p0, v1, v4}, Landroid/app/IActivityManager$Stub;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    .line 1862
    .local v5, "_result":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    if-eqz v5, :cond_37

    .line 1864
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1865
    invoke-virtual {v5, p3, v2}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 1868
    :cond_37
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    :goto_20
    return v2

    .line 1842
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Landroid/app/ActivityManager$StackInfo;
    :pswitch_9b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 1844
    .local v1, "_result":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1845
    if-eqz v1, :cond_38

    .line 1846
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    invoke-virtual {v1, p3, v2}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 1850
    :cond_38
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    :goto_21
    return v2

    .line 1833
    .end local v1    # "_result":Landroid/app/ActivityManager$StackInfo;
    :pswitch_9c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1836
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setFocusedStack(I)V

    .line 1837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    return v2

    .line 1825
    .end local v1    # "_arg0":I
    :pswitch_9d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getAllStackInfos()Ljava/util/List;

    move-result-object v1

    .line 1827
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1828
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1829
    return v2

    .line 1821
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :pswitch_9e
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$resizeStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1808
    :pswitch_9f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1812
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1814
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    move v3, v2

    nop

    .line 1815
    .local v3, "_arg2":Z
    :cond_39
    invoke-virtual {p0, v1, v4, v3}, Landroid/app/IActivityManager$Stub;->moveTaskToStack(IIZ)V

    .line 1816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1817
    return v2

    .line 1795
    .end local v1    # "_arg0":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg1":I
    :pswitch_a0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1799
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1801
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    move v3, v2

    nop

    .line 1802
    .restart local v3    # "_arg2":Z
    :cond_3a
    invoke-virtual {p0, v1, v4, v3}, Landroid/app/IActivityManager$Stub;->setTaskWindowingMode(IIZ)V

    .line 1803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1804
    return v2

    .line 1784
    .end local v1    # "_arg0":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg1":I
    :pswitch_a1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1788
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    move v3, v2

    nop

    .line 1789
    .local v3, "_arg1":Z
    :cond_3b
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    .line 1790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1791
    return v2

    .line 1775
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_a2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c

    move v3, v2

    nop

    :cond_3c
    move v1, v3

    .line 1778
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    .line 1779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    return v2

    .line 1762
    .end local v1    # "_arg0":Z
    :pswitch_a3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1766
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1768
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1769
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    .line 1770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1771
    return v2

    .line 1752
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_a4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1755
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 1756
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1757
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1758
    return v2

    .line 1748
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_a5
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$reportAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1732
    :pswitch_a6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1735
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v4

    .line 1736
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1737
    if-eqz v4, :cond_3d

    .line 1738
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    invoke-virtual {v4, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 1742
    :cond_3d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    :goto_22
    return v2

    .line 1716
    .end local v1    # "_arg0":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_a7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1719
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v4

    .line 1720
    .local v4, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    if-eqz v4, :cond_3e

    .line 1722
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    invoke-virtual {v4, p3, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    .line 1726
    :cond_3e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1728
    :goto_23
    return v2

    .line 1709
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v4    # "_result":Landroid/content/Intent;
    :pswitch_a8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->clearPendingBackup()V

    .line 1711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    return v2

    .line 1695
    :pswitch_a9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1699
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    move v3, v2

    nop

    .line 1701
    .local v3, "_arg1":Z
    :cond_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1702
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v5

    .line 1703
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1704
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 1705
    return v2

    .line 1684
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":J
    :pswitch_aa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1688
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1689
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1691
    return v2

    .line 1673
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1677
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1678
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    return v2

    .line 1664
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_ac
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1667
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    .line 1668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    return v2

    .line 1656
    .end local v1    # "_arg0":I
    :pswitch_ad
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v1

    .line 1658
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1660
    return v2

    .line 1647
    .end local v1    # "_result":[I
    :pswitch_ae
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v1

    .line 1650
    .local v1, "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    return v2

    .line 1636
    .end local v1    # "_arg0":Landroid/app/IUserSwitchObserver;
    :pswitch_af
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v1

    .line 1640
    .restart local v1    # "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1641
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    return v2

    .line 1622
    .end local v1    # "_arg0":Landroid/app/IUserSwitchObserver;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_b0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1626
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    move v3, v2

    nop

    .line 1628
    .local v3, "_arg1":Z
    :cond_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v4

    .line 1629
    .local v4, "_arg2":Landroid/app/IStopUserCallback;
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v5

    .line 1630
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    return v2

    .line 1618
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v5    # "_result":I
    :pswitch_b1
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1608
    :pswitch_b2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1611
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderAForegroundService(Landroid/content/IIntentSender;)Z

    move-result v3

    .line 1612
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    return v2

    .line 1598
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_result":Z
    :pswitch_b3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1601
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v3

    .line 1602
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    return v2

    .line 1589
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_result":Z
    :pswitch_b4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1592
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 1593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    return v2

    .line 1579
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_b5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1582
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v3

    .line 1583
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1585
    return v2

    .line 1569
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_b6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1572
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v3

    .line 1573
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1574
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    return v2

    .line 1556
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_b7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    move v1, v2

    goto :goto_24

    :cond_41
    move v1, v3

    .line 1560
    .local v1, "_arg0":Z
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    move v3, v2

    nop

    .line 1562
    .local v3, "_arg1":Z
    :cond_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1563
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->setLockScreenShown(ZZI)V

    .line 1564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1565
    return v2

    .line 1552
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_b8
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$navigateUpTo$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1540
    :pswitch_b9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1544
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1545
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    .line 1546
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    return v2

    .line 1526
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_ba
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1528
    .local v1, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    if-eqz v1, :cond_43

    .line 1530
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    invoke-virtual {v1, p3, v2}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    .line 1534
    :cond_43
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    :goto_25
    return v2

    .line 1516
    .end local v1    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_bb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1519
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v3

    .line 1520
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1522
    return v2

    .line 1500
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_bc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1502
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1503
    .local v1, "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    nop

    .line 1506
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    invoke-virtual {v1, p3, v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1512
    return v2

    .line 1489
    .end local v1    # "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_bd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1494
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    return v2

    .line 1469
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_be
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1473
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1475
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1476
    .local v5, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v4, v5}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/ContentProviderHolder;

    move-result-object v6

    .line 1477
    .local v6, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    if-eqz v6, :cond_44

    .line 1479
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1480
    invoke-virtual {v6, p3, v2}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    .line 1483
    :cond_44
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    :goto_26
    return v2

    .line 1462
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/os/IBinder;
    .end local v6    # "_result":Landroid/app/ContentProviderHolder;
    :pswitch_bf
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    .line 1464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1465
    return v2

    .line 1446
    :pswitch_c0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    .line 1449
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, "_arg0":Ljava/lang/CharSequence;
    goto :goto_27

    .line 1452
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    :cond_45
    nop

    .line 1455
    .restart local v1    # "_arg0":Ljava/lang/CharSequence;
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_46

    move v3, v2

    nop

    .line 1456
    .local v3, "_arg1":Z
    :cond_46
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    return v2

    .line 1436
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_arg1":Z
    :pswitch_c1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1439
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v3

    .line 1440
    .local v3, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1442
    return v2

    .line 1422
    .end local v1    # "_arg0":[I
    .end local v3    # "_result":[J
    :pswitch_c2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_47

    .line 1425
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .local v1, "_arg0":Landroid/content/res/Configuration;
    goto :goto_28

    .line 1428
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    :cond_47
    nop

    .line 1430
    .restart local v1    # "_arg0":Landroid/content/res/Configuration;
    :goto_28
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    return v2

    .line 1412
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    :pswitch_c3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1415
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v3

    .line 1416
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    return v2

    .line 1403
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_result":Z
    :pswitch_c4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v1

    .line 1406
    .local v1, "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    return v2

    .line 1394
    .end local v1    # "_arg0":Landroid/app/IProcessObserver;
    :pswitch_c5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v1

    .line 1397
    .restart local v1    # "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    return v2

    .line 1384
    .end local v1    # "_arg0":Landroid/app/IProcessObserver;
    :pswitch_c6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1387
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v3

    .line 1388
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1390
    return v2

    .line 1375
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1378
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setFocusedTask(I)V

    .line 1379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    return v2

    .line 1365
    .end local v1    # "_arg0":I
    :pswitch_c8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1368
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v3

    .line 1369
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    return v2

    .line 1354
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1358
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_48

    move v3, v2

    nop

    .line 1359
    .local v3, "_arg1":Z
    :cond_48
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    return v2

    .line 1344
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_ca
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1347
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v3

    .line 1348
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    return v2

    .line 1333
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_cb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1337
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1338
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    return v2

    .line 1323
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_cc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1326
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v3

    .line 1327
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    return v2

    .line 1314
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_cd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1317
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setFrontActivityScreenCompatMode(I)V

    .line 1318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    return v2

    .line 1306
    .end local v1    # "_arg0":I
    :pswitch_ce
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v1

    .line 1308
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    return v2

    .line 1298
    .end local v1    # "_result":I
    :pswitch_cf
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1301
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->activitySlept(Landroid/os/IBinder;)V

    .line 1302
    return v2

    .line 1286
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_d0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1290
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1291
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v4

    .line 1292
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    return v2

    .line 1282
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_d1
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivities$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1278
    :pswitch_d2
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$dumpHeap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1274
    :pswitch_d3
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$checkGrantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1270
    :pswitch_d4
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$revokeUriPermissionFromOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1266
    :pswitch_d5
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$grantUriPermissionFromOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1256
    :pswitch_d6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1260
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1262
    return v2

    .line 1239
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_d7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_49

    .line 1242
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg0":Landroid/net/Uri;
    goto :goto_29

    .line 1245
    .end local v1    # "_arg0":Landroid/net/Uri;
    :cond_49
    nop

    .line 1248
    .restart local v1    # "_arg0":Landroid/net/Uri;
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1249
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v4

    .line 1250
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1252
    return v2

    .line 1235
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_d8
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$crashApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1227
    :pswitch_d9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v1

    .line 1229
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    return v2

    .line 1216
    .end local v1    # "_result":Z
    :pswitch_da
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1220
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a

    move v3, v2

    nop

    .line 1221
    .local v3, "_arg1":Z
    :cond_4a
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    return v2

    .line 1206
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_db
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1209
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v3

    .line 1210
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    return v2

    .line 1188
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_dc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1192
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1194
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b

    .line 1195
    sget-object v1, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/StrictMode$ViolationInfo;

    .local v1, "_arg2":Landroid/os/StrictMode$ViolationInfo;
    goto :goto_2a

    .line 1198
    .end local v1    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    :cond_4b
    nop

    .line 1200
    .restart local v1    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    :goto_2a
    invoke-virtual {p0, v3, v4, v1}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    return v2

    .line 1181
    .end local v1    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    :pswitch_dd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    .line 1183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    return v2

    .line 1173
    :pswitch_de
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 1175
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1177
    return v2

    .line 1169
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_df
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityWithConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1159
    :pswitch_e0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1162
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v3

    .line 1163
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    return v2

    .line 1155
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_e1
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAndWait$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1147
    :pswitch_e2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v1

    .line 1149
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    return v2

    .line 1136
    .end local v1    # "_result":Z
    :pswitch_e3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1141
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    return v2

    .line 1132
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_e4
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$handleApplicationWtf$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1128
    :pswitch_e5
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$overridePendingTransition$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1124
    :pswitch_e6
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1113
    :pswitch_e7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1117
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1118
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    return v2

    .line 1103
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_e8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1106
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    .line 1107
    .local v3, "_result":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1109
    return v2

    .line 1094
    .end local v1    # "_arg0":[I
    .end local v3    # "_result":[Landroid/os/Debug$MemoryInfo;
    :pswitch_e9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    return v2

    .line 1090
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_ea
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$killApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1081
    :pswitch_eb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    return v2

    .line 1077
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_ec
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$handleIncomingUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 1067
    :pswitch_ed
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1070
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v3

    .line 1071
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    return v2

    .line 1053
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_result":I
    :pswitch_ee
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4c

    .line 1056
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .local v1, "_arg0":Landroid/content/pm/ApplicationInfo;
    goto :goto_2b

    .line 1059
    .end local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :cond_4c
    nop

    .line 1061
    .restart local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :goto_2b
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    return v2

    .line 1042
    .end local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :pswitch_ef
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1047
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    return v2

    .line 1028
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_f0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1032
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1034
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1035
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v5

    .line 1036
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    return v2

    .line 1021
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_f1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    .line 1023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    return v2

    .line 1014
    :pswitch_f2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    .line 1016
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    return v2

    .line 1004
    :pswitch_f3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1007
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v3

    .line 1008
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    return v2

    .line 1000
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_f4
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$profileControl$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 981
    :pswitch_f5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4d

    .line 984
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_2c

    .line 987
    .end local v1    # "_arg0":Landroid/content/Intent;
    :cond_4d
    nop

    .line 990
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 992
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 993
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 994
    .local v5, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 996
    return v2

    .line 967
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/IBinder;
    :pswitch_f6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 969
    .local v1, "_result":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    if-eqz v1, :cond_4e

    .line 971
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    invoke-virtual {v1, p3, v2}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    .line 975
    :cond_4e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    :goto_2d
    return v2

    .line 959
    .end local v1    # "_result":Landroid/content/pm/ConfigurationInfo;
    :pswitch_f7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 961
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 963
    return v2

    .line 943
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_f8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 946
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    .line 947
    .local v4, "_result":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    if-eqz v4, :cond_4f

    .line 949
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    invoke-virtual {v4, p3, v2}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e

    .line 953
    :cond_4f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    :goto_2e
    return v2

    .line 931
    .end local v1    # "_arg0":I
    .end local v4    # "_result":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_f9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 935
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 936
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v4

    .line 937
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 939
    return v2

    .line 917
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :pswitch_fa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 921
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 923
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50

    move v3, v2

    nop

    .line 924
    .local v3, "_arg2":Z
    :cond_50
    invoke-virtual {p0, v1, v4, v3}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v5

    .line 925
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    return v2

    .line 906
    .end local v1    # "_arg0":[I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_fb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 911
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    return v2

    .line 902
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_fc
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 894
    :pswitch_fd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v1

    .line 896
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 898
    return v2

    .line 878
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_fe
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 881
    .local v1, "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    nop

    .line 884
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    invoke-virtual {v1, p3, v2}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 890
    return v2

    .line 866
    .end local v1    # "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_ff
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 870
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_51

    move v3, v2

    nop

    .line 871
    .local v3, "_arg1":Z
    :cond_51
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v4

    .line 872
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    return v2

    .line 862
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_100
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$setServiceForeground$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 858
    :pswitch_101
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$setProcessImportant$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 840
    :pswitch_102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 844
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_52

    .line 845
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg1":Landroid/content/Intent;
    goto :goto_2f

    .line 848
    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_52
    nop

    .line 851
    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_53

    move v3, v2

    nop

    .line 852
    .local v3, "_arg2":Z
    :cond_53
    invoke-virtual {p0, v4, v1, v3}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    return v2

    .line 830
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg0":Landroid/os/IBinder;
    :pswitch_103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 833
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v3

    .line 834
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    return v2

    .line 819
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 823
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 824
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    return v2

    .line 803
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 806
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getRunningAppProcessesForPid(I)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v4

    .line 807
    .local v4, "_result":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    if-eqz v4, :cond_54

    .line 809
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    invoke-virtual {v4, p3, v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_30

    .line 813
    :cond_54
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    :goto_30
    return v2

    .line 792
    .end local v1    # "_arg0":I
    .end local v4    # "_result":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 796
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    move v3, v2

    nop

    .line 797
    .local v3, "_arg1":Z
    :cond_55
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    return v2

    .line 788
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_107
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$noteWakeupAlarm$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 764
    :pswitch_108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 768
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_56

    .line 769
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .local v4, "_arg1":Landroid/content/Intent;
    goto :goto_31

    .line 772
    .end local v4    # "_arg1":Landroid/content/Intent;
    :cond_56
    move-object v4, v1

    .line 775
    .restart local v4    # "_arg1":Landroid/content/Intent;
    :goto_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_57

    .line 776
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg2":Landroid/os/Bundle;
    goto :goto_32

    .line 779
    .end local v1    # "_arg2":Landroid/os/Bundle;
    :cond_57
    nop

    .line 781
    .restart local v1    # "_arg2":Landroid/os/Bundle;
    :goto_32
    invoke-virtual {p0, v3, v4, v1}, Landroid/app/IActivityManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v5

    .line 782
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    return v2

    .line 757
    .end local v1    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/content/Intent;
    .end local v5    # "_result":Z
    :pswitch_109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    return v2

    .line 746
    :pswitch_10a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 750
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 751
    .local v3, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    return v2

    .line 735
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_10b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 739
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 740
    .restart local v3    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    return v2

    .line 725
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_10c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 728
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 731
    return v2

    .line 716
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_10d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 719
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    return v2

    .line 712
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    :pswitch_10e
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$getIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 704
    :pswitch_10f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 707
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    .line 708
    return v2

    .line 700
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_110
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$serviceDoneExecuting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 680
    :pswitch_111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 684
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 686
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 687
    .local v5, "_arg2":I
    invoke-virtual {p0, v1, v4, v5}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 688
    .local v6, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    if-eqz v6, :cond_58

    .line 690
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    invoke-virtual {v6, p3, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_33

    .line 694
    :cond_58
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    :goto_33
    return v2

    .line 671
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_112
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 674
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    return v2

    .line 660
    .end local v1    # "_arg0":I
    :pswitch_113
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 664
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_59

    move v3, v2

    nop

    .line 665
    .local v3, "_arg1":Z
    :cond_59
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    return v2

    .line 649
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Z
    :pswitch_114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v1

    .line 653
    .local v1, "_arg0":Landroid/app/IActivityController;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a

    move v3, v2

    nop

    .line 654
    .restart local v3    # "_arg1":Z
    :cond_5a
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    return v2

    .line 645
    .end local v1    # "_arg0":Landroid/app/IActivityController;
    .end local v3    # "_arg1":Z
    :pswitch_115
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$revokeUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 641
    :pswitch_116
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$grantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 637
    :pswitch_117
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$checkUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 623
    :pswitch_118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 629
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 630
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 631
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    return v2

    .line 615
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v1

    .line 617
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    return v2

    .line 606
    .end local v1    # "_result":I
    :pswitch_11a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 609
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    return v2

    .line 596
    .end local v1    # "_arg0":I
    :pswitch_11b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 599
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    return v2

    .line 580
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_11c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 583
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v4

    .line 584
    .local v4, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v4, :cond_5b

    .line 586
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v4, p3, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_34

    .line 590
    :cond_5b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    :goto_34
    return v2

    .line 561
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/content/ComponentName;
    :pswitch_11d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5c

    .line 564
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_35

    .line 567
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_5c
    nop

    .line 570
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 572
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 573
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v5

    .line 574
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    return v2

    .line 546
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_11e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5d

    .line 549
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .local v1, "_arg0":Landroid/content/res/Configuration;
    goto :goto_36

    .line 552
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    :cond_5d
    nop

    .line 554
    .restart local v1    # "_arg0":Landroid/content/res/Configuration;
    :goto_36
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v3

    .line 555
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    return v2

    .line 532
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_result":Z
    :pswitch_11f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 534
    .local v1, "_result":Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    if-eqz v1, :cond_5e

    .line 536
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    invoke-virtual {v1, p3, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_37

    .line 540
    :cond_5e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    :goto_37
    return v2

    .line 514
    .end local v1    # "_result":Landroid/content/res/Configuration;
    :pswitch_120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 518
    .local v3, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 520
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f

    .line 521
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg2":Landroid/os/Bundle;
    goto :goto_38

    .line 524
    .end local v1    # "_arg2":Landroid/os/Bundle;
    :cond_5f
    nop

    .line 526
    .restart local v1    # "_arg2":Landroid/os/Bundle;
    :goto_38
    invoke-virtual {p0, v3, v4, v1}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    return v2

    .line 498
    .end local v1    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg0":Landroid/app/IApplicationThread;
    .end local v4    # "_arg1":I
    :pswitch_121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 502
    .restart local v3    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_60

    .line 503
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_39

    .line 506
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_60
    nop

    .line 508
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_39
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    return v2

    .line 494
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_122
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startInstrumentation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 485
    :pswitch_123
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_61

    move v3, v2

    nop

    :cond_61
    move v1, v3

    .line 488
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    return v2

    .line 474
    .end local v1    # "_arg0":Z
    :pswitch_124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    return v2

    .line 461
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 465
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_62

    move v4, v2

    goto :goto_3a

    :cond_62
    move v4, v3

    .line 467
    .local v4, "_arg1":Z
    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_63

    move v3, v2

    nop

    .line 468
    .local v3, "_arg2":Z
    :cond_63
    invoke-virtual {p0, v1, v4, v3}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    return v2

    .line 452
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg1":Z
    :pswitch_126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 455
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->activityResumed(Landroid/os/IBinder;)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    return v2

    .line 434
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_127
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 438
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_64

    .line 439
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg1":Landroid/content/Intent;
    goto :goto_3b

    .line 442
    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_64
    nop

    .line 445
    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 446
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v3, v1, v4}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    return v2

    .line 424
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v1

    .line 427
    .local v1, "_arg0":Landroid/app/IServiceConnection;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v3

    .line 428
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    return v2

    .line 420
    .end local v1    # "_arg0":Landroid/app/IServiceConnection;
    .end local v3    # "_result":Z
    :pswitch_129
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$bindService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 416
    :pswitch_12a
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$stopService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 412
    :pswitch_12b
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 391
    :pswitch_12c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65

    .line 394
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_3c

    .line 397
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_65
    nop

    .line 399
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_3c
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 400
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v4, :cond_66

    .line 402
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    invoke-virtual {v4, p3, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3d

    .line 406
    :cond_66
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    :goto_3d
    return v2

    .line 378
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :pswitch_12d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 382
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 385
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    return v2

    .line 364
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_12e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 368
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 371
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v5

    .line 372
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    return v2

    .line 353
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_12f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 357
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    sget-object v3, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 358
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    return v2

    .line 349
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    :pswitch_130
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$getContentProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 337
    :pswitch_131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 341
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_67

    move v3, v2

    nop

    .line 342
    .local v3, "_arg1":Z
    :cond_67
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v4

    .line 343
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    return v2

    .line 328
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->moveTaskBackwards(I)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    return v2

    .line 310
    .end local v1    # "_arg0":I
    :pswitch_133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 314
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 316
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_68

    .line 317
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg2":Landroid/os/Bundle;
    goto :goto_3e

    .line 320
    .end local v1    # "_arg2":Landroid/os/Bundle;
    :cond_68
    nop

    .line 322
    .restart local v1    # "_arg2":Landroid/os/Bundle;
    :goto_3e
    invoke-virtual {p0, v3, v4, v1}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    return v2

    .line 296
    .end local v1    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_134
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 303
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v5

    .line 304
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 306
    return v2

    .line 286
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_135
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getTasks(I)Ljava/util/List;

    move-result-object v3

    .line 290
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 292
    return v2

    .line 270
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 273
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v4

    .line 274
    .local v4, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v4, :cond_69

    .line 276
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    invoke-virtual {v4, p3, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3f

    .line 280
    :cond_69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    :goto_3f
    return v2

    .line 260
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/content/ComponentName;
    :pswitch_137
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 263
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    return v2

    .line 230
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_138
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 234
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6a

    .line 235
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, "_arg1":Landroid/os/Bundle;
    goto :goto_40

    .line 238
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :cond_6a
    move-object v4, v1

    .line 241
    .restart local v4    # "_arg1":Landroid/os/Bundle;
    :goto_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6b

    .line 242
    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .local v5, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_41

    .line 245
    .end local v5    # "_arg2":Landroid/os/PersistableBundle;
    :cond_6b
    move-object v5, v1

    .line 248
    .restart local v5    # "_arg2":Landroid/os/PersistableBundle;
    :goto_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    .line 249
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, "_arg3":Ljava/lang/CharSequence;
    goto :goto_42

    .line 252
    .end local v1    # "_arg3":Ljava/lang/CharSequence;
    :cond_6c
    nop

    .line 254
    .restart local v1    # "_arg3":Ljava/lang/CharSequence;
    :goto_42
    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/app/IActivityManager$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    return v2

    .line 221
    .end local v1    # "_arg3":Ljava/lang/CharSequence;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/os/Bundle;
    .end local v5    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 224
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->activityPaused(Landroid/os/IBinder;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v2

    .line 204
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_13a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 208
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6d

    .line 209
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .local v1, "_arg1":Landroid/content/res/Configuration;
    goto :goto_43

    .line 212
    .end local v1    # "_arg1":Landroid/content/res/Configuration;
    :cond_6d
    nop

    .line 215
    .restart local v1    # "_arg1":Landroid/content/res/Configuration;
    :goto_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6e

    move v3, v2

    nop

    .line 216
    .local v3, "_arg2":Z
    :cond_6e
    invoke-virtual {p0, v4, v1, v3}, Landroid/app/IActivityManager$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 217
    return v2

    .line 193
    .end local v1    # "_arg1":Landroid/content/res/Configuration;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg0":Landroid/os/IBinder;
    :pswitch_13b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 197
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 198
    .local v3, "_arg1":J
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;J)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    return v2

    .line 189
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":J
    :pswitch_13c
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$finishReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 171
    :pswitch_13d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 175
    .local v3, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6f

    .line 176
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg1":Landroid/content/Intent;
    goto :goto_44

    .line 179
    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_6f
    nop

    .line 182
    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 183
    .local v4, "_arg2":I
    invoke-virtual {p0, v3, v1, v4}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v2

    .line 167
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg0":Landroid/app/IApplicationThread;
    .end local v4    # "_arg2":I
    :pswitch_13e
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$broadcastIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 158
    :pswitch_13f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v1

    .line 161
    .local v1, "_arg0":Landroid/content/IIntentReceiver;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    return v2

    .line 154
    .end local v1    # "_arg0":Landroid/content/IIntentReceiver;
    :pswitch_140
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$registerReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 133
    :pswitch_141
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 137
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 139
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_70

    .line 140
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg2":Landroid/content/Intent;
    goto :goto_45

    .line 143
    .end local v1    # "_arg2":Landroid/content/Intent;
    :cond_70
    nop

    .line 146
    .restart local v1    # "_arg2":Landroid/content/Intent;
    :goto_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 147
    .local v5, "_arg3":I
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v6

    .line 148
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return v2

    .line 126
    .end local v1    # "_arg2":Landroid/content/Intent;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    return v2

    .line 122
    :pswitch_143
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 106
    :pswitch_144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 110
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71

    .line 111
    sget-object v1, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .local v1, "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    goto :goto_46

    .line 114
    .end local v1    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    :cond_71
    nop

    .line 116
    .restart local v1    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    :goto_46
    invoke-virtual {p0, v3, v1}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v2

    .line 94
    .end local v1    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_145
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IActivityManager$Stub;->isUidActive(ILjava/lang/String;)Z

    move-result v4

    .line 100
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v2

    .line 85
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 88
    .local v1, "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v2

    .line 70
    .end local v1    # "_arg0":Landroid/app/IUidObserver;
    :pswitch_147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 74
    .restart local v1    # "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 78
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v2

    .line 54
    .end local v1    # "_arg0":Landroid/app/IUidObserver;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 58
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v4, :cond_72

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v4, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_47

    .line 64
    :cond_72
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    :goto_47
    return v2

    .line 49
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
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
