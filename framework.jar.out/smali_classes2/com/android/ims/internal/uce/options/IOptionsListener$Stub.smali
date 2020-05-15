.class public abstract Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;
.super Landroid/os/Binder;
.source "IOptionsListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.options.IOptionsListener"

.field static final TRANSACTION_cmdStatus:I = 0x5

.field static final TRANSACTION_getVersionCb:I = 0x1

.field static final TRANSACTION_incomingOptions:I = 0x6

.field static final TRANSACTION_serviceAvailable:I = 0x2

.field static final TRANSACTION_serviceUnavailable:I = 0x3

.field static final TRANSACTION_sipResponseReceived:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/options/IOptionsListener;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/options/IOptionsListener;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.android.ims.internal.uce.options.IOptionsListener"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 123
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    sget-object v1, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    .local v1, "_arg1":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    goto :goto_0

    .line 131
    .end local v1    # "_arg1":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    :cond_0
    nop

    .line 134
    .restart local v1    # "_arg1":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 135
    .local v4, "_arg2":I
    invoke-virtual {p0, v3, v1, v4}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->incomingOptions(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;I)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v2

    .line 109
    .end local v1    # "_arg1":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    sget-object v1, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;

    .local v1, "_arg0":Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    goto :goto_1

    .line 115
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    :cond_1
    nop

    .line 117
    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->cmdStatus(Lcom/android/ims/internal/uce/options/OptionsCmdStatus;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    return v2

    .line 86
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    sget-object v4, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/options/OptionsSipResponse;

    .local v4, "_arg1":Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    goto :goto_2

    .line 94
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    :cond_2
    move-object v4, v1

    .line 97
    .restart local v4    # "_arg1":Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    sget-object v1, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    .local v1, "_arg2":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    goto :goto_3

    .line 101
    .end local v1    # "_arg2":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    :cond_3
    nop

    .line 103
    .restart local v1    # "_arg2":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    :goto_3
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->sipResponseReceived(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsSipResponse;Lcom/android/ims/internal/uce/options/OptionsCapInfo;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v2

    .line 72
    .end local v1    # "_arg2":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    sget-object v1, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/common/StatusCode;

    .local v1, "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_4

    .line 78
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_4
    nop

    .line 80
    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->serviceUnavailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v2

    .line 58
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 61
    sget-object v1, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/common/StatusCode;

    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_5

    .line 64
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_5
    nop

    .line 66
    .restart local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v2

    .line 49
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->getVersionCb(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v2

    .line 44
    .end local v1    # "_arg0":Ljava/lang/String;
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
