.class public abstract Landroid/hardware/radio/IRadioService$Stub;
.super Landroid/os/Binder;
.source "IRadioService.java"

# interfaces
.implements Landroid/hardware/radio/IRadioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/IRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/IRadioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.IRadioService"

.field static final TRANSACTION_addAnnouncementListener:I = 0x3

.field static final TRANSACTION_listModules:I = 0x1

.field static final TRANSACTION_openTuner:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.hardware.radio.IRadioService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/IRadioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/IRadioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.hardware.radio.IRadioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/IRadioService;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/IRadioService;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/hardware/radio/IRadioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/IRadioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const-string v0, "android.hardware.radio.IRadioService"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 82
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 86
    .local v3, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/IAnnouncementListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/IAnnouncementListener;

    move-result-object v4

    .line 87
    .local v4, "_arg1":Landroid/hardware/radio/IAnnouncementListener;
    invoke-virtual {p0, v3, v4}, Landroid/hardware/radio/IRadioService$Stub;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object v5

    .line 88
    .local v5, "_result":Landroid/hardware/radio/ICloseHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/hardware/radio/ICloseHandle;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 90
    return v2

    .line 61
    .end local v3    # "_arg0":[I
    .end local v4    # "_arg1":Landroid/hardware/radio/IAnnouncementListener;
    .end local v5    # "_result":Landroid/hardware/radio/ICloseHandle;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 65
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    sget-object v4, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/RadioManager$BandConfig;

    .local v4, "_arg1":Landroid/hardware/radio/RadioManager$BandConfig;
    goto :goto_0

    .line 69
    .end local v4    # "_arg1":Landroid/hardware/radio/RadioManager$BandConfig;
    :cond_1
    move-object v4, v1

    .line 72
    .restart local v4    # "_arg1":Landroid/hardware/radio/RadioManager$BandConfig;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 74
    .local v5, "_arg2":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/radio/ITunerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITunerCallback;

    move-result-object v6

    .line 75
    .local v6, "_arg3":Landroid/hardware/radio/ITunerCallback;
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/hardware/radio/IRadioService$Stub;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object v7

    .line 76
    .local v7, "_result":Landroid/hardware/radio/ITuner;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/hardware/radio/ITuner;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 78
    return v2

    .line 53
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/hardware/radio/RadioManager$BandConfig;
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Landroid/hardware/radio/ITunerCallback;
    .end local v7    # "_result":Landroid/hardware/radio/ITuner;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/hardware/radio/IRadioService$Stub;->listModules()Ljava/util/List;

    move-result-object v1

    .line 55
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ModuleProperties;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    return v2

    .line 48
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ModuleProperties;>;"
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
