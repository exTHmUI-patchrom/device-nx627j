.class public abstract Landroid/companion/ICompanionDeviceManager$Stub;
.super Landroid/os/Binder;
.source "ICompanionDeviceManager.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.companion.ICompanionDeviceManager"

.field static final TRANSACTION_associate:I = 0x1

.field static final TRANSACTION_disassociate:I = 0x4

.field static final TRANSACTION_getAssociations:I = 0x3

.field static final TRANSACTION_hasNotificationAccess:I = 0x5

.field static final TRANSACTION_requestNotificationAccess:I = 0x6

.field static final TRANSACTION_stopScan:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.companion.ICompanionDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/companion/ICompanionDeviceManager;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/companion/ICompanionDeviceManager;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
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

    .line 43
    const-string v0, "android.companion.ICompanionDeviceManager"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .line 133
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_0
    nop

    .line 135
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/companion/ICompanionDeviceManager$Stub;->requestNotificationAccess(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 136
    .local v3, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v3, p3, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 142
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    :goto_1
    return v2

    .line 112
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/PendingIntent;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 118
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_2
    nop

    .line 120
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0, v1}, Landroid/companion/ICompanionDeviceManager$Stub;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    move-result v3

    .line 121
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return v2

    .line 101
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->disassociate(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    return v2

    .line 89
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 95
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 97
    return v2

    .line 71
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    sget-object v1, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationRequest;

    .local v1, "_arg0":Landroid/companion/AssociationRequest;
    goto :goto_3

    .line 77
    .end local v1    # "_arg0":Landroid/companion/AssociationRequest;
    :cond_3
    nop

    .line 80
    .restart local v1    # "_arg0":Landroid/companion/AssociationRequest;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/IFindDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IFindDeviceCallback;

    move-result-object v3

    .line 82
    .local v3, "_arg1":Landroid/companion/IFindDeviceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v2

    .line 53
    .end local v1    # "_arg0":Landroid/companion/AssociationRequest;
    .end local v3    # "_arg1":Landroid/companion/IFindDeviceCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 56
    sget-object v1, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationRequest;

    .restart local v1    # "_arg0":Landroid/companion/AssociationRequest;
    goto :goto_4

    .line 59
    .end local v1    # "_arg0":Landroid/companion/AssociationRequest;
    :cond_4
    nop

    .line 62
    .restart local v1    # "_arg0":Landroid/companion/AssociationRequest;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/IFindDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IFindDeviceCallback;

    move-result-object v3

    .line 64
    .restart local v3    # "_arg1":Landroid/companion/IFindDeviceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 65
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v2

    .line 48
    .end local v1    # "_arg0":Landroid/companion/AssociationRequest;
    .end local v3    # "_arg1":Landroid/companion/IFindDeviceCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
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
