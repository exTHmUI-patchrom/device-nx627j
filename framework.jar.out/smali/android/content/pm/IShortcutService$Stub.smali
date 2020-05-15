.class public abstract Landroid/content/pm/IShortcutService$Stub;
.super Landroid/os/Binder;
.source "IShortcutService.java"

# interfaces
.implements Landroid/content/pm/IShortcutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IShortcutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IShortcutService"

.field static final TRANSACTION_addDynamicShortcuts:I = 0x4

.field static final TRANSACTION_applyRestore:I = 0x15

.field static final TRANSACTION_createShortcutResultIntent:I = 0xa

.field static final TRANSACTION_disableShortcuts:I = 0xb

.field static final TRANSACTION_enableShortcuts:I = 0xc

.field static final TRANSACTION_getBackupPayload:I = 0x14

.field static final TRANSACTION_getDynamicShortcuts:I = 0x2

.field static final TRANSACTION_getIconMaxDimensions:I = 0x10

.field static final TRANSACTION_getManifestShortcuts:I = 0x3

.field static final TRANSACTION_getMaxShortcutCountPerActivity:I = 0xd

.field static final TRANSACTION_getPinnedShortcuts:I = 0x7

.field static final TRANSACTION_getRateLimitResetTime:I = 0xf

.field static final TRANSACTION_getRemainingCallCount:I = 0xe

.field static final TRANSACTION_isRequestPinItemSupported:I = 0x16

.field static final TRANSACTION_onApplicationActive:I = 0x13

.field static final TRANSACTION_removeAllDynamicShortcuts:I = 0x6

.field static final TRANSACTION_removeDynamicShortcuts:I = 0x5

.field static final TRANSACTION_reportShortcutUsed:I = 0x11

.field static final TRANSACTION_requestPinShortcut:I = 0x9

.field static final TRANSACTION_resetThrottling:I = 0x12

.field static final TRANSACTION_setDynamicShortcuts:I = 0x1

.field static final TRANSACTION_updateShortcuts:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.IShortcutService"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IShortcutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.content.pm.IShortcutService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IShortcutService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IShortcutService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/content/pm/IShortcutService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IShortcutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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

    .line 41
    const-string v10, "android.content.pm.IShortcutService"

    .line 42
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    .line 387
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 375
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->isRequestPinItemSupported(II)Z

    move-result v2

    .line 381
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    return v11

    .line 364
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 368
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 369
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->applyRestore([BI)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    return v11

    .line 354
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/content/pm/IShortcutService$Stub;->getBackupPayload(I)[B

    move-result-object v1

    .line 358
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 360
    return v11

    .line 343
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 348
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->onApplicationActive(Ljava/lang/String;I)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    return v11

    .line 336
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->resetThrottling()V

    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    return v11

    .line 323
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    return v11

    .line 311
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 316
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getIconMaxDimensions(Ljava/lang/String;I)I

    move-result v2

    .line 317
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    return v11

    .line 299
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getRateLimitResetTime(Ljava/lang/String;I)J

    move-result-wide v2

    .line 305
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 307
    return v11

    .line 287
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 292
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getRemainingCallCount(Ljava/lang/String;I)I

    move-result v2

    .line 293
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    return v11

    .line 275
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 280
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I

    move-result v2

    .line 281
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    return v11

    .line 261
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 266
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 268
    .local v2, "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .local v3, "_arg2":I
    invoke-virtual {v6, v0, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    return v11

    .line 238
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg1":Ljava/util/List;
    .end local v3    # "_arg2":I
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 242
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 243
    .local v13, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v8, v13}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v14

    .line 245
    .local v14, "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 249
    .local v0, "_arg2":Ljava/lang/CharSequence;
    move-object v3, v0

    goto :goto_0

    .end local v0    # "_arg2":Ljava/lang/CharSequence;
    :cond_0
    move-object v3, v1

    .line 252
    .local v3, "_arg2":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 254
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 255
    .local v16, "_arg4":I
    move-object v0, v6

    move-object v1, v12

    move-object v2, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IShortcutService$Stub;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    return v11

    .line 213
    .end local v3    # "_arg2":Ljava/lang/CharSequence;
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "cl":Ljava/lang/ClassLoader;
    .end local v14    # "_arg1":Ljava/util/List;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .local v1, "_arg1":Landroid/content/pm/ShortcutInfo;
    goto :goto_1

    .line 221
    .end local v1    # "_arg1":Landroid/content/pm/ShortcutInfo;
    :cond_1
    nop

    .line 224
    .restart local v1    # "_arg1":Landroid/content/pm/ShortcutInfo;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 225
    .local v3, "_arg2":I
    invoke-virtual {v6, v2, v1, v3}, Landroid/content/pm/IShortcutService$Stub;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;

    move-result-object v4

    .line 226
    .local v4, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v4, :cond_2

    .line 228
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 232
    :cond_2
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    :goto_2
    return v11

    .line 187
    .end local v1    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/Intent;
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    sget-object v2, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .local v2, "_arg1":Landroid/content/pm/ShortcutInfo;
    goto :goto_3

    .line 195
    .end local v2    # "_arg1":Landroid/content/pm/ShortcutInfo;
    :cond_3
    move-object v2, v1

    .line 198
    .restart local v2    # "_arg1":Landroid/content/pm/ShortcutInfo;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 199
    sget-object v1, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .local v1, "_arg2":Landroid/content/IntentSender;
    goto :goto_4

    .line 202
    .end local v1    # "_arg2":Landroid/content/IntentSender;
    :cond_4
    nop

    .line 205
    .restart local v1    # "_arg2":Landroid/content/IntentSender;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/content/pm/IShortcutService$Stub;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z

    move-result v4

    .line 207
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v11

    .line 168
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg2":Landroid/content/IntentSender;
    .end local v2    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_5

    .line 176
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :cond_5
    nop

    .line 179
    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v3

    .line 181
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return v11

    .line 150
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg1":I
    invoke-virtual {v6, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 156
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v3, :cond_6

    .line 158
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v3, v9, v11}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 162
    :cond_6
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    :goto_6
    return v11

    .line 139
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->removeAllDynamicShortcuts(Ljava/lang/String;I)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v11

    .line 125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 130
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 132
    .local v2, "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg2":I
    invoke-virtual {v6, v0, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v11

    .line 106
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg1":Ljava/util/List;
    .end local v3    # "_arg2":I
    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 111
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_7

    .line 114
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :cond_7
    nop

    .line 117
    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v3

    .line 119
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v11

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .local v2, "_arg1":I
    invoke-virtual {v6, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 94
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_8

    .line 96
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v3, v9, v11}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 100
    :cond_8
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    :goto_8
    return v11

    .line 70
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .restart local v2    # "_arg1":I
    invoke-virtual {v6, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 76
    .restart local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v3, :cond_9

    .line 78
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v3, v9, v11}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 82
    :cond_9
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    :goto_9
    return v11

    .line 51
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 56
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_a

    .line 59
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :cond_a
    nop

    .line 62
    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v3

    .line 64
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return v11

    .line 46
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :cond_b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
