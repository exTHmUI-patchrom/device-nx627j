.class public abstract Landroid/content/pm/ILauncherApps$Stub;
.super Landroid/os/Binder;
.source "ILauncherApps.java"

# interfaces
.implements Landroid/content/pm/ILauncherApps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ILauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ILauncherApps$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.ILauncherApps"

.field static final TRANSACTION_addOnAppsChangedListener:I = 0x1

.field static final TRANSACTION_getApplicationInfo:I = 0xa

.field static final TRANSACTION_getLauncherActivities:I = 0x3

.field static final TRANSACTION_getShortcutConfigActivities:I = 0x11

.field static final TRANSACTION_getShortcutConfigActivityIntent:I = 0x12

.field static final TRANSACTION_getShortcutIconFd:I = 0xf

.field static final TRANSACTION_getShortcutIconResId:I = 0xe

.field static final TRANSACTION_getShortcuts:I = 0xb

.field static final TRANSACTION_getSuspendedPackageLauncherExtras:I = 0x8

.field static final TRANSACTION_hasShortcutHostPermission:I = 0x10

.field static final TRANSACTION_isActivityEnabled:I = 0x9

.field static final TRANSACTION_isPackageEnabled:I = 0x7

.field static final TRANSACTION_pinShortcuts:I = 0xc

.field static final TRANSACTION_removeOnAppsChangedListener:I = 0x2

.field static final TRANSACTION_resolveActivity:I = 0x4

.field static final TRANSACTION_showAppDetailsAsUser:I = 0x6

.field static final TRANSACTION_startActivityAsUser:I = 0x5

