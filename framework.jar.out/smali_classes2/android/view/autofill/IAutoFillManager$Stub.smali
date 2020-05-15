.class public abstract Landroid/view/autofill/IAutoFillManager$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManager.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManager"

.field static final TRANSACTION_addClient:I = 0x1

.field static final TRANSACTION_cancelSession:I = 0xa

.field static final TRANSACTION_disableOwnedAutofillServices:I = 0xd

.field static final TRANSACTION_finishSession:I = 0x9

.field static final TRANSACTION_getAutofillServiceComponentName:I = 0x15

.field static final TRANSACTION_getAvailableFieldClassificationAlgorithms:I = 0x16

.field static final TRANSACTION_getDefaultFieldClassificationAlgorithm:I = 0x17

.field static final TRANSACTION_getFillEventHistory:I = 0x4

.field static final TRANSACTION_getUserData:I = 0x11

.field static final TRANSACTION_getUserDataId:I = 0x12

.field static final TRANSACTION_isFieldClassificationEnabled:I = 0x14

.field static final TRANSACTION_isServiceEnabled:I = 0xf

.field static final TRANSACTION_isServiceSupported:I = 0xe

.field static final TRANSACTION_onPendingSaveUi:I = 0x10

.field static final TRANSACTION_removeClient:I = 0x2

.field static final TRANSACTION_restoreSession:I = 0x5

.field static final TRANSACTION_setAuthenticationResult:I = 0xb

.field static final TRANSACTION_setAutofillFailure:I = 0x8

.field static final TRANSACTION_setHasCallback:I = 0xc

.field static final TRANSACTION_setUserData:I = 0x13

.field static final TRANSACTION_startSession:I = 0x3

.field static final TRANSACTION_updateOrRestartSession:I = 0x7

