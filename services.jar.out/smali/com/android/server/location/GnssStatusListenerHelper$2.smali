.class Lcom/android/server/location/GnssStatusListenerHelper$2;
.super Ljava/lang/Object;
.source "GnssStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GnssStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssStatusListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssStatusListenerHelper;

    .line 81
    iput-object p1, p0, Lcom/android/server/location/GnssStatusListenerHelper$2;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssStatusListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/server/location/GnssStatusListenerHelper$2;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/GnssStatusListenerHelper;->access$000(Lcom/android/server/location/GnssStatusListenerHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 86
    .local v0, "callingPid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GnssStatusListenerHelper$2;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/server/location/GnssStatusListenerHelper;->access$100(Lcom/android/server/location/GnssStatusListenerHelper;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->onGnssStopped()V

    .line 91
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$2;->execute(Landroid/location/IGnssStatusListener;)V

    return-void
.end method