.field static final TRANSACTION_startShortcut:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.ILauncherApps"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/ILauncherApps$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.content.pm.ILauncherApps"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/ILauncherApps;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/content/pm/ILauncherApps;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/content/pm/ILauncherApps$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/ILauncherApps$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    .line 41
    const-string v13, "android.content.pm.ILauncherApps"

    .line 42
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_20

    const/4 v15, 0x0

    const/4 v0, 0x0

    packed-switch v10, :pswitch_data_0

    .line 489
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 459
    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .local v2, "_arg1":Landroid/content/ComponentName;
    goto :goto_0

    .line 467
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :cond_0
    move-object v2, v0

    .line 470
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .local v0, "_arg2":Landroid/os/UserHandle;
    goto :goto_1

    .line 474
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    :cond_1
    nop

    .line 476
    .restart local v0    # "_arg2":Landroid/os/UserHandle;
    :goto_1
    invoke-virtual {v9, v1, v2, v0}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v3

    .line 477
    .local v3, "_result":Landroid/content/IntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    if-eqz v3, :cond_2

    .line 479
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    invoke-virtual {v3, v12, v14}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 483
    :cond_2
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    :goto_2
    return v14

    .line 434
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/content/IntentSender;
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 441
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .restart local v0    # "_arg2":Landroid/os/UserHandle;
    goto :goto_3

    .line 444
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    :cond_3
    nop

    .line 446
    .restart local v0    # "_arg2":Landroid/os/UserHandle;
    :goto_3
    invoke-virtual {v9, v1, v2, v0}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 447
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v3, :cond_4

    .line 449
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    invoke-virtual {v3, v12, v14}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 453
    :cond_4
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    :goto_4
    return v14

    .line 424
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Landroid/content/pm/ILauncherApps$Stub;->hasShortcutHostPermission(Ljava/lang/String;)Z

    move-result v1

    .line 428
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    return v14

    .line 402
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 406
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 411
    .local v3, "_arg3":I
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 412
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v4, :cond_5

    .line 414
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    invoke-virtual {v4, v12, v14}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 418
    :cond_5
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    :goto_5
    return v14

    .line 386
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 394
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 395
    .restart local v3    # "_arg3":I
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 396
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    return v14

    .line 356
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 364
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 365
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 368
    .local v1, "_arg3":Landroid/graphics/Rect;
    move-object v4, v1

    goto :goto_6

    .end local v1    # "_arg3":Landroid/graphics/Rect;
    :cond_6
    move-object v4, v0

    .line 371
    .local v4, "_arg3":Landroid/graphics/Rect;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 372
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 375
    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_7
    move-object v5, v0

    goto :goto_8

    .end local v5    # "_arg4":Landroid/os/Bundle;
    :cond_7
    goto :goto_7

    .line 378
    .restart local v5    # "_arg4":Landroid/os/Bundle;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 379
    .local v16, "_arg5":I
    move-object v0, v9

    move-object v1, v7

    move-object v2, v8

    move-object v3, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/ILauncherApps$Stub;->startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result v0

    .line 380
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    return v14

    .line 336
    .end local v0    # "_result":Z
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg5":I
    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 344
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 345
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .local v0, "_arg3":Landroid/os/UserHandle;
    goto :goto_9

    .line 348
    .end local v0    # "_arg3":Landroid/os/UserHandle;
    :cond_8
    nop

    .line 350
    .restart local v0    # "_arg3":Landroid/os/UserHandle;
    :goto_9
    invoke-virtual {v9, v1, v2, v3, v0}, Landroid/content/pm/ILauncherApps$Stub;->pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    return v14

    .line 297
    .end local v0    # "_arg3":Landroid/os/UserHandle;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 301
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 303
    .local v17, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 305
    .local v19, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 306
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v20

    .line 308
    .local v20, "_arg3":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 309
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 312
    .local v1, "_arg4":Landroid/content/ComponentName;
    move-object v6, v1

    goto :goto_a

    .end local v1    # "_arg4":Landroid/content/ComponentName;
    :cond_9
    move-object v6, v0

    .line 315
    .local v6, "_arg4":Landroid/content/ComponentName;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 317
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 318
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 321
    .local v8, "_arg6":Landroid/os/UserHandle;
    :goto_b
    move-object v8, v0

    goto :goto_c

    .end local v8    # "_arg6":Landroid/os/UserHandle;
    :cond_a
    goto :goto_b

    .line 323
    .restart local v8    # "_arg6":Landroid/os/UserHandle;
    :goto_c
    move-object v0, v9

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v22, v7

    move/from16 v7, v21

    .end local v7    # "cl":Ljava/lang/ClassLoader;
    .local v22, "cl":Ljava/lang/ClassLoader;
    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/ILauncherApps$Stub;->getShortcuts(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 324
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v0, :cond_b

    .line 326
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {v0, v12, v14}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 330
    :cond_b
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    :goto_d
    return v14

    .line 270
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v6    # "_arg4":Landroid/content/ComponentName;
    .end local v8    # "_arg6":Landroid/os/UserHandle;
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":J
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg3":Ljava/util/List;
    .end local v21    # "_arg5":I
    .end local v22    # "cl":Ljava/lang/ClassLoader;
    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 279
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .local v0, "_arg3":Landroid/os/UserHandle;
    goto :goto_e

    .line 282
    .end local v0    # "_arg3":Landroid/os/UserHandle;
    :cond_c
    nop

    .line 284
    .restart local v0    # "_arg3":Landroid/os/UserHandle;
    :goto_e
    invoke-virtual {v9, v1, v2, v3, v0}, Landroid/content/pm/ILauncherApps$Stub;->getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 285
    .local v4, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v4, :cond_d

    .line 287
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {v4, v12, v14}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 291
    :cond_d
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    :goto_f
    return v14

    .line 246
    .end local v0    # "_arg3":Landroid/os/UserHandle;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ApplicationInfo;
    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 251
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .local v2, "_arg1":Landroid/content/ComponentName;
    goto :goto_10

    .line 254
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :cond_e
    move-object v2, v0

    .line 257
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 258
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .local v0, "_arg2":Landroid/os/UserHandle;
    goto :goto_11

    .line 261
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    :cond_f
    nop

    .line 263
    .restart local v0    # "_arg2":Landroid/os/UserHandle;
    :goto_11
    invoke-virtual {v9, v1, v2, v0}, Landroid/content/pm/ILauncherApps$Stub;->isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v3

    .line 264
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    return v14

    .line 223
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 228
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .local v0, "_arg1":Landroid/os/UserHandle;
    goto :goto_12

    .line 231
    .end local v0    # "_arg1":Landroid/os/UserHandle;
    :cond_10
    nop

    .line 233
    .restart local v0    # "_arg1":Landroid/os/UserHandle;
    :goto_12
    invoke-virtual {v9, v1, v0}, Landroid/content/pm/ILauncherApps$Stub;->getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v2

    .line 234
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v2, :cond_11

    .line 236
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    invoke-virtual {v2, v12, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    .line 240
    :cond_11
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    :goto_13
    return v14

    .line 204
    .end local v0    # "_arg1":Landroid/os/UserHandle;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 211
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .local v0, "_arg2":Landroid/os/UserHandle;
    goto :goto_14

    .line 214
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    :cond_12
    nop

    .line 216
    .restart local v0    # "_arg2":Landroid/os/UserHandle;
    :goto_14
    invoke-virtual {v9, v1, v2, v0}, Landroid/content/pm/ILauncherApps$Stub;->isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    .line 217
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return v14

    .line 165
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 169
    .local v7, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 172
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 175
    .local v1, "_arg2":Landroid/content/ComponentName;
    move-object v3, v1

    goto :goto_15

    .end local v1    # "_arg2":Landroid/content/ComponentName;
    :cond_13
    move-object v3, v0

    .line 178
    .local v3, "_arg2":Landroid/content/ComponentName;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 179
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 182
    .local v1, "_arg3":Landroid/graphics/Rect;
    move-object v4, v1

    goto :goto_16

    .end local v1    # "_arg3":Landroid/graphics/Rect;
    :cond_14
    move-object v4, v0

    .line 185
    .local v4, "_arg3":Landroid/graphics/Rect;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 186
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 189
    .local v1, "_arg4":Landroid/os/Bundle;
    move-object v5, v1

    goto :goto_17

    .end local v1    # "_arg4":Landroid/os/Bundle;
    :cond_15
    move-object v5, v0

    .line 192
    .restart local v5    # "_arg4":Landroid/os/Bundle;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 193
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 196
    .local v6, "_arg5":Landroid/os/UserHandle;
    :goto_18
    move-object v6, v0

    goto :goto_19

    .end local v6    # "_arg5":Landroid/os/UserHandle;
    :cond_16
    goto :goto_18

    .line 198
    .restart local v6    # "_arg5":Landroid/os/UserHandle;
    :goto_19
    move-object v0, v9

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/ILauncherApps$Stub;->showAppDetailsAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    return v14

    .line 126
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Landroid/os/UserHandle;
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 130
    .restart local v7    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 132
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 133
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 136
    .local v1, "_arg2":Landroid/content/ComponentName;
    move-object v3, v1

    goto :goto_1a

    .end local v1    # "_arg2":Landroid/content/ComponentName;
    :cond_17
    move-object v3, v0

    .line 139
    .restart local v3    # "_arg2":Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 140
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 143
    .local v1, "_arg3":Landroid/graphics/Rect;
    move-object v4, v1

    goto :goto_1b

    .end local v1    # "_arg3":Landroid/graphics/Rect;
    :cond_18
    move-object v4, v0

    .line 146
    .restart local v4    # "_arg3":Landroid/graphics/Rect;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 147
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 150
    .local v1, "_arg4":Landroid/os/Bundle;
    move-object v5, v1

    goto :goto_1c

    .end local v1    # "_arg4":Landroid/os/Bundle;
    :cond_19
    move-object v5, v0

    .line 153
    .restart local v5    # "_arg4":Landroid/os/Bundle;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 154
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 157
    .restart local v6    # "_arg5":Landroid/os/UserHandle;
    :goto_1d
    move-object v6, v0

    goto :goto_1e

    .end local v6    # "_arg5":Landroid/os/UserHandle;
    :cond_1a
    goto :goto_1d

    .line 159
    .restart local v6    # "_arg5":Landroid/os/UserHandle;
    :goto_1e
    move-object v0, v9

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/ILauncherApps$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    return v14

    .line 96
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Landroid/os/UserHandle;
    .end local v7    # "_arg0":Landroid/app/IApplicationThread;
    .end local v8    # "_arg1":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 101
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .local v2, "_arg1":Landroid/content/ComponentName;
    goto :goto_1f

    .line 104
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :cond_1b
    move-object v2, v0

    .line 107
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 108
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .restart local v0    # "_arg2":Landroid/os/UserHandle;
    goto :goto_20

    .line 111
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    :cond_1c
    nop

    .line 113
    .restart local v0    # "_arg2":Landroid/os/UserHandle;
    :goto_20
    invoke-virtual {v9, v1, v2, v0}, Landroid/content/pm/ILauncherApps$Stub;->resolveActivity(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 114
    .local v3, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v3, :cond_1d

    .line 116
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v3, v12, v14}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 120
    :cond_1d
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    :goto_21
    return v14

    .line 71
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/content/pm/ActivityInfo;
    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 78
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .restart local v0    # "_arg2":Landroid/os/UserHandle;
    goto :goto_22

    .line 81
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    :cond_1e
    nop

    .line 83
    .restart local v0    # "_arg2":Landroid/os/UserHandle;
    :goto_22
    invoke-virtual {v9, v1, v2, v0}, Landroid/content/pm/ILauncherApps$Stub;->getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 84
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_1f

    .line 86
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v3, v12, v14}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    .line 90
    :cond_1f
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    :goto_23
    return v14

    .line 62
    .end local v0    # "_arg2":Landroid/os/UserHandle;
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    invoke-virtual {v9, v0}, Landroid/content/pm/ILauncherApps$Stub;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v14

    .line 51
    .end local v0    # "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    move-result-object v1

    .line 56
    .local v1, "_arg1":Landroid/content/pm/IOnAppsChangedListener;
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/ILauncherApps$Stub;->addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v14

    .line 46
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/IOnAppsChangedListener;
    :cond_20
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
