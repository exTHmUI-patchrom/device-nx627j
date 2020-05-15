.class public abstract Lnubia/os/advt/IAdControlInterface$Stub;
.super Landroid/os/Binder;
.source "IAdControlInterface.java"

# interfaces
.implements Lnubia/os/advt/IAdControlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/advt/IAdControlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/advt/IAdControlInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.advt.IAdControlInterface"

.field static final TRANSACTION_getAdControlBinder:I = 0x9

.field static final TRANSACTION_getBlackList:I = 0x4

.field static final TRANSACTION_getConfig:I = 0x1

.field static final TRANSACTION_getNextPicture:I = 0x2

.field static final TRANSACTION_getWhiteList:I = 0x3

.field static final TRANSACTION_onAdAutoClose:I = 0x7

.field static final TRANSACTION_onAdClick:I = 0x6

.field static final TRANSACTION_onAdHandClose:I = 0x8

.field static final TRANSACTION_onAdShow:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0xa

.field static final TRANSACTION_unregisterCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "nubia.os.advt.IAdControlInterface"

    invoke-virtual {p0, p0, v0}, Lnubia/os/advt/IAdControlInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/advt/IAdControlInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "nubia.os.advt.IAdControlInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/advt/IAdControlInterface;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lnubia/os/advt/IAdControlInterface;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lnubia/os/advt/IAdControlInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lnubia/os/advt/IAdControlInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 41
    const-string v11, "nubia.os.advt.IAdControlInterface"

    .line 42
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_3

    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_0

    .line 180
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 171
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/advt/IAdCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/advt/IAdCallback;

    move-result-object v0

    .line 174
    .local v0, "_arg0":Lnubia/os/advt/IAdCallback;
    invoke-virtual {v7, v0}, Lnubia/os/advt/IAdControlInterface$Stub;->unregisterCallback(Lnubia/os/advt/IAdCallback;)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    return v12

    .line 162
    .end local v0    # "_arg0":Lnubia/os/advt/IAdCallback;
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/advt/IAdCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/advt/IAdCallback;

    move-result-object v0

    .line 165
    .restart local v0    # "_arg0":Lnubia/os/advt/IAdCallback;
    invoke-virtual {v7, v0}, Lnubia/os/advt/IAdControlInterface$Stub;->registerCallback(Lnubia/os/advt/IAdCallback;)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    return v12

    .line 153
    .end local v0    # "_arg0":Lnubia/os/advt/IAdCallback;
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/advt/IAdControlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/advt/IAdControlInterface;

    move-result-object v0

    .line 156
    .local v0, "_arg0":Lnubia/os/advt/IAdControlInterface;
    invoke-virtual {v7, v0}, Lnubia/os/advt/IAdControlInterface$Stub;->getAdControlBinder(Lnubia/os/advt/IAdControlInterface;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v12

    .line 138
    .end local v0    # "_arg0":Lnubia/os/advt/IAdControlInterface;
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 142
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 144
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 146
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 147
    .local v18, "_arg3":Ljava/lang/String;
    move-object v0, v7

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lnubia/os/advt/IAdControlInterface$Stub;->onAdHandClose(Ljava/lang/String;JJLjava/lang/String;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    return v12

    .line 125
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 131
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Lnubia/os/advt/IAdControlInterface$Stub;->onAdAutoClose(Ljava/lang/String;JLjava/lang/String;)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v12

    .line 112
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 118
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Lnubia/os/advt/IAdControlInterface$Stub;->onAdClick(Ljava/lang/String;JLjava/lang/String;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    return v12

    .line 99
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 105
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Lnubia/os/advt/IAdControlInterface$Stub;->onAdShow(Ljava/lang/String;JLjava/lang/String;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    return v12

    .line 91
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lnubia/os/advt/IAdControlInterface$Stub;->getBlackList()Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lnubia/os/advt/AdBlackItem;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 95
    return v12

    .line 83
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lnubia/os/advt/AdBlackItem;>;"
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lnubia/os/advt/IAdControlInterface$Stub;->getWhiteList()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lnubia/os/advt/AdWhiteItem;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    return v12

    .line 65
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lnubia/os/advt/AdWhiteItem;>;"
    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    move v1, v0

    .line 69
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 70
    .local v2, "_arg1":J
    invoke-virtual {v7, v1, v2, v3}, Lnubia/os/advt/IAdControlInterface$Stub;->getNextPicture(ZJ)Lnubia/os/advt/AdPicture;

    move-result-object v4

    .line 71
    .local v4, "_result":Lnubia/os/advt/AdPicture;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v4, :cond_1

    .line 73
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v4, v10, v12}, Lnubia/os/advt/AdPicture;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    :goto_1
    return v12

    .line 51
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Lnubia/os/advt/AdPicture;
    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lnubia/os/advt/IAdControlInterface$Stub;->getConfig()Lnubia/os/advt/AdConfig;

    move-result-object v1

    .line 53
    .local v1, "_result":Lnubia/os/advt/AdConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {v1, v10, v12}, Lnubia/os/advt/AdConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    :goto_2
    return v12

    .line 46
    .end local v1    # "_result":Lnubia/os/advt/AdConfig;
    :cond_3
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
