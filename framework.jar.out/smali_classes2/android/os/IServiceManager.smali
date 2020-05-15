.class public interface abstract Landroid/os/IServiceManager;
.super Ljava/lang/Object;
.source "IServiceManager.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final ADD_SERVICE_TRANSACTION:I = 0x3

.field public static final CHECK_SERVICES_TRANSACTION:I = 0x5

.field public static final CHECK_SERVICE_TRANSACTION:I = 0x2

.field public static final DUMP_FLAG_PRIORITY_ALL:I = 0xf

.field public static final DUMP_FLAG_PRIORITY_CRITICAL:I = 0x1

.field public static final DUMP_FLAG_PRIORITY_DEFAULT:I = 0x8

.field public static final DUMP_FLAG_PRIORITY_HIGH:I = 0x2

.field public static final DUMP_FLAG_PRIORITY_NORMAL:I = 0x4

.field public static final DUMP_FLAG_PROTO:I = 0x10

.field public static final GET_SERVICE_TRANSACTION:I = 0x1

.field public static final LIST_SERVICES_TRANSACTION:I = 0x4

.field public static final SET_PERMISSION_CONTROLLER_TRANSACTION:I = 0x6

.field public static final descriptor:Ljava/lang/String; = "android.os.IServiceManager"


# virtual methods
.method public abstract addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getService(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract listServices(I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPermissionController(Landroid/os/IPermissionController;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
