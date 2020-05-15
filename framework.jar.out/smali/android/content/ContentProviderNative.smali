.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    const-string v0, "android.content.IContentProvider"

    .line 59
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 60
    .local v0, "in":Landroid/content/IContentProvider;
    if-eqz v0, :cond_1

    .line 61
    return-object v0

    .line 64
    :cond_1
    new-instance v1, Landroid/content/ContentProviderProxy;

    invoke-direct {v1, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 373
    return-object p0
.end method

.method public abstract getProviderName()Ljava/lang/String;
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

    move-object/from16 v10, p3

    .line 78
    const/16 v0, 0xa

    const/4 v11, 0x1

    if-eq v8, v0, :cond_b

    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    .line 365
    nop

    .line 367
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 349
    :pswitch_0
    :try_start_0
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "callingPkg":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 352
    .local v2, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 353
    .local v3, "args":Landroid/os/Bundle;
    nop

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 353
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 356
    .local v4, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->refresh(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z

    move-result v5

    .line 357
    .local v5, "out":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    return v11

    .line 338
    .end local v1    # "callingPkg":Ljava/lang/String;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v4    # "signal":Landroid/os/ICancellationSignal;
    .end local v5    # "out":Z
    :pswitch_1
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "callingPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 342
    .local v1, "url":Landroid/net/Uri;
    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderNative;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 343
    .local v2, "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-static {v10, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 345
    return v11

    .line 326
    .end local v0    # "callingPkg":Ljava/lang/String;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "out":Landroid/net/Uri;
    :pswitch_2
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .restart local v0    # "callingPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 330
    .restart local v1    # "url":Landroid/net/Uri;
    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderNative;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 331
    .restart local v2    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-static {v10, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 333
    return v11

    .line 316
    .end local v0    # "callingPkg":Ljava/lang/String;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "out":Landroid/net/Uri;
    :pswitch_3
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 319
    .local v0, "cancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 321
    return v11

    .line 293
    .end local v0    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :pswitch_4
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "callingPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    .line 296
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 298
    .local v5, "opts":Landroid/os/Bundle;
    nop

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 298
    invoke-static {v1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 302
    .local v6, "signal":Landroid/os/ICancellationSignal;
    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 303
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    invoke-virtual {v1, v10, v11}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 309
    :cond_1
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    :goto_1
    return v11

    .line 281
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "callingPkg":Ljava/lang/String;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "opts":Landroid/os/Bundle;
    .end local v6    # "signal":Landroid/os/ICancellationSignal;
    :pswitch_5
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 283
    .local v0, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "mimeTypeFilter":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "types":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 288
    return v11

    .line 265
    .end local v0    # "url":Landroid/net/Uri;
    .end local v1    # "mimeTypeFilter":Ljava/lang/String;
    .end local v2    # "types":[Ljava/lang/String;
    :pswitch_6
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "stringArg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 272
    .local v3, "args":Landroid/os/Bundle;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 274
    .local v4, "responseBundle":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 276
    return v11

    .line 173
    .end local v0    # "callingPkg":Ljava/lang/String;
    .end local v1    # "method":Ljava/lang/String;
    .end local v2    # "stringArg":Ljava/lang/String;
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v4    # "responseBundle":Landroid/os/Bundle;
    :pswitch_7
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .local v2, "numOperations":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move v4, v0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_2

    .line 179
    sget-object v5, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 181
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v7, v1, v3}, Landroid/content/ContentProviderNative;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v4

    .line 182
    .local v4, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {v10, v4, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 184
    return v11

    .line 243
    .end local v1    # "callingPkg":Ljava/lang/String;
    .end local v2    # "numOperations":I
    .end local v3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v4    # "results":[Landroid/content/ContentProviderResult;
    :pswitch_8
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .restart local v1    # "callingPkg":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 246
    .local v2, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "mode":Ljava/lang/String;
    nop

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 247
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 251
    .local v4, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 252
    .local v5, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v5, :cond_3

    .line 254
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    invoke-virtual {v5, v10, v11}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 258
    :cond_3
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    :goto_3
    return v11

    .line 220
    .end local v1    # "callingPkg":Ljava/lang/String;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "signal":Landroid/os/ICancellationSignal;
    .end local v5    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_9
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "callingPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    .line 223
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "mode":Ljava/lang/String;
    nop

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 224
    invoke-static {v1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 226
    .local v5, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 229
    .local v6, "callerToken":Landroid/os/IBinder;
    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 230
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v1, :cond_4

    .line 232
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {v1, v10, v11}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 236
    :cond_4
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    :goto_4
    return v11

    .line 160
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "callingPkg":Ljava/lang/String;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v4    # "mode":Ljava/lang/String;
    .end local v5    # "signal":Landroid/os/ICancellationSignal;
    .end local v6    # "callerToken":Landroid/os/IBinder;
    :pswitch_a
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .restart local v0    # "callingPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 163
    .local v1, "url":Landroid/net/Uri;
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 165
    .local v2, "values":[Landroid/content/ContentValues;
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/ContentProviderNative;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    .line 166
    .local v3, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return v11

    .line 189
    .end local v0    # "callingPkg":Ljava/lang/String;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "values":[Landroid/content/ContentValues;
    .end local v3    # "count":I
    :pswitch_b
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0    # "callingPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 192
    .restart local v1    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 197
    .local v4, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return v11

    .line 147
    .end local v0    # "callingPkg":Ljava/lang/String;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v4    # "count":I
    :pswitch_c
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0    # "callingPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 150
    .restart local v1    # "url":Landroid/net/Uri;
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 152
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/ContentProviderNative;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 153
    .local v3, "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-static {v10, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 155
    return v11

    .line 136
    .end local v0    # "callingPkg":Ljava/lang/String;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "out":Landroid/net/Uri;
    :pswitch_d
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 138
    .local v0, "url":Landroid/net/Uri;
    invoke-virtual {v7, v0}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v11

    .line 81
    .end local v0    # "url":Landroid/net/Uri;
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_e
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "callingPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    .line 87
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move v12, v1

    .line 88
    .local v12, "num":I
    const/4 v1, 0x0

    .line 89
    .local v1, "projection":[Ljava/lang/String;
    if-lez v12, :cond_5

    .line 90
    new-array v4, v12, [Ljava/lang/String;

    move-object v1, v4

    .line 91
    move v4, v0

    .local v4, "i":I
    :goto_5
    if-ge v4, v12, :cond_5

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 96
    .end local v4    # "i":I
    :cond_5
    move-object v13, v1

    .end local v1    # "projection":[Ljava/lang/String;
    .local v13, "projection":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 97
    .local v5, "queryArgs":Landroid/os/Bundle;
    nop

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v1

    move-object v14, v1

    .line 99
    .local v14, "observer":Landroid/database/IContentObserver;
    nop

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 102
    .local v6, "cancellationSignal":Landroid/os/ICancellationSignal;
    move-object v1, v7

    move-object v4, v13

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_a

    .line 104
    const/4 v0, 0x0

    move-object v4, v0

    .line 107
    .local v4, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :try_start_1
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor;

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v1, v14, v15}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V

    move-object v4, v0

    .line 109
    const/4 v1, 0x0

    .line 111
    invoke-virtual {v4}, Landroid/database/CursorToBulkCursorAdaptor;->getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;

    move-result-object v0

    .line 112
    .local v0, "d":Landroid/database/BulkCursorDescriptor;
    const/4 v4, 0x0

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v0, v10, v11}, Landroid/database/BulkCursorDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v0    # "d":Landroid/database/BulkCursorDescriptor;
    if-eqz v4, :cond_6

    .line 120
    :try_start_2
    invoke-virtual {v4}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    .line 122
    :cond_6
    if-eqz v1, :cond_7

    .line 123
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 126
    .end local v4    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :cond_7
    goto :goto_6

    .line 119
    .restart local v4    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_8

    .line 120
    invoke-virtual {v4}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    .line 122
    :cond_8
    if-eqz v1, :cond_9

    .line 123
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 127
    .end local v4    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :cond_a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    :goto_6
    return v11

    .line 362
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "callingPkg":Ljava/lang/String;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v5    # "queryArgs":Landroid/os/Bundle;
    .end local v6    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v12    # "num":I
    .end local v13    # "projection":[Ljava/lang/String;
    .end local v14    # "observer":Landroid/database/IContentObserver;
    :catch_0
    move-exception v0

    goto :goto_7

    .line 204
    :cond_b
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .restart local v2    # "callingPkg":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 207
    .restart local v3    # "url":Landroid/net/Uri;
    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ContentValues;

    .line 208
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    return v11

    .line 362
    .end local v0    # "count":I
    .end local v2    # "callingPkg":Ljava/lang/String;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :goto_7
    nop

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 364
    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
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
