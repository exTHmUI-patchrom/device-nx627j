.class public abstract Landroid/app/timezone/IRulesManager$Stub;
.super Landroid/os/Binder;
.source "IRulesManager.java"

# interfaces
.implements Landroid/app/timezone/IRulesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/IRulesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/IRulesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.timezone.IRulesManager"

.field static final TRANSACTION_getRulesState:I = 0x1

.field static final TRANSACTION_requestInstall:I = 0x2

.field static final TRANSACTION_requestNothing:I = 0x4

.field static final TRANSACTION_requestUninstall:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.app.timezone.IRulesManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/timezone/IRulesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/timezone/IRulesManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    const-string v0, "android.app.timezone.IRulesManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/timezone/IRulesManager;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Landroid/app/timezone/IRulesManager;

    return-object v1

    .line 40
    :cond_1
    new-instance v1, Landroid/app/timezone/IRulesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/timezone/IRulesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 44
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

    .line 48
    const-string v0, "android.app.timezone.IRulesManager"

    .line 49
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 103
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 107
    .local v3, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    nop

    .line 108
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v3, v1}, Landroid/app/timezone/IRulesManager$Stub;->requestNothing([BZ)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v2

    .line 91
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":[B
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 95
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/timezone/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/ICallback;

    move-result-object v3

    .line 96
    .local v3, "_arg1":Landroid/app/timezone/ICallback;
    invoke-virtual {p0, v1, v3}, Landroid/app/timezone/IRulesManager$Stub;->requestUninstall([BLandroid/app/timezone/ICallback;)I

    move-result v4

    .line 97
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return v2

    .line 72
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":Landroid/app/timezone/ICallback;
    .end local v4    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 78
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v1, 0x0

    .line 81
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 83
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/timezone/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/ICallback;

    move-result-object v4

    .line 84
    .local v4, "_arg2":Landroid/app/timezone/ICallback;
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/timezone/IRulesManager$Stub;->requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I

    move-result v5

    .line 85
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return v2

    .line 58
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Landroid/app/timezone/ICallback;
    .end local v5    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/timezone/IRulesManager$Stub;->getRulesState()Landroid/app/timezone/RulesState;

    move-result-object v3

    .line 60
    .local v3, "_result":Landroid/app/timezone/RulesState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v3, :cond_2

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v3, p3, v2}, Landroid/app/timezone/RulesState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    :goto_1
    return v2

    .line 53
    .end local v3    # "_result":Landroid/app/timezone/RulesState;
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
