.class public abstract Landroid/nfc/IAppCallback$Stub;
.super Landroid/os/Binder;
.source "IAppCallback.java"

# interfaces
.implements Landroid/nfc/IAppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/IAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/IAppCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.IAppCallback"

.field static final TRANSACTION_createBeamShareData:I = 0x1

.field static final TRANSACTION_onNdefPushComplete:I = 0x2

.field static final TRANSACTION_onTagDiscovered:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.IAppCallback"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/IAppCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.nfc.IAppCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/IAppCallback;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/nfc/IAppCallback;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/nfc/IAppCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/IAppCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    .line 41
    const-string v0, "android.nfc.IAppCallback"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 75
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/Tag;

    .local v1, "_arg0":Landroid/nfc/Tag;
    goto :goto_0

    .line 81
    .end local v1    # "_arg0":Landroid/nfc/Tag;
    :cond_0
    const/4 v1, 0x0

    .line 83
    .restart local v1    # "_arg0":Landroid/nfc/Tag;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/nfc/IAppCallback$Stub;->onTagDiscovered(Landroid/nfc/Tag;)V

    .line 84
    return v2

    .line 67
    .end local v1    # "_arg0":Landroid/nfc/Tag;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 70
    .local v1, "_arg0":B
    invoke-virtual {p0, v1}, Landroid/nfc/IAppCallback$Stub;->onNdefPushComplete(B)V

    .line 71
    return v2

    .line 51
    .end local v1    # "_arg0":B
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 54
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Landroid/nfc/IAppCallback$Stub;->createBeamShareData(B)Landroid/nfc/BeamShareData;

    move-result-object v3

    .line 55
    .local v3, "_result":Landroid/nfc/BeamShareData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {v3, p3, v2}, Landroid/nfc/BeamShareData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 61
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    :goto_1
    return v2

    .line 46
    .end local v1    # "_arg0":B
    .end local v3    # "_result":Landroid/nfc/BeamShareData;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
