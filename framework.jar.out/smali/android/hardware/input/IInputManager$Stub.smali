.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0x11

.field static final TRANSACTION_cancelVibrate:I = 0x17

.field static final TRANSACTION_createInputForwarder:I = 0x1e

.field static final TRANSACTION_disableInputDevice:I = 0x5

.field static final TRANSACTION_enableInputDevice:I = 0x4

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_getEdgeDeviceWidth:I = 0x1b

.field static final TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0x10

.field static final TRANSACTION_getGamepadDeviceId:I = 0x28

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0xd

.field static final TRANSACTION_getKeyboardLayouts:I = 0xb

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xc

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x9

.field static final TRANSACTION_hasKeys:I = 0x6

.field static final TRANSACTION_injectInputEvent:I = 0x8

.field static final TRANSACTION_isGlobalKeyEnable:I = 0x21

.field static final TRANSACTION_isInTabletMode:I = 0x14

.field static final TRANSACTION_isInputDeviceEnabled:I = 0x3

.field static final TRANSACTION_myInput:I = 0x1f

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x13

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x15

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0x12

.field static final TRANSACTION_requestPointerCapture:I = 0x1c

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xf

.field static final TRANSACTION_setCustomPointerIcon:I = 0x19

.field static final TRANSACTION_setDoubleScreenTouchEnable:I = 0x29

.field static final TRANSACTION_setDoubleScreenTouchRects:I = 0x2a

.field static final TRANSACTION_setEdgeDeviceWidth:I = 0x1a

.field static final TRANSACTION_setGamepadEnable:I = 0x22

.field static final TRANSACTION_setGamepadID:I = 0x23

.field static final TRANSACTION_setGlobalKeyEnable:I = 0x20

.field static final TRANSACTION_setJoystickCenterOffset:I = 0x27

.field static final TRANSACTION_setJoystickDirection:I = 0x26

.field static final TRANSACTION_setJoystickTouchRange:I = 0x25

.field static final TRANSACTION_setKeyTouchPoint:I = 0x24

.field static final TRANSACTION_setPointerIconType:I = 0x18

.field static final TRANSACTION_setPressKeyListener:I = 0x1d

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0xa

.field static final TRANSACTION_tryPointerSpeed:I = 0x7

