.class public abstract Landroid/hardware/radio/ITunerCallback$Stub;
.super Landroid/os/Binder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITunerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITunerCallback"

.field static final TRANSACTION_onAntennaState:I = 0x7

.field static final TRANSACTION_onBackgroundScanAvailabilityChange:I = 0x8

.field static final TRANSACTION_onBackgroundScanComplete:I = 0x9

.field static final TRANSACTION_onConfigurationChanged:I = 0x3

.field static final TRANSACTION_onCurrentProgramInfoChanged:I = 0x4

.field static final TRANSACTION_onEmergencyAnnouncement:I = 0x6

.field static final TRANSACTION_onError:I = 0x1

.field static final TRANSACTION_onParametersUpdated:I = 0xc

.field static final TRANSACTION_onProgramListChanged:I = 0xa

.field static final TRANSACTION_onProgramListUpdated:I = 0xb

.field static final TRANSACTION_onTrafficAnnouncement:I = 0x5

.field static final TRANSACTION_onTuneFailed:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITunerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITunerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.hardware.radio.ITunerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/ITunerCallback;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ITunerCallback;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const-string v0, "android.hardware.radio.ITunerCallback"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 155
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 158
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 159
    .local v3, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onParametersUpdated(Ljava/util/Map;)V

    .line 160
    return v2

    .line 142
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Landroid/hardware/radio/ProgramList$Chunk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/radio/ProgramList$Chunk;

    .local v3, "_arg0":Landroid/hardware/radio/ProgramList$Chunk;
    goto :goto_0

    .line 148
    .end local v3    # "_arg0":Landroid/hardware/radio/ProgramList$Chunk;
    :cond_0
    nop

    .restart local v3    # "_arg0":Landroid/hardware/radio/ProgramList$Chunk;
    :goto_0
    move-object v1, v3

    .line 150
    .end local v3    # "_arg0":Landroid/hardware/radio/ProgramList$Chunk;
    .local v1, "_arg0":Landroid/hardware/radio/ProgramList$Chunk;
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 151
    return v2

    .line 136
    .end local v1    # "_arg0":Landroid/hardware/radio/ProgramList$Chunk;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListChanged()V

    .line 138
    return v2

    .line 130
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanComplete()V

    .line 132
    return v2

    .line 122
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 125
    .local v1, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanAvailabilityChange(Z)V

    .line 126
    return v2

    .line 114
    .end local v1    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 117
    .restart local v1    # "_arg0":Z
    :cond_2
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onAntennaState(Z)V

    .line 118
    return v2

    .line 106
    .end local v1    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    .line 109
    .restart local v1    # "_arg0":Z
    :cond_3
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onEmergencyAnnouncement(Z)V

    .line 110
    return v2

    .line 98
    .end local v1    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    nop

    .line 101
    .restart local v1    # "_arg0":Z
    :cond_4
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onTrafficAnnouncement(Z)V

    .line 102
    return v2

    .line 85
    .end local v1    # "_arg0":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    sget-object v1, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .local v3, "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    goto :goto_1

    .line 91
    .end local v3    # "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :cond_5
    nop

    .restart local v3    # "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :goto_1
    move-object v1, v3

    .line 93
    .end local v3    # "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    .local v1, "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 94
    return v2

    .line 72
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    sget-object v1, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/radio/RadioManager$BandConfig;

    .local v3, "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    goto :goto_2

    .line 78
    .end local v3    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :cond_6
    nop

    .restart local v3    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :goto_2
    move-object v1, v3

    .line 80
    .end local v3    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    .local v1, "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 81
    return v2

    .line 57
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 62
    sget-object v3, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ProgramSelector;

    .local v3, "_arg1":Landroid/hardware/radio/ProgramSelector;
    goto :goto_3

    .line 65
    .end local v3    # "_arg1":Landroid/hardware/radio/ProgramSelector;
    :cond_7
    nop

    .line 67
    .restart local v3    # "_arg1":Landroid/hardware/radio/ProgramSelector;
    :goto_3
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    .line 68
    return v2

    .line 49
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/ProgramSelector;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onError(I)V

    .line 53
    return v2

    .line 44
    .end local v1    # "_arg0":I
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

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
