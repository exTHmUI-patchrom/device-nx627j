.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_addQsTile:I = 0x25

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x18

.field static final TRANSACTION_appTransitionFinished:I = 0x1a

.field static final TRANSACTION_appTransitionPending:I = 0x17

.field static final TRANSACTION_appTransitionStarting:I = 0x19

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_clickQsTile:I = 0x27

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x15

.field static final TRANSACTION_handleGameCall:I = 0x29

.field static final TRANSACTION_handleSystemKey:I = 0x28

.field static final TRANSACTION_hideFingerprintDialog:I = 0x31

.field static final TRANSACTION_hideRecentApps:I = 0xe

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1d

.field static final TRANSACTION_onFingerprintAuthenticated:I = 0x2e

.field static final TRANSACTION_onFingerprintError:I = 0x30

.field static final TRANSACTION_onFingerprintHelp:I = 0x2f

.field static final TRANSACTION_onProposedRotationChanged:I = 0x23

.field static final TRANSACTION_onWindowChanged:I = 0x14

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_remQsTile:I = 0x26

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0xb

.field static final TRANSACTION_setMessengerRedPacket:I = 0x21

.field static final TRANSACTION_setNavigationBarIconColor:I = 0x1f

.field static final TRANSACTION_setSpecialStatusBar:I = 0x1e

.field static final TRANSACTION_setSystemUiVisibility:I = 0x9

.field static final TRANSACTION_setTopAppHidesStatusBar:I = 0x24

.field static final TRANSACTION_setWindowState:I = 0xc

.field static final TRANSACTION_showAssistDisclosure:I = 0x1b

.field static final TRANSACTION_showFingerprintDialog:I = 0x2d

.field static final TRANSACTION_showGlobalActionsMenu:I = 0x22

.field static final TRANSACTION_showPictureInPictureMenu:I = 0x20

.field static final TRANSACTION_showPinningEnterExitToast:I = 0x2a

.field static final TRANSACTION_showPinningEscapeToast:I = 0x2b

.field static final TRANSACTION_showRecentApps:I = 0xd

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_showShutdownUi:I = 0x2c

.field static final TRANSACTION_showWirelessChargingAnimation:I = 0x8

.field static final TRANSACTION_startAssist:I = 0x1c

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x16

.field static final TRANSACTION_togglePanel:I = 0x7

.field static final TRANSACTION_toggleRecentApps:I = 0xf

.field static final TRANSACTION_toggleSplitScreen:I = 0x10