.field static final TRANSACTION_updateSession:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManager;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAutoFillManager;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
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

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v11, p3

    .line 43
    const-string v10, "android.view.autofill.IAutoFillManager"

    .line 44
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v8, 0x1

    if-eq v14, v0, :cond_15

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v14, :pswitch_data_0

    .line 424
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 416
    :pswitch_0
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getDefaultFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    return v8

    .line 408
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getAvailableFieldClassificationAlgorithms()[Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 412
    return v8

    .line 394
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getAutofillServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 396
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    invoke-virtual {v1, v11, v8}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    :goto_0
    return v8

    .line 386
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_3
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->isFieldClassificationEnabled()Z

    move-result v0

    .line 388
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    return v8

    .line 372
    .end local v0    # "_result":Z
    :pswitch_4
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    sget-object v0, Landroid/service/autofill/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/service/autofill/UserData;

    .local v1, "_arg0":Landroid/service/autofill/UserData;
    goto :goto_1

    .line 378
    .end local v1    # "_arg0":Landroid/service/autofill/UserData;
    :cond_1
    nop

    .restart local v1    # "_arg0":Landroid/service/autofill/UserData;
    :goto_1
    move-object v0, v1

    .line 380
    .end local v1    # "_arg0":Landroid/service/autofill/UserData;
    .local v0, "_arg0":Landroid/service/autofill/UserData;
    invoke-virtual {v13, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->setUserData(Landroid/service/autofill/UserData;)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    return v8

    .line 364
    .end local v0    # "_arg0":Landroid/service/autofill/UserData;
    :pswitch_5
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getUserDataId()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    return v8

    .line 350
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v1

    .line 352
    .local v1, "_result":Landroid/service/autofill/UserData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v1, :cond_2

    .line 354
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    invoke-virtual {v1, v11, v8}, Landroid/service/autofill/UserData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 358
    :cond_2
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    :goto_2
    return v8

    .line 339
    .end local v1    # "_result":Landroid/service/autofill/UserData;
    :pswitch_7
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 344
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    return v8

    .line 327
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceEnabled(ILjava/lang/String;)Z

    move-result v2

    .line 333
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    return v8

    .line 317
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceSupported(I)Z

    move-result v1

    .line 321
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    return v8

    .line 308
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->disableOwnedAutofillServices(I)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    return v8

    .line 295
    .end local v0    # "_arg0":I
    :pswitch_b
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v8

    nop

    .line 302
    .local v0, "_arg2":Z
    :cond_3
    invoke-virtual {v13, v1, v2, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->setHasCallback(IIZ)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    return v8

    .line 275
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_c
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 281
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_4
    nop

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    :goto_3
    move-object v0, v1

    .line 284
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 289
    .local v3, "_arg3":I
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->setAuthenticationResult(Landroid/os/Bundle;III)V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    return v8

    .line 264
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_d
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg1":I
    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->cancelSession(II)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    return v8

    .line 253
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_e
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .restart local v1    # "_arg1":I
    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->finishSession(II)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    return v8

    .line 240
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 244
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 246
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 247
    .restart local v2    # "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->setAutofillFailure(ILjava/util/List;I)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    return v8

    .line 188
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "_arg2":I
    :pswitch_10
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 192
    .local v16, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 194
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 198
    .local v2, "_arg2":Landroid/view/autofill/AutofillId;
    move-object v3, v2

    goto :goto_4

    .end local v2    # "_arg2":Landroid/view/autofill/AutofillId;
    :cond_5
    move-object v3, v1

    .line 201
    .local v3, "_arg2":Landroid/view/autofill/AutofillId;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 202
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 205
    .local v2, "_arg3":Landroid/graphics/Rect;
    move-object v4, v2

    goto :goto_5

    .end local v2    # "_arg3":Landroid/graphics/Rect;
    :cond_6
    move-object v4, v1

    .line 208
    .local v4, "_arg3":Landroid/graphics/Rect;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 209
    sget-object v2, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillValue;

    .line 212
    .local v2, "_arg4":Landroid/view/autofill/AutofillValue;
    move-object v5, v2

    goto :goto_6

    .end local v2    # "_arg4":Landroid/view/autofill/AutofillValue;
    :cond_7
    move-object v5, v1

    .line 215
    .local v5, "_arg4":Landroid/view/autofill/AutofillValue;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 217
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v7, v8

    goto :goto_7

    :cond_8
    move v7, v0

    .line 219
    .local v7, "_arg6":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 221
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 222
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 225
    .local v9, "_arg8":Landroid/content/ComponentName;
    :goto_8
    move-object v9, v1

    goto :goto_9

    .end local v9    # "_arg8":Landroid/content/ComponentName;
    :cond_9
    goto :goto_8

    .line 228
    .restart local v9    # "_arg8":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 230
    .local v20, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 232
    .local v21, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    move v12, v8

    goto :goto_a

    :cond_a
    move v12, v0

    .line 233
    .local v12, "_arg11":Z
    :goto_a
    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v6, v18

    move v14, v8

    move/from16 v8, v19

    move-object/from16 v22, v10

    move/from16 v10, v20

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v22, "descriptor":Ljava/lang/String;
    move/from16 v11, v21

    invoke-virtual/range {v0 .. v12}, Landroid/view/autofill/IAutoFillManager$Stub;->updateOrRestartSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;IIZ)I

    move-result v0

    .line 234
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    move-object/from16 v11, p3

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return v14

    .line 152
    .end local v0    # "_result":I
    .end local v3    # "_arg2":Landroid/view/autofill/AutofillId;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/view/autofill/AutofillValue;
    .end local v7    # "_arg6":Z
    .end local v9    # "_arg8":Landroid/content/ComponentName;
    .end local v12    # "_arg11":Z
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg7":I
    .end local v20    # "_arg9":I
    .end local v21    # "_arg10":I
    .end local v22    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_11
    move v14, v8

    move-object/from16 v22, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v22    # "descriptor":Ljava/lang/String;
    move-object/from16 v12, v22

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    .end local v22    # "descriptor":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 156
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 160
    .local v0, "_arg1":Landroid/view/autofill/AutofillId;
    move-object v2, v0

    goto :goto_b

    .end local v0    # "_arg1":Landroid/view/autofill/AutofillId;
    :cond_b
    move-object v2, v1

    .line 163
    .local v2, "_arg1":Landroid/view/autofill/AutofillId;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 164
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 167
    .local v0, "_arg2":Landroid/graphics/Rect;
    move-object v3, v0

    goto :goto_c

    .end local v0    # "_arg2":Landroid/graphics/Rect;
    :cond_c
    move-object v3, v1

    .line 170
    .local v3, "_arg2":Landroid/graphics/Rect;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 171
    sget-object v0, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillValue;

    .line 174
    .local v0, "_arg3":Landroid/view/autofill/AutofillValue;
    move-object v4, v0

    goto :goto_d

    .end local v0    # "_arg3":Landroid/view/autofill/AutofillValue;
    :cond_d
    move-object v4, v1

    .line 177
    .local v4, "_arg3":Landroid/view/autofill/AutofillValue;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 179
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 181
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 182
    .local v16, "_arg6":I
    move-object v0, v13

    move v1, v8

    move v5, v9

    move v6, v10

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Landroid/view/autofill/IAutoFillManager$Stub;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    return v14

    .line 138
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/view/autofill/AutofillValue;
    .end local v8    # "_arg0":I
    .end local v9    # "_arg4":I
    .end local v12    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg6":I
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_12
    move v14, v8

    move-object v12, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 144
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 145
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v3

    .line 146
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return v14

    .line 124
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_13
    move v14, v8

    move-object v12, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/IAutoFillManager$Stub;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;

    move-result-object v1

    .line 126
    .local v1, "_result":Landroid/service/autofill/FillEventHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v1, :cond_e

    .line 128
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {v1, v11, v14}, Landroid/service/autofill/FillEventHistory;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 132
    :cond_e
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    :goto_e
    return v14

    .line 76
    .end local v1    # "_result":Landroid/service/autofill/FillEventHistory;
    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move v14, v8

    move-object v12, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 80
    .local v16, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 82
    .restart local v17    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 83
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 86
    .local v2, "_arg2":Landroid/view/autofill/AutofillId;
    move-object v3, v2

    goto :goto_f

    .end local v2    # "_arg2":Landroid/view/autofill/AutofillId;
    :cond_f
    move-object v3, v1

    .line 89
    .local v3, "_arg2":Landroid/view/autofill/AutofillId;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 90
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 93
    .local v2, "_arg3":Landroid/graphics/Rect;
    move-object v4, v2

    goto :goto_10

    .end local v2    # "_arg3":Landroid/graphics/Rect;
    :cond_10
    move-object v4, v1

    .line 96
    .local v4, "_arg3":Landroid/graphics/Rect;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 97
    sget-object v2, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillValue;

    .line 100
    .local v2, "_arg4":Landroid/view/autofill/AutofillValue;
    move-object v5, v2

    goto :goto_11

    .end local v2    # "_arg4":Landroid/view/autofill/AutofillValue;
    :cond_11
    move-object v5, v1

    .line 103
    .restart local v5    # "_arg4":Landroid/view/autofill/AutofillValue;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 105
    .restart local v18    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    move v7, v14

    goto :goto_12

    :cond_12
    move v7, v0

    .line 107
    .restart local v7    # "_arg6":Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 109
    .restart local v19    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    .line 110
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 113
    .local v9, "_arg8":Landroid/content/ComponentName;
    :goto_13
    move-object v9, v1

    goto :goto_14

    .end local v9    # "_arg8":Landroid/content/ComponentName;
    :cond_13
    goto :goto_13

    .line 116
    .restart local v9    # "_arg8":Landroid/content/ComponentName;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    move v10, v14

    goto :goto_15

    :cond_14
    move v10, v0

    .line 117
    .local v10, "_arg9":Z
    :goto_15
    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v6, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v10}, Landroid/view/autofill/IAutoFillManager$Stub;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;Z)I

    move-result v0

    .line 118
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v14

    .line 65
    .end local v0    # "_result":I
    .end local v3    # "_arg2":Landroid/view/autofill/AutofillId;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/view/autofill/AutofillValue;
    .end local v7    # "_arg6":Z
    .end local v9    # "_arg8":Landroid/content/ComponentName;
    .end local v12    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg7":I
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_15
    move v14, v8

    move-object v12, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    .line 69
    .local v0, "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v14

    .line 53
    .end local v0    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v1    # "_arg1":I
    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move v14, v8

    move-object v12, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    .line 57
    .restart local v0    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .restart local v1    # "_arg1":I
    invoke-virtual {v13, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->addClient(Landroid/view/autofill/IAutoFillManagerClient;I)I

    move-result v2

    .line 59
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return v14

    .line 48
    .end local v0    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :cond_15
    move v14, v8

    move-object v12, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v14

    :pswitch_data_0
    .packed-switch 0x1
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
