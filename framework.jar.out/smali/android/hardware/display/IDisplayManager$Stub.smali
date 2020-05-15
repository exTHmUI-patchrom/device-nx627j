.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final TRANSACTION_connectWifiDisplay:I = 0x6

.field static final TRANSACTION_createVirtualDisplay:I = 0xf

.field static final TRANSACTION_disconnectWifiDisplay:I = 0x7

.field static final TRANSACTION_forgetWifiDisplay:I = 0x9

.field static final TRANSACTION_getAmbientBrightnessStats:I = 0x15

.field static final TRANSACTION_getBrightnessConfigurationForUser:I = 0x17

.field static final TRANSACTION_getBrightnessEvents:I = 0x14

.field static final TRANSACTION_getDefaultBrightnessConfiguration:I = 0x18

.field static final TRANSACTION_getDisplayIds:I = 0x2

.field static final TRANSACTION_getDisplayInfo:I = 0x1

.field static final TRANSACTION_getDoubleScreenMode:I = 0x1e

.field static final TRANSACTION_getMinimumBrightnessCurve:I = 0x1b

.field static final TRANSACTION_getStableDisplaySize:I = 0x13

.field static final TRANSACTION_getWifiDisplayStatus:I = 0xc

.field static final TRANSACTION_pauseWifiDisplay:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x12

.field static final TRANSACTION_renameWifiDisplay:I = 0x8

.field static final TRANSACTION_requestColorMode:I = 0xd

.field static final TRANSACTION_resetScreenState:I = 0x1f

.field static final TRANSACTION_resizeVirtualDisplay:I = 0x10

.field static final TRANSACTION_resumeWifiDisplay:I = 0xb

.field static final TRANSACTION_setBrightnessConfigurationForUser:I = 0x16

.field static final TRANSACTION_setDisplayPowerMode:I = 0x1c

.field static final TRANSACTION_setDisplayPowerModeForFingerprint:I = 0x21

.field static final TRANSACTION_setSaturationLevel:I = 0xe

.field static final TRANSACTION_setScreenMirror:I = 0x20

.field static final TRANSACTION_setScreenSwitch:I = 0x1d

.field static final TRANSACTION_setTemporaryAutoBrightnessAdjustment:I = 0x1a

.field static final TRANSACTION_setTemporaryBrightness:I = 0x19

.field static final TRANSACTION_setVirtualDisplaySurface:I = 0x11

.field static final TRANSACTION_startWifiDisplayScan:I = 0x4