.field static final TRANSACTION_vibrate:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "android.hardware.input.IInputManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Landroid/hardware/input/IInputManager;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
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

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 40
    const-string v10, "android.hardware.input.IInputManager"

    .line 41
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_15

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    .line 558
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 546
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 550
    .local v0, "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Rect;

    .line 552
    .local v1, "_arg1":[Landroid/graphics/Rect;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    .line 553
    .local v2, "_arg2":[Landroid/graphics/Rect;
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setDoubleScreenTouchRects(I[Landroid/graphics/Rect;[Landroid/graphics/Rect;)V

    .line 554
    return v11

    .line 536
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/graphics/Rect;
    .end local v2    # "_arg2":[Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v1

    .line 540
    .local v0, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v11

    nop

    .line 541
    .local v1, "_arg1":Z
    :cond_1
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setDoubleScreenTouchEnable(ZZ)V

    .line 542
    return v11

    .line 526
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getGamepadDeviceId(Ljava/lang/String;)I

    move-result v1

    .line 530
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    return v11

    .line 516
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 520
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 521
    .local v1, "_arg1":F
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setJoystickCenterOffset(FF)V

    .line 522
    return v11

    .line 506
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 510
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 511
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setJoystickDirection(II)V

    .line 512
    return v11

    .line 492
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 496
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 498
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 500
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 501
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setJoystickTouchRange(IIII)V

    .line 502
    return v11

    .line 476
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 480
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 482
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 484
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 486
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v5, v11

    goto :goto_1

    :cond_2
    move v5, v1

    .line 487
    .local v5, "_arg4":Z
    :goto_1
    move-object v0, v6

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->setKeyTouchPoint(IIIIZ)V

    .line 488
    return v11

    .line 466
    .end local v5    # "_arg4":Z
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 470
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setGamepadID(ILjava/lang/String;)V

    .line 472
    return v11

    .line 458
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v11

    nop

    :cond_3
    move v0, v1

    .line 461
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setGamepadEnable(Z)V

    .line 462
    return v11

    .line 450
    .end local v0    # "_arg0":Z
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isGlobalKeyEnable()Z

    move-result v0

    .line 452
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    return v11

    .line 442
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v11

    nop

    :cond_4
    move v0, v1

    .line 445
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setGlobalKeyEnable(Z)V

    .line 446
    return v11

    .line 426
    .end local v0    # "_arg0":Z
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->myInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    .line 430
    .local v2, "_result":Landroid/view/InputChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v2, :cond_5

    .line 432
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    invoke-virtual {v2, v9, v11}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 436
    :cond_5
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    :goto_2
    return v11

    .line 416
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/view/InputChannel;
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    .local v1, "_arg0":I
    invoke-virtual {v6, v1}, Landroid/hardware/input/IInputManager$Stub;->createInputForwarder(I)Landroid/app/IInputForwarder;

    move-result-object v2

    .line 420
    .local v2, "_result":Landroid/app/IInputForwarder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/app/IInputForwarder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_6
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 422
    return v11

    .line 407
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/app/IInputForwarder;
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IPressKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IPressKeyListener;

    move-result-object v0

    .line 410
    .local v0, "_arg0":Landroid/hardware/input/IPressKeyListener;
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setPressKeyListener(Landroid/hardware/input/IPressKeyListener;)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    return v11

    .line 396
    .end local v0    # "_arg0":Landroid/hardware/input/IPressKeyListener;
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 400
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v1, v11

    nop

    .line 401
    .local v1, "_arg1":Z
    :cond_7
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    return v11

    .line 388
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getEdgeDeviceWidth()I

    move-result v0

    .line 390
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    return v11

    .line 379
    .end local v0    # "_result":I
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setEdgeDeviceWidth(I)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    return v11

    .line 365
    .end local v0    # "_arg0":I
    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 368
    sget-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PointerIcon;

    .local v0, "_arg0":Landroid/view/PointerIcon;
    goto :goto_3

    .line 371
    .end local v0    # "_arg0":Landroid/view/PointerIcon;
    :cond_8
    nop

    .line 373
    .restart local v0    # "_arg0":Landroid/view/PointerIcon;
    :goto_3
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    return v11

    .line 356
    .end local v0    # "_arg0":Landroid/view/PointerIcon;
    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 359
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    return v11

    .line 345
    .end local v0    # "_arg0":I
    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 349
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 350
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    return v11

    .line 330
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 336
    .local v1, "_arg1":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 339
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    return v11

    .line 321
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[J
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IBinder;
    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v0

    .line 324
    .local v0, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    return v11

    .line 313
    .end local v0    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v0

    .line 315
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    return v11

    .line 304
    .end local v0    # "_result":I
    :pswitch_17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v0

    .line 307
    .local v0, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    return v11

    .line 288
    .end local v0    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 291
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .local v0, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_4

    .line 294
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_9
    nop

    .line 297
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    return v11

    .line 272
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 275
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_5

    .line 278
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_a
    nop

    .line 281
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    return v11

    .line 257
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 260
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_6

    .line 263
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_b
    nop

    .line 265
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_6
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 268
    return v11

    .line 241
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 244
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_7

    .line 247
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_c
    nop

    .line 250
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    return v11

    .line 226
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 229
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_8

    .line 232
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_d
    nop

    .line 234
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_8
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    return v11

    .line 210
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 214
    .local v2, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v2, :cond_e

    .line 216
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {v2, v9, v11}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 220
    :cond_e
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    :goto_9
    return v11

    .line 195
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/input/KeyboardLayout;
    :pswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 198
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .local v0, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_a

    .line 201
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_f
    nop

    .line 203
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_a
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v1

    .line 204
    .local v1, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 206
    return v11

    .line 187
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0

    .line 189
    .local v0, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 191
    return v11

    .line 169
    .end local v0    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 176
    sget-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/TouchCalibration;

    .local v0, "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_b

    .line 179
    .end local v0    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :cond_10
    nop

    .line 181
    .restart local v0    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :goto_b
    invoke-virtual {v6, v1, v2, v0}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    return v11

    .line 151
    .end local v0    # "_arg2":Landroid/hardware/input/TouchCalibration;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .restart local v2    # "_arg1":I
    invoke-virtual {v6, v0, v2}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v3

    .line 157
    .local v3, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v3, :cond_11

    .line 159
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {v3, v9, v11}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 163
    :cond_11
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    :goto_c
    return v11

    .line 134
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/hardware/input/TouchCalibration;
    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 137
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .local v0, "_arg0":Landroid/view/InputEvent;
    goto :goto_d

    .line 140
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    :cond_12
    nop

    .line 143
    .restart local v0    # "_arg0":Landroid/view/InputEvent;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    .line 145
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return v11

    .line 125
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    return v11

    .line 102
    .end local v0    # "_arg0":I
    :pswitch_24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 110
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    .local v3, "_arg3_length":I
    if-gez v3, :cond_13

    .line 112
    const/4 v4, 0x0

    .local v4, "_arg3":[Z
    goto :goto_e

    .line 115
    .end local v4    # "_arg3":[Z
    :cond_13
    new-array v4, v3, [Z

    .line 117
    .restart local v4    # "_arg3":[Z
    :goto_e
    invoke-virtual {v6, v0, v1, v2, v4}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v5

    .line 118
    .local v5, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 121
    return v11

    .line 93
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3_length":I
    .end local v4    # "_arg3":[Z
    .end local v5    # "_result":Z
    :pswitch_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->disableInputDevice(I)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v11

    .line 84
    .end local v0    # "_arg0":I
    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->enableInputDevice(I)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v11

    .line 74
    .end local v0    # "_arg0":I
    :pswitch_27
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->isInputDeviceEnabled(I)Z

    move-result v1

    .line 78
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return v11

    .line 66
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_28
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v0

    .line 68
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 70
    return v11

    .line 50
    .end local v0    # "_result":[I
    :pswitch_29
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 54
    .local v2, "_result":Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_14

    .line 56
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v2, v9, v11}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 60
    :cond_14
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    :goto_f
    return v11

    .line 45
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/view/InputDevice;
    :cond_15
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
