.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final TRANSACTION_abortFullRestore:I = 0x1a

.field static final TRANSACTION_cancelFullBackup:I = 0x16

.field static final TRANSACTION_checkFullBackupSize:I = 0x14

.field static final TRANSACTION_clearBackupData:I = 0xa

.field static final TRANSACTION_configurationIntent:I = 0x2

.field static final TRANSACTION_currentDestinationString:I = 0x3

.field static final TRANSACTION_dataManagementIntent:I = 0x4

.field static final TRANSACTION_dataManagementLabel:I = 0x5

.field static final TRANSACTION_finishBackup:I = 0xb

.field static final TRANSACTION_finishRestore:I = 0x11

.field static final TRANSACTION_getAvailableRestoreSets:I = 0xc

.field static final TRANSACTION_getBackupQuota:I = 0x18

.field static final TRANSACTION_getCurrentRestoreSet:I = 0xd

.field static final TRANSACTION_getNextFullRestoreDataChunk:I = 0x19

.field static final TRANSACTION_getRestoreData:I = 0x10

.field static final TRANSACTION_getTransportFlags:I = 0x1b

.field static final TRANSACTION_initializeDevice:I = 0x8

.field static final TRANSACTION_isAppEligibleForBackup:I = 0x17

.field static final TRANSACTION_name:I = 0x1

.field static final TRANSACTION_nextRestorePackage:I = 0xf

.field static final TRANSACTION_performBackup:I = 0x9

.field static final TRANSACTION_performFullBackup:I = 0x13

.field static final TRANSACTION_requestBackupTime:I = 0x7

.field static final TRANSACTION_requestFullBackupTime:I = 0x12

.field static final TRANSACTION_sendBackupData:I = 0x15

.field static final TRANSACTION_startRestore:I = 0xe

.field static final TRANSACTION_transportDirName:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "com.android.internal.backup.IBackupTransport"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_d

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 355
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 347
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getTransportFlags()I

    move-result v1

    .line 349
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    return v2

    .line 339
    .end local v1    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->abortFullRestore()I

    move-result v1

    .line 341
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    return v2

    .line 324
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 330
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_0
    nop

    .restart local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_0
    move-object v1, v3

    .line 332
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0, v1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    .line 333
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    return v2

    .line 312
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    nop

    .line 317
    .local v1, "_arg1":Z
    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v4

    .line 318
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 320
    return v2

    .line 295
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":J
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 298
    sget-object v3, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .local v3, "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 301
    .end local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_2
    nop

    .line 304
    .restart local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    nop

    .line 305
    .restart local v1    # "_arg1":Z
    :cond_3
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/backup/IBackupTransport$Stub;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v4

    .line 306
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return v2

    .line 288
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->cancelFullBackup()V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    return v2

    .line 278
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 281
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/backup/IBackupTransport$Stub;->sendBackupData(I)I

    move-result v3

    .line 282
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    return v2

    .line 268
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 271
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->checkFullBackupSize(J)I

    move-result v1

    .line 272
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    return v2

    .line 244
    .end local v1    # "_result":I
    .end local v3    # "_arg0":J
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    sget-object v1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .local v1, "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_2

    .line 250
    .end local v1    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_4
    move-object v1, v3

    .line 253
    .restart local v1    # "_arg0":Landroid/content/pm/PackageInfo;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 254
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    .line 257
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_5
    nop

    .line 260
    .restart local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 261
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v5

    .line 262
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    return v2

    .line 236
    .end local v1    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestFullBackupTime()J

    move-result-wide v3

    .line 238
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    return v2

    .line 229
    .end local v3    # "_result":J
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    return v2

    .line 214
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 217
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .line 220
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_6
    nop

    .restart local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_4
    move-object v1, v3

    .line 222
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0, v1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    .line 223
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    return v2

    .line 200
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_result":I
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v3

    .line 202
    .local v3, "_result":Landroid/app/backup/RestoreDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v3, :cond_7

    .line 204
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v3, p3, v2}, Landroid/app/backup/RestoreDescription;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 208
    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    :goto_5
    return v2

    .line 188
    .end local v3    # "_result":Landroid/app/backup/RestoreDescription;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 192
    .local v3, "_arg0":J
    sget-object v1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/PackageInfo;

    .line 193
    .local v1, "_arg1":[Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v5

    .line 194
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return v2

    .line 180
    .end local v1    # "_arg1":[Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg0":J
    .end local v5    # "_result":I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet()J

    move-result-wide v3

    .line 182
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    return v2

    .line 172
    .end local v3    # "_result":J
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v1

    .line 174
    .local v1, "_result":[Landroid/app/backup/RestoreSet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 176
    return v2

    .line 164
    .end local v1    # "_result":[Landroid/app/backup/RestoreSet;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup()I

    move-result v1

    .line 166
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return v2

    .line 149
    .end local v1    # "_result":I
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    sget-object v1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/PackageInfo;

    .local v3, "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_6

    .line 155
    .end local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_8
    nop

    .restart local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    :goto_6
    move-object v1, v3

    .line 157
    .end local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    .local v1, "_arg0":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v1}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v3

    .line 158
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return v2

    .line 125
    .end local v1    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_result":I
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 128
    sget-object v1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .restart local v1    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_7

    .line 131
    .end local v1    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_9
    move-object v1, v3

    .line 134
    .restart local v1    # "_arg0":Landroid/content/pm/PackageInfo;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 135
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    .line 138
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_a
    nop

    .line 141
    .restart local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v5

    .line 143
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return v2

    .line 117
    .end local v1    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice()I

    move-result v1

    .line 119
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v2

    .line 109
    .end local v1    # "_result":I
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime()J

    move-result-wide v3

    .line 111
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    return v2

    .line 101
    .end local v3    # "_result":J
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v2

    .line 93
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementLabel()Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v2

    .line 79
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v3

    .line 81
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v3, :cond_b

    .line 83
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v3, p3, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 87
    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    :goto_9
    return v2

    .line 71
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v2

    .line 57
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent()Landroid/content/Intent;

    move-result-object v3

    .line 59
    .restart local v3    # "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v3, :cond_c

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v3, p3, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 65
    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    :goto_a
    return v2

    .line 49
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->name()Ljava/lang/String;

    move-result-object v1

    .line 51
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v2

    .line 44
    .end local v1    # "_result":Ljava/lang/String;
    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
