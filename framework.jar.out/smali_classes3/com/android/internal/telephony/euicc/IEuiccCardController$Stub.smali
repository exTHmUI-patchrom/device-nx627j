.class public abstract Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;
.super Landroid/os/Binder;
.source "IEuiccCardController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccCardController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IEuiccCardController"

.field static final TRANSACTION_authenticateServer:I = 0xf

.field static final TRANSACTION_cancelSession:I = 0x12

.field static final TRANSACTION_deleteProfile:I = 0x6

.field static final TRANSACTION_disableProfile:I = 0x3

.field static final TRANSACTION_getAllProfiles:I = 0x1

.field static final TRANSACTION_getDefaultSmdpAddress:I = 0x8

.field static final TRANSACTION_getEuiccChallenge:I = 0xc

.field static final TRANSACTION_getEuiccInfo1:I = 0xd

.field static final TRANSACTION_getEuiccInfo2:I = 0xe

.field static final TRANSACTION_getProfile:I = 0x2

.field static final TRANSACTION_getRulesAuthTable:I = 0xb

.field static final TRANSACTION_getSmdsAddress:I = 0x9

.field static final TRANSACTION_listNotifications:I = 0x13

.field static final TRANSACTION_loadBoundProfilePackage:I = 0x11

.field static final TRANSACTION_prepareDownload:I = 0x10

.field static final TRANSACTION_removeNotificationFromList:I = 0x16

.field static final TRANSACTION_resetMemory:I = 0x7

.field static final TRANSACTION_retrieveNotification:I = 0x15

.field static final TRANSACTION_retrieveNotificationList:I = 0x14

.field static final TRANSACTION_setDefaultSmdpAddress:I = 0xa

.field static final TRANSACTION_setNickname:I = 0x5

.field static final TRANSACTION_switchToProfile:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccCardController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/euicc/IEuiccCardController;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/euicc/IEuiccCardController;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
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

    .line 39
    const-string v12, "com.android.internal.telephony.euicc.IEuiccCardController"

    .line 40
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v10, v0, :cond_2

    const/4 v0, 0x0

    packed-switch v10, :pswitch_data_0

    .line 365
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 351
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;

    move-result-object v3

    .line 360
    .local v3, "_arg3":Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V

    .line 361
    return v13

    .line 337
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;
    :pswitch_1
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;

    move-result-object v3

    .line 346
    .local v3, "_arg3":Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V

    .line 347
    return v13

    .line 323
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;
    :pswitch_2
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;

    move-result-object v3

    .line 332
    .local v3, "_arg3":Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V

    .line 333
    return v13

    .line 309
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;
    :pswitch_3
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 317
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IListNotificationsCallback;

    move-result-object v3

    .line 318
    .local v3, "_arg3":Lcom/android/internal/telephony/euicc/IListNotificationsCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V

    .line 319
    return v13

    .line 293
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/telephony/euicc/IListNotificationsCallback;
    :pswitch_4
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 301
    .local v8, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 303
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ICancelSessionCallback;

    move-result-object v15

    .line 304
    .local v15, "_arg4":Lcom/android/internal/telephony/euicc/ICancelSessionCallback;
    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V

    .line 305
    return v13

    .line 279
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":[B
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":Lcom/android/internal/telephony/euicc/ICancelSessionCallback;
    :pswitch_5
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 287
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    move-result-object v3

    .line 288
    .local v3, "_arg3":Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V

    .line 289
    return v13

    .line 259
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;
    :pswitch_6
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 263
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 265
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 267
    .local v15, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 269
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 271
    .local v17, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 273
    .local v18, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;

    move-result-object v19

    .line 274
    .local v19, "_arg6":Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;
    move-object v0, v9

    move-object v1, v8

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V

    .line 275
    return v13

    .line 237
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":[B
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":[B
    .end local v18    # "_arg5":[B
    .end local v19    # "_arg6":Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;
    :pswitch_7
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 241
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 243
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 245
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 247
    .local v17, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 249
    .local v18, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 251
    .local v19, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 253
    .local v20, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;

    move-result-object v21

    .line 254
    .local v21, "_arg7":Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;
    move-object v0, v9

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V

    .line 255
    return v13

    .line 225
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":[B
    .end local v18    # "_arg4":[B
    .end local v19    # "_arg5":[B
    .end local v20    # "_arg6":[B
    .end local v21    # "_arg7":Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;
    :pswitch_8
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;

    move-result-object v2

    .line 232
    .local v2, "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V

    .line 233
    return v13

    .line 213
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;
    :pswitch_9
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;

    move-result-object v2

    .line 220
    .local v2, "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V

    .line 221
    return v13

    .line 201
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;
    :pswitch_a
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;

    move-result-object v2

    .line 208
    .local v2, "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V

    .line 209
    return v13

    .line 189
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;
    :pswitch_b
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    move-result-object v2

    .line 196
    .local v2, "_arg2":Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V

    .line 197
    return v13

    .line 175
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;
    :pswitch_c
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;

    move-result-object v3

    .line 184
    .local v3, "_arg3":Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V

    .line 185
    return v13

    .line 163
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;
    :pswitch_d
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;

    move-result-object v2

    .line 170
    .local v2, "_arg2":Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V

    .line 171
    return v13

    .line 151
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;
    :pswitch_e
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;

    move-result-object v2

    .line 158
    .local v2, "_arg2":Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V

    .line 159
    return v13

    .line 137
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;
    :pswitch_f
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IResetMemoryCallback;

    move-result-object v3

    .line 146
    .local v3, "_arg3":Lcom/android/internal/telephony/euicc/IResetMemoryCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V

    .line 147
    return v13

    .line 123
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/telephony/euicc/IResetMemoryCallback;
    :pswitch_10
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;

    move-result-object v3

    .line 132
    .local v3, "_arg3":Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V

    .line 133
    return v13

    .line 107
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;
    :pswitch_11
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 111
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 113
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 117
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/ISetNicknameCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISetNicknameCallback;

    move-result-object v15

    .line 118
    .local v15, "_arg4":Lcom/android/internal/telephony/euicc/ISetNicknameCallback;
    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V

    .line 119
    return v13

    .line 91
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg4":Lcom/android/internal/telephony/euicc/ISetNicknameCallback;
    :pswitch_12
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 95
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 97
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 99
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v4, v13

    goto :goto_0

    :cond_0
    move v4, v0

    .line 101
    .local v4, "_arg3":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    move-result-object v14

    .line 102
    .local v14, "_arg4":Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;
    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V

    .line 103
    return v13

    .line 75
    .end local v4    # "_arg3":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg4":Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;
    :pswitch_13
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 79
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 81
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 83
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v4, v13

    goto :goto_1

    :cond_1
    move v4, v0

    .line 85
    .restart local v4    # "_arg3":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IDisableProfileCallback;

    move-result-object v14

    .line 86
    .local v14, "_arg4":Lcom/android/internal/telephony/euicc/IDisableProfileCallback;
    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V

    .line 87
    return v13

    .line 61
    .end local v4    # "_arg3":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg4":Lcom/android/internal/telephony/euicc/IDisableProfileCallback;
    :pswitch_14
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetProfileCallback;

    move-result-object v3

    .line 70
    .local v3, "_arg3":Lcom/android/internal/telephony/euicc/IGetProfileCallback;
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    .line 71
    return v13

    .line 49
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/android/internal/telephony/euicc/IGetProfileCallback;
    :pswitch_15
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;

    move-result-object v2

    .line 56
    .local v2, "_arg2":Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V

    .line 57
    return v13

    .line 44
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v13

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
