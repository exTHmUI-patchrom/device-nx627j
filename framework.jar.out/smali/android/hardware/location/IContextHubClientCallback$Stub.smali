.class public abstract Landroid/hardware/location/IContextHubClientCallback$Stub;
.super Landroid/os/Binder;
.source "IContextHubClientCallback.java"

# interfaces
.implements Landroid/hardware/location/IContextHubClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubClientCallback"

.field static final TRANSACTION_onHubReset:I = 0x2

.field static final TRANSACTION_onMessageFromNanoApp:I = 0x1

.field static final TRANSACTION_onNanoAppAborted:I = 0x3

.field static final TRANSACTION_onNanoAppDisabled:I = 0x7

.field static final TRANSACTION_onNanoAppEnabled:I = 0x6

.field static final TRANSACTION_onNanoAppLoaded:I = 0x4

.field static final TRANSACTION_onNanoAppUnloaded:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.hardware.location.IContextHubClientCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubClientCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClientCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "android.hardware.location.IContextHubClientCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/location/IContextHubClientCallback;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IContextHubClientCallback;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IContextHubClientCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
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

    .line 44
    const-string v0, "android.hardware.location.IContextHubClientCallback"

    .line 45
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 110
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppDisabled(J)V

    .line 111
    return v2

    .line 99
    .end local v3    # "_arg0":J
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 102
    .restart local v3    # "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppEnabled(J)V

    .line 103
    return v2

    .line 91
    .end local v3    # "_arg0":J
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 94
    .restart local v3    # "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppUnloaded(J)V

    .line 95
    return v2

    .line 83
    .end local v3    # "_arg0":J
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 86
    .restart local v3    # "_arg0":J
    invoke-virtual {p0, v3, v4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppLoaded(J)V

    .line 87
    return v2

    .line 73
    .end local v3    # "_arg0":J
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 77
    .restart local v3    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .local v1, "_arg1":I
    invoke-virtual {p0, v3, v4, v1}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onNanoAppAborted(JI)V

    .line 79
    return v2

    .line 67
    .end local v1    # "_arg1":I
    .end local v3    # "_arg0":J
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onHubReset()V

    .line 69
    return v2

    .line 54
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppMessage;

    .local v1, "_arg0":Landroid/hardware/location/NanoAppMessage;
    goto :goto_0

    .line 60
    .end local v1    # "_arg0":Landroid/hardware/location/NanoAppMessage;
    :cond_0
    const/4 v1, 0x0

    .line 62
    .restart local v1    # "_arg0":Landroid/hardware/location/NanoAppMessage;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/location/IContextHubClientCallback$Stub;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V

    .line 63
    return v2

    .line 49
    .end local v1    # "_arg0":Landroid/hardware/location/NanoAppMessage;
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
