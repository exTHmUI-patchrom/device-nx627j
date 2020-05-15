.class public abstract Landroid/os/ServiceManagerNative;
.super Landroid/os/Binder;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ServiceManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const-string v0, "android.os.IServiceManager"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IServiceManager;

    .line 40
    .local v0, "in":Landroid/os/IServiceManager;
    if-eqz v0, :cond_1

    .line 41
    return-object v0

    .line 44
    :cond_1
    new-instance v1, Landroid/os/ServiceManagerProxy;

    invoke-direct {v1, p0}, Landroid/os/ServiceManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 107
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 55
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 100
    goto :goto_2

    .line 83
    :pswitch_0
    :try_start_0
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "dumpPriority":I
    invoke-virtual {p0, v0}, Landroid/os/ServiceManagerNative;->listServices(I)[Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "list":[Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 87
    return v2

    .line 73
    .end local v0    # "dumpPriority":I
    .end local v3    # "list":[Ljava/lang/String;
    :pswitch_1
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 76
    .local v3, "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 77
    .local v4, "allowIsolated":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 78
    .local v5, "dumpPriority":I
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/os/ServiceManagerNative;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 79
    return v2

    .line 65
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    .end local v4    # "allowIsolated":Z
    .end local v5    # "dumpPriority":I
    :pswitch_2
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0    # "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ServiceManagerNative;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 68
    .restart local v3    # "service":Landroid/os/IBinder;
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 69
    return v2

    .line 57
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :pswitch_3
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .restart local v0    # "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 60
    .restart local v3    # "service":Landroid/os/IBinder;
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 61
    return v2

    .line 99
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 91
    :cond_1
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    nop

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/os/IPermissionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionController;

    move-result-object v0

    .line 95
    .local v0, "controller":Landroid/os/IPermissionController;
    invoke-virtual {p0, v0}, Landroid/os/ServiceManagerNative;->setPermissionController(Landroid/os/IPermissionController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return v2

    .line 99
    .end local v0    # "controller":Landroid/os/IPermissionController;
    :goto_1
    nop

    .line 102
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