.field static final TRANSACTION_topAppWindowChanged:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    .line 39
    const-string v10, "com.android.internal.statusbar.IStatusBar"

    .line 40
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v8, :pswitch_data_0

    .line 487
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 481
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideFingerprintDialog()V

    .line 483
    return v11

    .line 473
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFingerprintError(Ljava/lang/String;)V

    .line 477
    return v11

    .line 465
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFingerprintHelp(Ljava/lang/String;)V

    .line 469
    return v11

    .line 459
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onFingerprintAuthenticated()V

    .line 461
    return v11

    .line 444
    :pswitch_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .line 450
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_0
    nop

    .line 453
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v1

    .line 454
    .local v1, "_arg1":Landroid/hardware/biometrics/IBiometricPromptReceiver;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    .line 455
    return v11

    .line 434
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":Landroid/hardware/biometrics/IBiometricPromptReceiver;
    :pswitch_5
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v11

    nop

    :cond_1
    move v0, v1

    .line 438
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    .line 440
    return v11

    .line 428
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    .line 430
    return v11

    .line 420
    :pswitch_7
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v11

    nop

    :cond_2
    move v0, v1

    .line 423
    .restart local v0    # "_arg0":Z
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    .line 424
    return v11

    .line 412
    .end local v0    # "_arg0":Z
    :pswitch_8
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleGameCall(Ljava/lang/String;)V

    .line 416
    return v11

    .line 404
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 407
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(I)V

    .line 408
    return v11

    .line 391
    .end local v0    # "_arg0":I
    :pswitch_a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 397
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_3
    nop

    .line 399
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    .line 400
    return v11

    .line 378
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 384
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_4
    nop

    .line 386
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    .line 387
    return v11

    .line 365
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 371
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_5
    nop

    .line 373
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    .line 374
    return v11

    .line 357
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v11

    nop

    :cond_6
    move v0, v1

    .line 360
    .local v0, "_arg0":Z
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    .line 361
    return v11

    .line 347
    .end local v0    # "_arg0":Z
    :pswitch_e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v1, v11

    nop

    .line 352
    .local v1, "_arg1":Z
    :cond_7
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    .line 353
    return v11

    .line 341
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    .line 343
    return v11

    .line 331
    :pswitch_10
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 335
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 336
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setMessengerRedPacket(Landroid/os/IBinder;I)V

    .line 337
    return v11

    .line 325
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_11
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    .line 327
    return v11

    .line 317
    :pswitch_12
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarIconColor(I)V

    .line 321
    return v11

    .line 305
    .end local v0    # "_arg0":I
    :pswitch_13
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v11

    nop

    .line 312
    .local v1, "_arg2":Z
    :cond_8
    invoke-virtual {v7, v0, v2, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSpecialStatusBar(Ljava/lang/String;IZ)V

    .line 313
    return v11

    .line 297
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":I
    :pswitch_14
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 301
    return v11

    .line 284
    .end local v0    # "_arg0":I
    :pswitch_15
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 287
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 290
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_9
    nop

    .line 292
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 293
    return v11

    .line 278
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_16
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 280
    return v11

    .line 272
    :pswitch_17
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished()V

    .line 274
    return v11

    .line 262
    :pswitch_18
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 266
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 267
    .local v2, "_arg1":J
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    .line 268
    return v11

    .line 256
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    :pswitch_19
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    .line 258
    return v11

    .line 250
    :pswitch_1a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    .line 252
    return v11

    .line 242
    :pswitch_1b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    .line 246
    return v11

    .line 236
    .end local v0    # "_arg0":I
    :pswitch_1c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    .line 238
    return v11

    .line 226
    :pswitch_1d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onWindowChanged(ILjava/lang/String;)V

    .line 232
    return v11

    .line 218
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    .line 222
    return v11

    .line 212
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 214
    return v11

    .line 206
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 208
    return v11

    .line 200
    :pswitch_21
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    .line 202
    return v11

    .line 194
    :pswitch_22
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 196
    return v11

    .line 184
    :pswitch_23
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v11

    goto :goto_5

    :cond_a
    move v0, v1

    .line 188
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v1, v11

    nop

    .line 189
    .local v1, "_arg1":Z
    :cond_b
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 190
    return v11

    .line 176
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_24
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v1, v11

    nop

    :cond_c
    move v0, v1

    .line 179
    .restart local v0    # "_arg0":Z
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 180
    return v11

    .line 166
    .end local v0    # "_arg0":Z
    :pswitch_25
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    .line 172
    return v11

    .line 152
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_26
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 156
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    move v1, v11

    nop

    .line 161
    .local v1, "_arg3":Z
    :cond_d
    invoke-virtual {v7, v0, v2, v3, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 162
    return v11

    .line 144
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg3":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_27
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v1, v11

    nop

    :cond_e
    move v0, v1

    .line 147
    .local v0, "_arg0":Z
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    .line 148
    return v11

    .line 116
    .end local v0    # "_arg0":Z
    :pswitch_28
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 120
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 122
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 124
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 126
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 127
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 130
    .local v1, "_arg4":Landroid/graphics/Rect;
    move-object v5, v1

    goto :goto_6

    .end local v1    # "_arg4":Landroid/graphics/Rect;
    :cond_f
    move-object v5, v0

    .line 133
    .local v5, "_arg4":Landroid/graphics/Rect;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 134
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 137
    .local v6, "_arg5":Landroid/graphics/Rect;
    :goto_7
    move-object v6, v0

    goto :goto_8

    .end local v6    # "_arg5":Landroid/graphics/Rect;
    :cond_10
    goto :goto_7

    .line 139
    .restart local v6    # "_arg5":Landroid/graphics/Rect;
    :goto_8
    move-object v0, v7

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 140
    return v11

    .line 108
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/graphics/Rect;
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    :pswitch_29
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    .line 112
    return v11

    .line 102
    .end local v0    # "_arg0":I
    :pswitch_2a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->togglePanel()V

    .line 104
    return v11

    .line 96
    :pswitch_2b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 98
    return v11

    .line 88
    :pswitch_2c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 92
    return v11

    .line 82
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 84
    return v11

    .line 72
    :pswitch_2e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    .line 78
    return v11

    .line 64
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    .line 68
    return v11

    .line 49
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_30
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 54
    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .local v0, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_9

    .line 57
    .end local v0    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_11
    nop

    .line 59
    .restart local v0    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_9
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 60
    return v11

    .line 44
    .end local v0    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v1    # "_arg0":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
