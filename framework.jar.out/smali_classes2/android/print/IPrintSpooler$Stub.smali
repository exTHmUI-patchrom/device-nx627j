.class public abstract Landroid/print/IPrintSpooler$Stub;
.super Landroid/os/Binder;
.source "IPrintSpooler.java"

# interfaces
.implements Landroid/print/IPrintSpooler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpooler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpooler"

.field static final TRANSACTION_clearCustomPrinterIconCache:I = 0xb

.field static final TRANSACTION_createPrintJob:I = 0x4

.field static final TRANSACTION_getCustomPrinterIcon:I = 0xa

.field static final TRANSACTION_getPrintJobInfo:I = 0x3

.field static final TRANSACTION_getPrintJobInfos:I = 0x2

.field static final TRANSACTION_onCustomPrinterIconLoaded:I = 0x9

.field static final TRANSACTION_pruneApprovedPrintServices:I = 0x10

.field static final TRANSACTION_removeObsoletePrintJobs:I = 0x1

.field static final TRANSACTION_setClient:I = 0xe

.field static final TRANSACTION_setPrintJobCancelling:I = 0xf

.field static final TRANSACTION_setPrintJobState:I = 0x5

.field static final TRANSACTION_setPrintJobTag:I = 0xc

.field static final TRANSACTION_setProgress:I = 0x6

.field static final TRANSACTION_setStatus:I = 0x7

.field static final TRANSACTION_setStatusRes:I = 0x8

