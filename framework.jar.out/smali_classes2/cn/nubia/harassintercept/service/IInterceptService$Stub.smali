.class public abstract Lcn/nubia/harassintercept/service/IInterceptService$Stub;
.super Landroid/os/Binder;
.source "IInterceptService.java"

# interfaces
.implements Lcn/nubia/harassintercept/service/IInterceptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/harassintercept/service/IInterceptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/harassintercept/service/IInterceptService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.harassintercept.service.IInterceptService"

.field static final TRANSACTION_addName:I = 0x2

.field static final TRANSACTION_isHarassCall:I = 0x3

.field static final TRANSACTION_isSpamSms:I = 0x1

.field static final TRANSACTION_writeRecord:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "cn.nubia.harassintercept.service.IInterceptService"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/harassintercept/service/IInterceptService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/harassintercept/service/IInterceptService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "cn.nubia.harassintercept.service.IInterceptService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/harassintercept/service/IInterceptService;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcn/nubia/harassintercept/service/IInterceptService;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcn/nubia/harassintercept/service/IInterceptService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcn/nubia/harassintercept/service/IInterceptService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "cn.nubia.harassintercept.service.IInterceptService"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 95
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Intent;

    .local v3, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .line 101
    .end local v3    # "_arg0":Landroid/content/Intent;
    :cond_0
    nop

    .restart local v3    # "_arg0":Landroid/content/Intent;
    :goto_0
    move-object v1, v3

    .line 103
    .end local v3    # "_arg0":Landroid/content/Intent;
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcn/nubia/harassintercept/service/IInterceptService$Stub;->writeRecord(Landroid/content/Intent;)Z

    move-result v3

    .line 104
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v2

    .line 79
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcn/nubia/harassintercept/service/IInterceptService$Stub;->isHarassCall(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 83
    .local v4, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v4, p3, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    :goto_1
    return v2

    .line 70
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcn/nubia/harassintercept/service/IInterceptService$Stub;->addName(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v2

    .line 49
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .local v3, "_arg0":Landroid/content/Intent;
    goto :goto_2

    .line 55
    .end local v3    # "_arg0":Landroid/content/Intent;
    :cond_2
    nop

    .line 57
    .restart local v3    # "_arg0":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v3}, Lcn/nubia/harassintercept/service/IInterceptService$Stub;->isSpamSms(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 58
    .restart local v4    # "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v4, :cond_3

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v4, p3, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    :goto_3
    return v2

    .line 44
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v4    # "_result":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
