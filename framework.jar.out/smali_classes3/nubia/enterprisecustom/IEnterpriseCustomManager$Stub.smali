.class public abstract Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;
.super Landroid/os/Binder;
.source "IEnterpriseCustomManager.java"

# interfaces
.implements Lnubia/enterprisecustom/IEnterpriseCustomManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/enterprisecustom/IEnterpriseCustomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.enterprisecustom.IEnterpriseCustomManager"

.field static final TRANSACTION_closeFile:I = 0x3

.field static final TRANSACTION_closeFileOutputStream:I = 0x6

.field static final TRANSACTION_copyFile:I = 0x2

.field static final TRANSACTION_createFile:I = 0x1

.field static final TRANSACTION_createFileOutputStream:I = 0x5

.field static final TRANSACTION_deleteFile:I = 0x7

.field static final TRANSACTION_getEnterpriseCustomComplete:I = 0xb

.field static final TRANSACTION_getVersion:I = 0xc

.field static final TRANSACTION_isEnterPriseCustompackage:I = 0x8

.field static final TRANSACTION_isSupportFactoryReset:I = 0x9

.field static final TRANSACTION_mkdirsFile:I = 0x4

.field static final TRANSACTION_setEnterpriseCustomComplete:I = 0xa

.field static final TRANSACTION_unstallAppAndReboot:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "nubia.enterprisecustom.IEnterpriseCustomManager"

    invoke-virtual {p0, p0, v0}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/enterprisecustom/IEnterpriseCustomManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "nubia.enterprisecustom.IEnterpriseCustomManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/enterprisecustom/IEnterpriseCustomManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lnubia/enterprisecustom/IEnterpriseCustomManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "nubia.enterprisecustom.IEnterpriseCustomManager"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 164
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->unstallAppAndReboot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 170
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    return v2

    .line 154
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v2

    .line 146
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->getEnterpriseCustomComplete()Z

    move-result v1

    .line 148
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return v2

    .line 136
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->setEnterpriseCustomComplete(Ljava/lang/String;)Z

    move-result v3

    .line 140
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return v2

    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->isSupportFactoryReset(Ljava/lang/String;)Z

    move-result v3

    .line 130
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return v2

    .line 116
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->isEnterPriseCustompackage(Ljava/lang/String;)Z

    move-result v3

    .line 120
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return v2

    .line 106
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    .line 110
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v2

    .line 98
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->closeFileOutputStream()Z

    move-result v1

    .line 100
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v2

    .line 90
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->createFileOutputStream()Z

    move-result v1

    .line 92
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v2

    .line 80
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->mkdirsFile(Ljava/lang/String;)Z

    move-result v3

    .line 84
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v2

    .line 72
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->closeFile()Z

    move-result v1

    .line 74
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return v2

    .line 59
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 63
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 64
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->copyFile([BI)Z

    move-result v4

    .line 65
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 68
    return v2

    .line 49
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->createFile(Ljava/lang/String;)Z

    move-result v3

    .line 53
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return v2

    .line 44
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
