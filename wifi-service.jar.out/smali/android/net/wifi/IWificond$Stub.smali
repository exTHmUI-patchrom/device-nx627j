.class public abstract Landroid/net/wifi/IWificond$Stub;
.super Landroid/os/Binder;
.source "IWificond.java"

# interfaces
.implements Landroid/net/wifi/IWificond;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWificond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWificond$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWificond"

.field static final TRANSACTION_GetApInterfaces:I = 0x7

.field static final TRANSACTION_GetClientInterfaces:I = 0x6

.field static final TRANSACTION_QcAddOrRemoveApInterface:I = 0x8

.field static final TRANSACTION_RegisterCallback:I = 0xf

.field static final TRANSACTION_UnregisterCallback:I = 0x10

.field static final TRANSACTION_createApInterface:I = 0x1

.field static final TRANSACTION_createClientInterface:I = 0x2

.field static final TRANSACTION_disableHostapd:I = 0xc

.field static final TRANSACTION_disableSupplicant:I = 0xe

.field static final TRANSACTION_enableSupplicant:I = 0xd

.field static final TRANSACTION_getAvailable2gChannels:I = 0x9

.field static final TRANSACTION_getAvailable5gNonDFSChannels:I = 0xa

.field static final TRANSACTION_getAvailableDFSChannels:I = 0xb

.field static final TRANSACTION_tearDownApInterface:I = 0x3

.field static final TRANSACTION_tearDownClientInterface:I = 0x4

.field static final TRANSACTION_tearDownInterfaces:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.net.wifi.IWificond"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWificond$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWificond;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.net.wifi.IWificond"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWificond;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IWificond;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/net/wifi/IWificond$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWificond$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "android.net.wifi.IWificond"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 182
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IInterfaceEventCallback;

    move-result-object v1

    .line 185
    .local v1, "_arg0":Landroid/net/wifi/IInterfaceEventCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWificond$Stub;->UnregisterCallback(Landroid/net/wifi/IInterfaceEventCallback;)V

    .line 186
    return v2

    .line 174
    .end local v1    # "_arg0":Landroid/net/wifi/IInterfaceEventCallback;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IInterfaceEventCallback;

    move-result-object v1

    .line 177
    .restart local v1    # "_arg0":Landroid/net/wifi/IInterfaceEventCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWificond$Stub;->RegisterCallback(Landroid/net/wifi/IInterfaceEventCallback;)V

    .line 178
    return v2

    .line 166
    .end local v1    # "_arg0":Landroid/net/wifi/IInterfaceEventCallback;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->disableSupplicant()Z

    move-result v1

    .line 168
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return v2

    .line 158
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->enableSupplicant()Z

    move-result v1

    .line 160
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return v2

    .line 150
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->disableHostapd()Z

    move-result v1

    .line 152
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return v2

    .line 142
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->getAvailableDFSChannels()[I

    move-result-object v1

    .line 144
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 146
    return v2

    .line 134
    .end local v1    # "_result":[I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->getAvailable5gNonDFSChannels()[I

    move-result-object v1

    .line 136
    .restart local v1    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 138
    return v2

    .line 126
    .end local v1    # "_result":[I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->getAvailable2gChannels()[I

    move-result-object v1

    .line 128
    .restart local v1    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 130
    return v2

    .line 114
    .end local v1    # "_result":[I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 119
    .local v3, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/IWificond$Stub;->QcAddOrRemoveApInterface(Ljava/lang/String;Z)Z

    move-result v4

    .line 120
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return v2

    .line 106
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->GetApInterfaces()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 110
    return v2

    .line 98
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->GetClientInterfaces()Ljava/util/List;

    move-result-object v1

    .line 100
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 102
    return v2

    .line 91
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/net/wifi/IWificond$Stub;->tearDownInterfaces()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v2

    .line 81
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWificond$Stub;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v3

    .line 85
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return v2

    .line 71
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWificond$Stub;->tearDownApInterface(Ljava/lang/String;)Z

    move-result v3

    .line 75
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return v2

    .line 61
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/net/wifi/IWificond$Stub;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v4

    .line 65
    .local v4, "_result":Landroid/net/wifi/IClientInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/net/wifi/IClientInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 67
    return v2

    .line 51
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/wifi/IClientInterface;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/net/wifi/IWificond$Stub;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v4

    .line 55
    .local v4, "_result":Landroid/net/wifi/IApInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/net/wifi/IApInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 57
    return v2

    .line 46
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/wifi/IApInterface;
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
