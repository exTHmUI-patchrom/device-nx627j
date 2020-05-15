.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addWindowToken:I = 0x11

.field static final TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x4c

.field static final TRANSACTION_closeSystemDialogs:I = 0x2c

.field static final TRANSACTION_createInputConsumer:I = 0x56

.field static final TRANSACTION_destroyInputConsumer:I = 0x57

.field static final TRANSACTION_disableKeyguard:I = 0x25

.field static final TRANSACTION_dismissKeyguard:I = 0x2a

.field static final TRANSACTION_dontOverrideDisplayInfo:I = 0x5e

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x4b

.field static final TRANSACTION_endProlongedAnimations:I = 0x20

.field static final TRANSACTION_executeAppTransition:I = 0x1f

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x27

.field static final TRANSACTION_freezeRotation:I = 0x3b

.field static final TRANSACTION_getAnimationScale:I = 0x2d

.field static final TRANSACTION_getAnimationScales:I = 0x2e

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x31

.field static final TRANSACTION_getCurrentImeTouchRegion:I = 0x58

.field static final TRANSACTION_getDefaultDisplayRotation:I = 0x37

.field static final TRANSACTION_getDockedStackSide:I = 0x4e

.field static final TRANSACTION_getFactoryFlag:I = 0x60

.field static final TRANSACTION_getHasVisibleWindowUidSet:I = 0x64

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getNavBarPosition:I = 0x48

.field static final TRANSACTION_getNaviGestureStubListener:I = 0x65

.field static final TRANSACTION_getPendingAppTransition:I = 0x15

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x3a

.field static final TRANSACTION_getProcessWindowVisibleState:I = 0x5d

.field static final TRANSACTION_getStableInsets:I = 0x54

.field static final TRANSACTION_getWallpaperPositionX:I = 0x61

.field static final TRANSACTION_getWallpaperPositionY:I = 0x62

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x4d

.field static final TRANSACTION_hasNavigationBar:I = 0x47

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x28

.field static final TRANSACTION_isKeyguardSecure:I = 0x29

.field static final TRANSACTION_isRotationFrozen:I = 0x3d

.field static final TRANSACTION_isSafeModeEnabled:I = 0x4a

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_isWindowTraceEnabled:I = 0x5b

.field static final TRANSACTION_lockNow:I = 0x49

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x16

.field static final TRANSACTION_overridePendingAppTransitionAspectScaledThumb:I = 0x1a

.field static final TRANSACTION_overridePendingAppTransitionClipReveal:I = 0x18

.field static final TRANSACTION_overridePendingAppTransitionInPlace:I = 0x1c

.field static final TRANSACTION_overridePendingAppTransitionMultiThumb:I = 0x1b

.field static final TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x1d

.field static final TRANSACTION_overridePendingAppTransitionRemote:I = 0x1e

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x17

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x19

.field static final TRANSACTION_prepareAppTransition:I = 0x14

.field static final TRANSACTION_reenableKeyguard:I = 0x26

.field static final TRANSACTION_refreshScreenCaptureDisabled:I = 0x35

.field static final TRANSACTION_registerDockedStackListener:I = 0x50

.field static final TRANSACTION_registerPinnedStackListener:I = 0x51

.field static final TRANSACTION_registerShortcutKey:I = 0x55

.field static final TRANSACTION_registerWallpaperVisibilityListener:I = 0x3f

.field static final TRANSACTION_removeRotationWatcher:I = 0x39

.field static final TRANSACTION_removeWindowToken:I = 0x12

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x53

.field static final TRANSACTION_requestAssistScreenshot:I = 0x41

.field static final TRANSACTION_requestUserActivityNotification:I = 0x5c

.field static final TRANSACTION_screenshotWallpaper:I = 0x3e

.field static final TRANSACTION_setAnimationScale:I = 0x2f

.field static final TRANSACTION_setAnimationScales:I = 0x30

