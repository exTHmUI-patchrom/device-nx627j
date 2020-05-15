.class public abstract Lcn/nubia/processmanager/datacollection/IDataCollectionInterface$Stub;
.super Landroid/os/Binder;
.source "IDataCollectionInterface.java"

# interfaces
.implements Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/processmanager/datacollection/IDataCollectionInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.processmanager.datacollection.IDataCollectionInterface"

.field static final TRANSACTION_updateData:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.processmanager.datacollection.IDataCollectionInterface"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "cn.nubia.processmanager.datacollection.IDataCollectionInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
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

    .line 38
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :cond_0
    const-string v1, "cn.nubia.processmanager.datacollection.IDataCollectionInterface"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v0

    .line 47
    :cond_1
    const-string v1, "cn.nubia.processmanager.datacollection.IDataCollectionInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 55
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    .line 57
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface$Stub;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    return v0
.end method