.field static final TRANSACTION_writePrintJobData:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.print.IPrintSpooler"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpooler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "android.print.IPrintSpooler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintSpooler;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Landroid/print/IPrintSpooler;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Landroid/print/IPrintSpooler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintSpooler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    .line 45
    const-string v9, "android.print.IPrintSpooler"

    .line 46
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_11

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 313
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 305
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 308
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v6, v0}, Landroid/print/IPrintSpooler$Stub;->pruneApprovedPrintServices(Ljava/util/List;)V

    .line 309
    return v10

    .line 290
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .local v0, "_arg0":Landroid/print/PrintJobId;
    goto :goto_0

    .line 296
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    :cond_0
    nop

    .line 299
    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v10

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 300
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {v6, v0, v1}, Landroid/print/IPrintSpooler$Stub;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 301
    return v10

    .line 282
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":Z
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintSpoolerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerClient;

    move-result-object v0

    .line 285
    .local v0, "_arg0":Landroid/print/IPrintSpoolerClient;
    invoke-virtual {v6, v0}, Landroid/print/IPrintSpooler$Stub;->setClient(Landroid/print/IPrintSpoolerClient;)V

    .line 286
    return v10

    .line 262
    .end local v0    # "_arg0":Landroid/print/IPrintSpoolerClient;
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 268
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_2
    move-object v1, v0

    .line 271
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .local v0, "_arg1":Landroid/print/PrintJobId;
    goto :goto_3

    .line 275
    .end local v0    # "_arg1":Landroid/print/PrintJobId;
    :cond_3
    nop

    .line 277
    .restart local v0    # "_arg1":Landroid/print/PrintJobId;
    :goto_3
    invoke-virtual {v6, v1, v0}, Landroid/print/IPrintSpooler$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    .line 278
    return v10

    .line 243
    .end local v0    # "_arg1":Landroid/print/PrintJobId;
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .local v0, "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    .line 249
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    :cond_4
    nop

    .line 252
    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v2

    .line 256
    .local v2, "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 257
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/print/IPrintSpooler$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 258
    return v10

    .line 233
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    .end local v3    # "_arg3":I
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v0

    .line 237
    .local v0, "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/print/IPrintSpooler$Stub;->clearCustomPrinterIconCache(Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 239
    return v10

    .line 216
    .end local v0    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    sget-object v0, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    .local v0, "_arg0":Landroid/print/PrinterId;
    goto :goto_5

    .line 222
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    :cond_5
    nop

    .line 225
    .restart local v0    # "_arg0":Landroid/print/PrinterId;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v1

    .line 227
    .local v1, "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/print/IPrintSpooler$Stub;->getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 229
    return v10

    .line 192
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    .end local v1    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    .end local v2    # "_arg2":I
    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 195
    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .local v1, "_arg0":Landroid/print/PrinterId;
    goto :goto_6

    .line 198
    .end local v1    # "_arg0":Landroid/print/PrinterId;
    :cond_6
    move-object v1, v0

    .line 201
    .restart local v1    # "_arg0":Landroid/print/PrinterId;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 202
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    .local v0, "_arg1":Landroid/graphics/drawable/Icon;
    goto :goto_7

    .line 205
    .end local v0    # "_arg1":Landroid/graphics/drawable/Icon;
    :cond_7
    nop

    .line 208
    .restart local v0    # "_arg1":Landroid/graphics/drawable/Icon;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v2

    .line 210
    .local v2, "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 211
    .restart local v3    # "_arg3":I
    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/print/IPrintSpooler$Stub;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 212
    return v10

    .line 170
    .end local v0    # "_arg1":Landroid/graphics/drawable/Icon;
    .end local v1    # "_arg0":Landroid/print/PrinterId;
    .end local v2    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    .end local v3    # "_arg3":I
    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .local v1, "_arg0":Landroid/print/PrintJobId;
    goto :goto_8

    .line 176
    .end local v1    # "_arg0":Landroid/print/PrintJobId;
    :cond_8
    move-object v1, v0

    .line 179
    .restart local v1    # "_arg0":Landroid/print/PrintJobId;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 182
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "_arg2":Ljava/lang/CharSequence;
    goto :goto_9

    .line 185
    .end local v0    # "_arg2":Ljava/lang/CharSequence;
    :cond_9
    nop

    .line 187
    .restart local v0    # "_arg2":Ljava/lang/CharSequence;
    :goto_9
    invoke-virtual {v6, v1, v2, v0}, Landroid/print/IPrintSpooler$Stub;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V

    .line 188
    return v10

    .line 150
    .end local v0    # "_arg2":Ljava/lang/CharSequence;
    .end local v1    # "_arg0":Landroid/print/PrintJobId;
    .end local v2    # "_arg1":I
    :pswitch_9
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 153
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .restart local v1    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_a

    .line 156
    .end local v1    # "_arg0":Landroid/print/PrintJobId;
    :cond_a
    move-object v1, v0

    .line 159
    .restart local v1    # "_arg0":Landroid/print/PrintJobId;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 160
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "_arg1":Ljava/lang/CharSequence;
    goto :goto_b

    .line 163
    .end local v0    # "_arg1":Ljava/lang/CharSequence;
    :cond_b
    nop

    .line 165
    .restart local v0    # "_arg1":Ljava/lang/CharSequence;
    :goto_b
    invoke-virtual {v6, v1, v0}, Landroid/print/IPrintSpooler$Stub;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V

    .line 166
    return v10

    .line 135
    .end local v0    # "_arg1":Ljava/lang/CharSequence;
    .end local v1    # "_arg0":Landroid/print/PrintJobId;
    :pswitch_a
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 138
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .local v0, "_arg0":Landroid/print/PrintJobId;
    goto :goto_c

    .line 141
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    :cond_c
    nop

    .line 144
    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 145
    .local v1, "_arg1":F
    invoke-virtual {v6, v0, v1}, Landroid/print/IPrintSpooler$Stub;->setProgress(Landroid/print/PrintJobId;F)V

    .line 146
    return v10

    .line 114
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":F
    :pswitch_b
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 117
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 120
    .local v1, "_arg0":Landroid/print/PrintJobId;
    :goto_d
    move-object v1, v0

    goto :goto_e

    .end local v1    # "_arg0":Landroid/print/PrintJobId;
    :cond_d
    goto :goto_d

    .line 123
    .restart local v1    # "_arg0":Landroid/print/PrintJobId;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 125
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 127
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v13

    .line 129
    .local v13, "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 130
    .local v14, "_arg4":I
    move-object v0, v6

    move v2, v11

    move-object v3, v12

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/print/IPrintSpooler$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 131
    return v10

    .line 101
    .end local v1    # "_arg0":Landroid/print/PrintJobId;
    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    .end local v14    # "_arg4":I
    :pswitch_c
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 104
    sget-object v0, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .local v0, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_f

    .line 107
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :cond_e
    nop

    .line 109
    .restart local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :goto_f
    invoke-virtual {v6, v0}, Landroid/print/IPrintSpooler$Stub;->createPrintJob(Landroid/print/PrintJobInfo;)V

    .line 110
    return v10

    .line 82
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :pswitch_d
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 85
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .local v0, "_arg0":Landroid/print/PrintJobId;
    goto :goto_10

    .line 88
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    :cond_f
    nop

    .line 91
    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v1

    .line 93
    .local v1, "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 96
    .restart local v3    # "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V

    .line 97
    return v10

    .line 61
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_e
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v11

    .line 65
    .local v11, "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 66
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 69
    .local v2, "_arg1":Landroid/content/ComponentName;
    :goto_11
    move-object v2, v0

    goto :goto_12

    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :cond_10
    goto :goto_11

    .line 72
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 74
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 76
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 77
    .restart local v14    # "_arg4":I
    move-object v0, v6

    move-object v1, v11

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    .line 78
    return v10

    .line 55
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v11    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    :pswitch_f
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v6}, Landroid/print/IPrintSpooler$Stub;->removeObsoletePrintJobs()V

    .line 57
    return v10

    .line 50
    :cond_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
