.class Landroid/location/BatchedLocationCallbackTransport;
.super Landroid/location/LocalListenerHelper;
.source "BatchedLocationCallbackTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/LocalListenerHelper<",
        "Landroid/location/BatchedLocationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallbackTransport:Landroid/location/IBatchedLocationCallback;

.field private final mLocationManager:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;

    .line 36
    const-string v0, "BatchedLocationCallbackTransport"

    invoke-direct {p0, p1, v0}, Landroid/location/LocalListenerHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;-><init>(Landroid/location/BatchedLocationCallbackTransport;Landroid/location/BatchedLocationCallbackTransport$1;)V

    iput-object v0, p0, Landroid/location/BatchedLocationCallbackTransport;->mCallbackTransport:Landroid/location/IBatchedLocationCallback;

    .line 37
    iput-object p2, p0, Landroid/location/BatchedLocationCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    .line 38
    return-void
.end method


# virtual methods
.method protected registerWithServer()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroid/location/BatchedLocationCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/BatchedLocationCallbackTransport;->mCallbackTransport:Landroid/location/IBatchedLocationCallback;

    .line 44
    invoke-virtual {p0}, Landroid/location/BatchedLocationCallbackTransport;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-interface {v0, v1, v2}, Landroid/location/ILocationManager;->addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected unregisterFromServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroid/location/BatchedLocationCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->removeGnssBatchingCallback()V

    .line 50
    return-void
.end method