.field static final TRANSACTION_setDockedStackDividerTouchRegion:I = 0x4f

.field static final TRANSACTION_setEventDispatching:I = 0x10

.field static final TRANSACTION_setFactoryFlag:I = 0x5f

.field static final TRANSACTION_setFocusedApp:I = 0x13

.field static final TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x32

.field static final TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled:I = 0x46

.field static final TRANSACTION_setNewDisplayOverrideConfiguration:I = 0x22

.field static final TRANSACTION_setOverscan:I = 0xf

.field static final TRANSACTION_setPipVisibility:I = 0x44

.field static final TRANSACTION_setRecentsVisibility:I = 0x43

.field static final TRANSACTION_setResizeDimLayer:I = 0x52

.field static final TRANSACTION_setShelfHeight:I = 0x45

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x34

.field static final TRANSACTION_setSwitchingUser:I = 0x2b

.field static final TRANSACTION_showStatusBar:I = 0x63

.field static final TRANSACTION_showStrictModeViolation:I = 0x33

.field static final TRANSACTION_startFreezingScreen:I = 0x23

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_startWindowTrace:I = 0x59

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x42

.field static final TRANSACTION_stopFreezingScreen:I = 0x24

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_stopWindowTrace:I = 0x5a

.field static final TRANSACTION_thawRotation:I = 0x3c

.field static final TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x40

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x21

.field static final TRANSACTION_updateRotation:I = 0x36

