.class public abstract Lnubia/os/advt/IAdCallback$Stub;
.super Landroid/os/Binder;
.source "IAdCallback.java"

# interfaces
.implements Lnubia/os/advt/IAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/advt/IAdCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/advt/IAdCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.advt.IAdCallback"

.field static final TRANSACTION_onBlackListChange:I = 0x2

.field static final TRANSACTION_onConfigChange:I = 0x3

.field static final TRANSACTION_onWhiteListChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "nubia.os.advt.IAdCallback"

    invoke-virtual {p0, p0, v0}, Lnubia/os/advt/IAdCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/advt/IAdCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "nubia.os.advt.IAdCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/advt/IAdCallback;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lnubia/os/advt/IAdCallback;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lnubia/os/advt/IAdCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/os/advt/IAdCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const-string v0, "nubia.os.advt.IAdCallback"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 69
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lnubia/os/advt/AdConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnubia/os/advt/AdConfig;

    .local v1, "_arg0":Lnubia/os/advt/AdConfig;
    goto :goto_0

    .line 75
    .end local v1    # "_arg0":Lnubia/os/advt/AdConfig;
    :cond_0
    const/4 v1, 0x0

    .line 77
    .restart local v1    # "_arg0":Lnubia/os/advt/AdConfig;
    :goto_0
    invoke-virtual {p0, v1}, Lnubia/os/advt/IAdCallback$Stub;->onConfigChange(Lnubia/os/advt/AdConfig;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    return v2

    .line 60
    .end local v1    # "_arg0":Lnubia/os/advt/AdConfig;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    sget-object v1, Lnubia/os/advt/AdBlackItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 63
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lnubia/os/advt/AdBlackItem;>;"
    invoke-virtual {p0, v1}, Lnubia/os/advt/IAdCallback$Stub;->onBlackListChange(Ljava/util/List;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v2

    .line 51
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lnubia/os/advt/AdBlackItem;>;"
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    sget-object v1, Lnubia/os/advt/AdWhiteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lnubia/os/advt/AdWhiteItem;>;"
    invoke-virtual {p0, v1}, Lnubia/os/advt/IAdCallback$Stub;->onWhiteListChange(Ljava/util/List;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    return v2

    .line 46
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lnubia/os/advt/AdWhiteItem;>;"
    :cond_1
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
