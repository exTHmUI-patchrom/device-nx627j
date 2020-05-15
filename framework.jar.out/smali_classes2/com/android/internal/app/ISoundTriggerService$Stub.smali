.class public abstract Lcom/android/internal/app/ISoundTriggerService$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerService.java"

# interfaces
.implements Lcom/android/internal/app/ISoundTriggerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ISoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.ISoundTriggerService"

.field static final TRANSACTION_deleteSoundModel:I = 0x3

.field static final TRANSACTION_getSoundModel:I = 0x1

.field static final TRANSACTION_isRecognitionActive:I = 0xc

.field static final TRANSACTION_loadGenericSoundModel:I = 0x6

.field static final TRANSACTION_loadKeyphraseSoundModel:I = 0x7

.field static final TRANSACTION_startRecognition:I = 0x4

.field static final TRANSACTION_startRecognitionForIntent:I = 0x8

.field static final TRANSACTION_startRecognitionForService:I = 0x9

.field static final TRANSACTION_stopRecognition:I = 0x5

.field static final TRANSACTION_stopRecognitionForIntent:I = 0xa

.field static final TRANSACTION_unloadSoundModel:I = 0xb

.field static final TRANSACTION_updateSoundModel:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.app.ISoundTriggerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "com.android.internal.app.ISoundTriggerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/ISoundTriggerService;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/ISoundTriggerService;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const-string v0, "com.android.internal.app.ISoundTriggerService"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_13

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 267
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 273
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_0
    nop

    .line 275
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->isRecognitionActive(Landroid/os/ParcelUuid;)Z

    move-result v3

    .line 276
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    return v2

    .line 252
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 258
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_1
    nop

    .line 260
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->unloadSoundModel(Landroid/os/ParcelUuid;)I

    move-result v3

    .line 261
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    return v2

    .line 237
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_2

    .line 243
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_2
    nop

    .line 245
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->stopRecognitionForIntent(Landroid/os/ParcelUuid;)I

    move-result v3

    .line 246
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    return v2

    .line 201
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .local v3, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_3

    .line 207
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :cond_3
    move-object v3, v1

    .line 210
    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .line 214
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :cond_4
    move-object v4, v1

    .line 217
    .restart local v4    # "_arg1":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 218
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .local v5, "_arg2":Landroid/content/ComponentName;
    goto :goto_5

    .line 221
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    :cond_5
    move-object v5, v1

    .line 224
    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 225
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .local v1, "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    goto :goto_6

    .line 228
    .end local v1    # "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :cond_6
    nop

    .line 230
    .restart local v1    # "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :goto_6
    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v6

    .line 231
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    return v2

    .line 172
    .end local v1    # "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/os/Bundle;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v6    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 175
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_7

    .line 178
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :cond_7
    move-object v3, v1

    .line 181
    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 182
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .local v4, "_arg1":Landroid/app/PendingIntent;
    goto :goto_8

    .line 185
    .end local v4    # "_arg1":Landroid/app/PendingIntent;
    :cond_8
    move-object v4, v1

    .line 188
    .restart local v4    # "_arg1":Landroid/app/PendingIntent;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 189
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .local v1, "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    goto :goto_9

    .line 192
    .end local v1    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :cond_9
    nop

    .line 194
    .restart local v1    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :goto_9
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->startRecognitionForIntent(Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v5

    .line 195
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    return v2

    .line 157
    .end local v1    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/app/PendingIntent;
    .end local v5    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 160
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .local v1, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    goto :goto_a

    .line 163
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :cond_a
    nop

    .line 165
    .restart local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :goto_a
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v3

    .line 166
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return v2

    .line 142
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 145
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .local v1, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    goto :goto_b

    .line 148
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :cond_b
    nop

    .line 150
    .restart local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :goto_b
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I

    move-result v3

    .line 151
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return v2

    .line 125
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 128
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_c

    .line 131
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_c
    nop

    .line 134
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    .line 135
    .local v3, "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/ISoundTriggerService$Stub;->stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v4

    .line 136
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v2

    .line 101
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v4    # "_result":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 104
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .local v3, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_d

    .line 107
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :cond_d
    move-object v3, v1

    .line 110
    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v4

    .line 112
    .local v4, "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 113
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .local v1, "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    goto :goto_e

    .line 116
    .end local v1    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :cond_e
    nop

    .line 118
    .restart local v1    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :goto_e
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v5

    .line 119
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v2

    .line 87
    .end local v1    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v5    # "_result":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 90
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_f

    .line 93
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_f
    nop

    .line 95
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_f
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->deleteSoundModel(Landroid/os/ParcelUuid;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v2

    .line 73
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 76
    sget-object v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .local v1, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    goto :goto_10

    .line 79
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :cond_10
    nop

    .line 81
    .restart local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :goto_10
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v2

    .line 52
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 55
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_11

    .line 58
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_11
    nop

    .line 60
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_11
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v3

    .line 61
    .local v3, "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v3, :cond_12

    .line 63
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {v3, p3, v2}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 67
    :cond_12
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    :goto_12
    return v2

    .line 47
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
