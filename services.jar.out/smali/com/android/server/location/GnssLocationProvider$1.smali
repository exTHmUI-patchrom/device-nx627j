.class Lcom/android/server/location/GnssLocationProvider$1;
.super Landroid/location/IGnssStatusProvider$Stub;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 485
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/location/IGnssStatusProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 3
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;

    .line 488
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssStatusListenerHelper;->addListener(Landroid/os/IInterface;)Z

    .line 490
    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 491
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 492
    .local v1, "callPid":I
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->addCallPid(Landroid/os/IBinder;I)V

    .line 494
    return-void
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 3
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;

    .line 498
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssStatusListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 500
    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 501
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 502
    .local v1, "callPid":I
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->removeCallPid(Landroid/os/IBinder;I)V

    .line 504
    return-void
.end method
