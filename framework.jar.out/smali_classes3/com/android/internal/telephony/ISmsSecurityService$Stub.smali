.class public abstract Lcom/android/internal/telephony/ISmsSecurityService$Stub;
.super Landroid/os/Binder;
.source "ISmsSecurityService.java"

# interfaces
.implements Lcom/android/internal/telephony/ISmsSecurityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISmsSecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISmsSecurityService"

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_sendResponse:I = 0x3

.field static final TRANSACTION_unregister:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ISmsSecurityService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsSecurityService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "com.android.internal.telephony.ISmsSecurityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISmsSecurityService;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISmsSecurityService;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
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

    .line 45
    const-string v0, "com.android.internal.telephony.ISmsSecurityService"

    .line 46
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 92
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
    sget-object v1, Lcom/android/internal/telephony/SmsAuthorizationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsAuthorizationRequest;

    .local v1, "_arg0":Lcom/android/internal/telephony/SmsAuthorizationRequest;
    goto :goto_0

    .line 81
    .end local v1    # "_arg0":Lcom/android/internal/telephony/SmsAuthorizationRequest;
    :cond_0
    const/4 v1, 0x0

    .line 84
    .restart local v1    # "_arg0":Lcom/android/internal/telephony/SmsAuthorizationRequest;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 85
    .local v3, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;->sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z

    move-result v4

    .line 86
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v2

    .line 65
    .end local v1    # "_arg0":Lcom/android/internal/telephony/SmsAuthorizationRequest;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISmsSecurityAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsSecurityAgent;

    move-result-object v1

    .line 68
    .local v1, "_arg0":Lcom/android/internal/telephony/ISmsSecurityAgent;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;->unregister(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z

    move-result v3

    .line 69
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v2

    .line 55
    .end local v1    # "_arg0":Lcom/android/internal/telephony/ISmsSecurityAgent;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISmsSecurityAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsSecurityAgent;

    move-result-object v1

    .line 58
    .restart local v1    # "_arg0":Lcom/android/internal/telephony/ISmsSecurityAgent;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;->register(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z

    move-result v3

    .line 59
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return v2

    .line 50
    .end local v1    # "_arg0":Lcom/android/internal/telephony/ISmsSecurityAgent;
    .end local v3    # "_result":Z
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