.field static final TRANSACTION_stopWifiDisplayScan:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDisplayManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 39
    const-string v15, "android.hardware.display.IDisplayManager"

    .line 40
    .local v15, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v12, v0, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v12, :pswitch_data_0

    .line 429
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 418
    :pswitch_0
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 422
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v1, v10

    nop

    .line 423
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {v11, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setDisplayPowerModeForFingerprint(IZ)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    return v10

    .line 409
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v10

    nop

    :cond_1
    move v0, v1

    .line 412
    .local v0, "_arg0":Z
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setScreenMirror(Z)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    return v10

    .line 402
    .end local v0    # "_arg0":Z
    :pswitch_2
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->resetScreenState()V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    return v10

    .line 394
    :pswitch_3
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDoubleScreenMode()I

    move-result v0

    .line 396
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    return v10

    .line 387
    .end local v0    # "_result":I
    :pswitch_4
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->setScreenSwitch()V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    return v10

    .line 377
    :pswitch_5
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 381
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v1, v10

    nop

    .line 382
    .restart local v1    # "_arg1":Z
    :cond_2
    invoke-virtual {v11, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setDisplayPowerMode(IZ)V

    .line 383
    return v10

    .line 363
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_6
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v0

    .line 365
    .local v0, "_result":Landroid/hardware/display/Curve;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {v0, v14, v10}, Landroid/hardware/display/Curve;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 371
    :cond_3
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    :goto_0
    return v10

    .line 354
    .end local v0    # "_result":Landroid/hardware/display/Curve;
    :pswitch_7
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 357
    .local v0, "_arg0":F
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    return v10

    .line 345
    .end local v0    # "_arg0":F
    :pswitch_8
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .local v0, "_arg0":I
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness(I)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    return v10

    .line 331
    .end local v0    # "_arg0":I
    :pswitch_9
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 333
    .local v0, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v0, :cond_4

    .line 335
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {v0, v14, v10}, Landroid/hardware/display/BrightnessConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 339
    :cond_4
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    :goto_1
    return v10

    .line 315
    .end local v0    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_a
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .local v0, "_arg0":I
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 319
    .local v2, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v2, :cond_5

    .line 321
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    invoke-virtual {v2, v14, v10}, Landroid/hardware/display/BrightnessConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 325
    :cond_5
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    :goto_2
    return v10

    .line 297
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_b
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 300
    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .local v0, "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    goto :goto_3

    .line 303
    .end local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    :cond_6
    nop

    .line 306
    .restart local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    return v10

    .line 283
    .end local v0    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 285
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v0, :cond_7

    .line 287
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {v0, v14, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 291
    :cond_7
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    :goto_4
    return v10

    .line 267
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_d
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 271
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v2, :cond_8

    .line 273
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    invoke-virtual {v2, v14, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 277
    :cond_8
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    :goto_5
    return v10

    .line 253
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_e
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 255
    .local v0, "_result":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v0, :cond_9

    .line 257
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    invoke-virtual {v0, v14, v10}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 261
    :cond_9
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    :goto_6
    return v10

    .line 244
    .end local v0    # "_result":Landroid/graphics/Point;
    :pswitch_f
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 247
    .local v0, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    return v10

    .line 228
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :pswitch_10
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 232
    .local v1, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 233
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .local v0, "_arg1":Landroid/view/Surface;
    goto :goto_7

    .line 236
    .end local v0    # "_arg1":Landroid/view/Surface;
    :cond_a
    nop

    .line 238
    .restart local v0    # "_arg1":Landroid/view/Surface;
    :goto_7
    invoke-virtual {v11, v1, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    return v10

    .line 213
    .end local v0    # "_arg1":Landroid/view/Surface;
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :pswitch_11
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    .line 217
    .local v0, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, "_arg3":I
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    return v10

    .line 180
    .end local v0    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_12
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v16

    .line 184
    .local v16, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v17

    .line 186
    .local v17, "_arg1":Landroid/media/projection/IMediaProjection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 188
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 190
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 192
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 194
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 196
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 197
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 200
    .local v8, "_arg7":Landroid/view/Surface;
    :goto_8
    move-object v8, v0

    goto :goto_9

    .end local v8    # "_arg7":Landroid/view/Surface;
    :cond_b
    goto :goto_8

    .line 203
    .restart local v8    # "_arg7":Landroid/view/Surface;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 205
    .local v23, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 206
    .local v24, "_arg9":Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v9, v23

    move v12, v10

    move-object/from16 v10, v24

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v12

    .line 171
    .end local v0    # "_result":I
    .end local v8    # "_arg7":Landroid/view/Surface;
    .end local v16    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v17    # "_arg1":Landroid/media/projection/IMediaProjection;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":Ljava/lang/String;
    :pswitch_13
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 174
    .local v0, "_arg0":F
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setSaturationLevel(F)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    return v12

    .line 160
    .end local v0    # "_arg0":F
    :pswitch_14
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1    # "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode(II)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    return v12

    .line 146
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_15
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    .line 148
    .local v0, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v0, :cond_c

    .line 150
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v0, v14, v12}, Landroid/hardware/display/WifiDisplayStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 154
    :cond_c
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    :goto_a
    return v12

    .line 139
    .end local v0    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :pswitch_16
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    return v12

    .line 132
    :pswitch_17
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v12

    .line 123
    :pswitch_18
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    return v12

    .line 112
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_19
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    return v12

    .line 105
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1a
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    return v12

    .line 96
    :pswitch_1b
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    return v12

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1c
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v12

    .line 82
    :pswitch_1d
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v12

    .line 73
    :pswitch_1e
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v0

    .line 76
    .local v0, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v12

    .line 65
    .end local v0    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :pswitch_1f
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds()[I

    move-result-object v0

    .line 67
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 69
    return v12

    .line 49
    .end local v0    # "_result":[I
    :pswitch_20
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "_arg0":I
    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    .line 53
    .local v2, "_result":Landroid/view/DisplayInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_d

    .line 55
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {v2, v14, v12}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 59
    :cond_d
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    :goto_b
    return v12

    .line 44
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/view/DisplayInfo;
    :cond_e
    move v12, v10

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v12

    :pswitch_data_0
    .packed-switch 0x1
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