.field static final TRANSACTION_watchRotation:I = 0x38


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "android.view.IWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowManager;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 44
    const-string v12, "android.view.IWindowManager"

    .line 45
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_20

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v9, :pswitch_data_0

    .line 1155
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1147
    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getNaviGestureStubListener()Landroid/view/INaviGestureStubListener;

    move-result-object v1

    .line 1149
    .local v1, "_result":Landroid/view/INaviGestureStubListener;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/INaviGestureStubListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_0
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1151
    return v13

    .line 1139
    .end local v1    # "_result":Landroid/view/INaviGestureStubListener;
    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getHasVisibleWindowUidSet()[I

    move-result-object v0

    .line 1141
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1143
    return v13

    .line 1132
    .end local v0    # "_result":[I
    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->showStatusBar()V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    return v13

    .line 1124
    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getWallpaperPositionY()F

    move-result v0

    .line 1126
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1128
    return v13

    .line 1116
    .end local v0    # "_result":F
    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getWallpaperPositionX()F

    move-result v0

    .line 1118
    .restart local v0    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1120
    return v13

    .line 1108
    .end local v0    # "_result":F
    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getFactoryFlag()Z

    move-result v0

    .line 1110
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    return v13

    .line 1099
    .end local v0    # "_result":Z
    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v13

    nop

    :cond_1
    move v0, v2

    .line 1102
    .local v0, "_arg0":Z
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->setFactoryFlag(Z)V

    .line 1103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    return v13

    .line 1090
    .end local v0    # "_arg0":Z
    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1093
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->dontOverrideDisplayInfo(I)V

    .line 1094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    return v13

    .line 1080
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1083
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->getProcessWindowVisibleState(I)Z

    move-result v1

    .line 1084
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    return v13

    .line 1073
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->requestUserActivityNotification()V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    return v13

    .line 1065
    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isWindowTraceEnabled()Z

    move-result v0

    .line 1067
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    return v13

    .line 1058
    .end local v0    # "_result":Z
    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopWindowTrace()V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    return v13

    .line 1051
    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->startWindowTrace()V

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    return v13

    .line 1037
    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 1039
    .local v0, "_result":Landroid/graphics/Region;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    if-eqz v0, :cond_2

    .line 1041
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    invoke-virtual {v0, v11, v13}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1045
    :cond_2
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    :goto_0
    return v13

    .line 1027
    .end local v0    # "_result":Landroid/graphics/Region;
    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Ljava/lang/String;)Z

    move-result v1

    .line 1031
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    return v13

    .line 1007
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1011
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, "_arg1":Ljava/lang/String;
    new-instance v2, Landroid/view/InputChannel;

    invoke-direct {v2}, Landroid/view/InputChannel;-><init>()V

    .line 1014
    .local v2, "_arg2":Landroid/view/InputChannel;
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    nop

    .line 1017
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    invoke-virtual {v2, v11, v13}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1023
    return v13

    .line 996
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/view/InputChannel;
    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1000
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v2

    .line 1001
    .local v2, "_arg1":Lcom/android/internal/policy/IShortcutService;
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    return v13

    .line 978
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :pswitch_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 982
    .local v0, "_arg0":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 983
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    nop

    .line 986
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    invoke-virtual {v1, v11, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 992
    return v13

    .line 967
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :pswitch_12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 971
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 972
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    return v13

    .line 954
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v2, v13

    nop

    :cond_3
    move v0, v2

    .line 958
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 960
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 961
    .local v2, "_arg2":F
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setResizeDimLayer(ZIF)V

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    return v13

    .line 943
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    :pswitch_14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 947
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IPinnedStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedStackListener;

    move-result-object v1

    .line 948
    .local v1, "_arg1":Landroid/view/IPinnedStackListener;
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V

    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    return v13

    .line 934
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/IPinnedStackListener;
    :pswitch_15
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IDockedStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;

    move-result-object v0

    .line 937
    .local v0, "_arg0":Landroid/view/IDockedStackListener;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    return v13

    .line 920
    .end local v0    # "_arg0":Landroid/view/IDockedStackListener;
    :pswitch_16
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 923
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .local v0, "_arg0":Landroid/graphics/Rect;
    goto :goto_1

    .line 926
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :cond_4
    nop

    .line 928
    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    return v13

    .line 912
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :pswitch_17
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v0

    .line 914
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    return v13

    .line 896
    .end local v0    # "_result":I
    :pswitch_18
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 899
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v1

    .line 900
    .local v1, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    if-eqz v1, :cond_5

    .line 902
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    invoke-virtual {v1, v11, v13}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 906
    :cond_5
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    :goto_2
    return v13

    .line 886
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/view/WindowContentFrameStats;
    :pswitch_19
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 889
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v1

    .line 890
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    return v13

    .line 879
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_1a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    return v13

    .line 871
    :pswitch_1b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v0

    .line 873
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    return v13

    .line 857
    .end local v0    # "_result":Z
    :pswitch_1c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 860
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 863
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_6
    nop

    .line 865
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    return v13

    .line 849
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_1d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getNavBarPosition()I

    move-result v0

    .line 851
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    return v13

    .line 841
    .end local v0    # "_result":I
    :pswitch_1e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v0

    .line 843
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    return v13

    .line 832
    .end local v0    # "_result":Z
    :pswitch_1f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v2, v13

    nop

    :cond_7
    move v0, v2

    .line 835
    .local v0, "_arg0":Z
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    return v13

    .line 821
    .end local v0    # "_arg0":Z
    :pswitch_20
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v2, v13

    nop

    :cond_8
    move v0, v2

    .line 825
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 826
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->setShelfHeight(ZI)V

    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    return v13

    .line 813
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_21
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v2, v13

    nop

    :cond_9
    move v0, v2

    .line 816
    .restart local v0    # "_arg0":Z
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->setPipVisibility(Z)V

    .line 817
    return v13

    .line 805
    .end local v0    # "_arg0":Z
    :pswitch_22
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v2, v13

    nop

    :cond_a
    move v0, v2

    .line 808
    .restart local v0    # "_arg0":Z
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 809
    return v13

    .line 797
    .end local v0    # "_arg0":Z
    :pswitch_23
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 800
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 801
    return v13

    .line 787
    .end local v0    # "_arg0":I
    :pswitch_24
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 790
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z

    move-result v1

    .line 791
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    return v13

    .line 776
    .end local v0    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v1    # "_result":Z
    :pswitch_25
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v0

    .line 780
    .local v0, "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 781
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    return v13

    .line 764
    .end local v0    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v1    # "_arg1":I
    :pswitch_26
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v0

    .line 768
    .restart local v0    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 769
    .restart local v1    # "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v2

    .line 770
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    return v13

    .line 750
    .end local v0    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_27
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 752
    .local v0, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    if-eqz v0, :cond_b

    .line 754
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    invoke-virtual {v0, v11, v13}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 758
    :cond_b
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    :goto_4
    return v13

    .line 742
    .end local v0    # "_result":Landroid/graphics/Bitmap;
    :pswitch_28
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v0

    .line 744
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    return v13

    .line 735
    .end local v0    # "_result":Z
    :pswitch_29
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    return v13

    .line 726
    :pswitch_2a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 729
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    return v13

    .line 718
    .end local v0    # "_arg0":I
    :pswitch_2b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v0

    .line 720
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    return v13

    .line 709
    .end local v0    # "_result":I
    :pswitch_2c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v0

    .line 712
    .local v0, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    return v13

    .line 697
    .end local v0    # "_arg0":Landroid/view/IRotationWatcher;
    :pswitch_2d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v0

    .line 701
    .restart local v0    # "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 702
    .restart local v1    # "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v2

    .line 703
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    return v13

    .line 689
    .end local v0    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_2e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result v0

    .line 691
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    return v13

    .line 678
    .end local v0    # "_result":I
    :pswitch_2f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v13

    goto :goto_5

    :cond_c
    move v0, v2

    .line 682
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    move v2, v13

    nop

    :cond_d
    move v1, v2

    .line 683
    .local v1, "_arg1":Z
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    return v13

    .line 669
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_30
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 672
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->refreshScreenCaptureDisabled(I)V

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    return v13

    .line 660
    .end local v0    # "_arg0":I
    :pswitch_31
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    return v13

    .line 651
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v2, v13

    nop

    :cond_e
    move v0, v2

    .line 654
    .local v0, "_arg0":Z
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    return v13

    .line 642
    .end local v0    # "_arg0":Z
    :pswitch_33
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v2, v13

    nop

    :cond_f
    move v0, v2

    .line 645
    .restart local v0    # "_arg0":Z
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    return v13

    .line 634
    .end local v0    # "_arg0":Z
    :pswitch_34
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v0

    .line 636
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 638
    return v13

    .line 625
    .end local v0    # "_result":F
    :pswitch_35
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 628
    .local v0, "_arg0":[F
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    return v13

    .line 614
    .end local v0    # "_arg0":[F
    :pswitch_36
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 618
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 619
    .local v1, "_arg1":F
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    return v13

    .line 606
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_37
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v0

    .line 608
    .local v0, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 610
    return v13

    .line 596
    .end local v0    # "_result":[F
    :pswitch_38
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 599
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v1

    .line 600
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 602
    return v13

    .line 587
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_39
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    return v13

    .line 578
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v2, v13

    nop

    :cond_10
    move v0, v2

    .line 581
    .local v0, "_arg0":Z
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    return v13

    .line 562
    .end local v0    # "_arg0":Z
    :pswitch_3b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v1

    .line 566
    .local v1, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 567
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "_arg1":Ljava/lang/CharSequence;
    goto :goto_6

    .line 570
    .end local v0    # "_arg1":Ljava/lang/CharSequence;
    :cond_11
    nop

    .line 572
    .restart local v0    # "_arg1":Ljava/lang/CharSequence;
    :goto_6
    invoke-virtual {v8, v1, v0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    return v13

    .line 554
    .end local v0    # "_arg1":Ljava/lang/CharSequence;
    .end local v1    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    :pswitch_3c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v0

    .line 556
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    return v13

    .line 546
    .end local v0    # "_result":Z
    :pswitch_3d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v0

    .line 548
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    return v13

    .line 537
    .end local v0    # "_result":Z
    :pswitch_3e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v0

    .line 540
    .local v0, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    return v13

    .line 528
    .end local v0    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :pswitch_3f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 531
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    return v13

    .line 517
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_40
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 521
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    return v13

    .line 510
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_41
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    return v13

    .line 499
    :pswitch_42
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 503
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    return v13

    .line 482
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_43
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 485
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .local v0, "_arg0":Landroid/content/res/Configuration;
    goto :goto_7

    .line 488
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    :cond_12
    nop

    .line 491
    .restart local v0    # "_arg0":Landroid/content/res/Configuration;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 492
    .restart local v1    # "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)[I

    move-result-object v2

    .line 493
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 495
    return v13

    .line 457
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[I
    :pswitch_44
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 460
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .restart local v0    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_8

    .line 463
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    :cond_13
    nop

    .line 466
    .restart local v0    # "_arg0":Landroid/content/res/Configuration;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 468
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 469
    .local v3, "_arg2":I
    invoke-virtual {v8, v0, v1, v3}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 470
    .local v4, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v4, :cond_14

    .line 472
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    invoke-virtual {v4, v11, v13}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 476
    :cond_14
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    :goto_9
    return v13

    .line 450
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/res/Configuration;
    :pswitch_45
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    return v13

    .line 443
    :pswitch_46
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    return v13

    .line 429
    :pswitch_47
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 432
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    .local v0, "_arg0":Landroid/view/RemoteAnimationAdapter;
    goto :goto_a

    .line 435
    .end local v0    # "_arg0":Landroid/view/RemoteAnimationAdapter;
    :cond_15
    nop

    .line 437
    .restart local v0    # "_arg0":Landroid/view/RemoteAnimationAdapter;
    :goto_a
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    return v13

    .line 416
    .end local v0    # "_arg0":Landroid/view/RemoteAnimationAdapter;
    :pswitch_48
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v0

    .line 420
    .local v0, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 422
    .local v1, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    move v2, v13

    nop

    .line 423
    .local v2, "_arg2":Z
    :cond_16
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    return v13

    .line 405
    .end local v0    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v1    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v2    # "_arg2":Z
    :pswitch_49
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 410
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionInPlace(Ljava/lang/String;I)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    return v13

    .line 390
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_4a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    sget-object v0, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/AppTransitionAnimationSpec;

    .line 394
    .local v0, "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 396
    .local v1, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 398
    .local v3, "_arg2":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    move v2, v13

    nop

    .line 399
    .local v2, "_arg3":Z
    :cond_17
    invoke-virtual {v8, v0, v1, v3, v2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    return v13

    .line 364
    .end local v0    # "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    .end local v1    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v2    # "_arg3":Z
    .end local v3    # "_arg2":Landroid/os/IRemoteCallback;
    :pswitch_4b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 367
    sget-object v0, Landroid/graphics/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicBuffer;

    .line 370
    .local v1, "_arg0":Landroid/graphics/GraphicBuffer;
    :goto_b
    move-object v1, v0

    goto :goto_c

    .end local v1    # "_arg0":Landroid/graphics/GraphicBuffer;
    :cond_18
    goto :goto_b

    .line 373
    .restart local v1    # "_arg0":Landroid/graphics/GraphicBuffer;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 375
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 377
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 379
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 381
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v18

    .line 383
    .local v18, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    move v7, v13

    goto :goto_d

    :cond_19
    move v7, v2

    .line 384
    .local v7, "_arg6":Z
    :goto_d
    move-object v0, v8

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    return v13

    .line 342
    .end local v1    # "_arg0":Landroid/graphics/GraphicBuffer;
    .end local v7    # "_arg6":Z
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/IRemoteCallback;
    :pswitch_4c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 345
    sget-object v0, Landroid/graphics/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicBuffer;

    .line 348
    .restart local v1    # "_arg0":Landroid/graphics/GraphicBuffer;
    :goto_e
    move-object v1, v0

    goto :goto_f

    .end local v1    # "_arg0":Landroid/graphics/GraphicBuffer;
    :cond_1a
    goto :goto_e

    .line 351
    .restart local v1    # "_arg0":Landroid/graphics/GraphicBuffer;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 353
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 355
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v14

    .line 357
    .local v14, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    move v5, v13

    goto :goto_10

    :cond_1b
    move v5, v2

    .line 358
    .local v5, "_arg4":Z
    :goto_10
    move-object v0, v8

    move v2, v6

    move v3, v7

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    return v13

    .line 327
    .end local v1    # "_arg0":Landroid/graphics/GraphicBuffer;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v14    # "_arg3":Landroid/os/IRemoteCallback;
    :pswitch_4d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 336
    .local v3, "_arg3":I
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionClipReveal(IIII)V

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    return v13

    .line 312
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_4e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 316
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 321
    .restart local v3    # "_arg3":I
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    return v13

    .line 297
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_4f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 305
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 306
    .local v3, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    return v13

    .line 289
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IRemoteCallback;
    :pswitch_50
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v0

    .line 291
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return v13

    .line 278
    .end local v0    # "_result":I
    :pswitch_51
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    move v2, v13

    nop

    :cond_1c
    move v1, v2

    .line 283
    .local v1, "_arg1":Z
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    return v13

    .line 267
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_52
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 271
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    move v2, v13

    nop

    :cond_1d
    move v1, v2

    .line 272
    .restart local v1    # "_arg1":Z
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    return v13

    .line 256
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_53
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 260
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    return v13

    .line 243
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_54
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 247
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .restart local v2    # "_arg2":I
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;II)V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    return v13

    .line 234
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_55
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    move v2, v13

    nop

    :cond_1e
    move v0, v2

    .line 237
    .local v0, "_arg0":Z
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    return v13

    .line 217
    .end local v0    # "_arg0":Z
    :pswitch_56
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 221
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 223
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 225
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 227
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 228
    .local v16, "_arg4":I
    move-object v0, v8

    move v1, v6

    move v2, v7

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    return v13

    .line 206
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_57
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .restart local v1    # "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    return v13

    .line 195
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_58
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .restart local v1    # "_arg1":I
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    return v13

    .line 182
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_59
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg2":I
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    return v13

    .line 172
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_5a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v1

    .line 176
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    return v13

    .line 162
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v1

    .line 166
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return v13

    .line 153
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v13

    .line 140
    .end local v0    # "_arg0":I
    :pswitch_5d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg2":I
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    return v13

    .line 122
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_5e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 127
    .local v1, "_arg1":Landroid/graphics/Point;
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    nop

    .line 130
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v1, v11, v13}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 136
    return v13

    .line 104
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :pswitch_5f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 109
    .restart local v1    # "_arg1":Landroid/graphics/Point;
    invoke-virtual {v8, v0, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    nop

    .line 112
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {v1, v11, v13}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    return v13

    .line 94
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :pswitch_60
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 97
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    .line 98
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v13

    .line 80
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_result":Z
    :pswitch_61
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v1

    .line 84
    .local v1, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 86
    .local v2, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v3

    .line 87
    .local v3, "_arg2":Lcom/android/internal/view/IInputContext;
    invoke-virtual {v8, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v4

    .line 88
    .local v4, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v4, :cond_1f

    invoke-interface {v4}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_1f
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 90
    return v13

    .line 72
    .end local v1    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v2    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v3    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v4    # "_result":Landroid/view/IWindowSession;
    :pswitch_62
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v0

    .line 74
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return v13

    .line 64
    .end local v0    # "_result":Z
    :pswitch_63
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v0

    .line 66
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return v13

    .line 54
    .end local v0    # "_result":Z
    :pswitch_64
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v1

    .line 58
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v13

    .line 49
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :cond_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
