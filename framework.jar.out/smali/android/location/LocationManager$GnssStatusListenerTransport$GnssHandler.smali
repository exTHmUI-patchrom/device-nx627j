.class Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1676
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1677
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1678
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1682
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1703
    :pswitch_0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$500(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    iget-object v1, v1, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v1}, Landroid/location/LocationManager;->access$700(Landroid/location/LocationManager;)Landroid/location/GnssStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    .line 1704
    goto :goto_1

    .line 1700
    :pswitch_1
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$500(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    iget-object v1, v1, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v1}, Landroid/location/LocationManager;->access$600(Landroid/location/LocationManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GnssStatus$Callback;->onFirstFix(I)V

    .line 1701
    goto :goto_1

    .line 1697
    :pswitch_2
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$500(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssStatus$Callback;->onStopped()V

    .line 1698
    goto :goto_1

    .line 1694
    :pswitch_3
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$500(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssStatus$Callback;->onStarted()V

    .line 1695
    goto :goto_1

    .line 1684
    :cond_0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$300(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1685
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v1}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$300(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1686
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1687
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$300(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;

    .line 1688
    .local v3, "nmea":Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
    iget-object v4, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v4}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$400(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/OnNmeaMessageListener;

    move-result-object v4

    iget-object v5, v3, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    iget-wide v6, v3, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mTimestamp:J

    invoke-interface {v4, v5, v6, v7}, Landroid/location/OnNmeaMessageListener;->onNmeaMessage(Ljava/lang/String;J)V

    .line 1686
    .end local v3    # "nmea":Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1690
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v2}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$300(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1691
    .end local v1    # "length":I
    monitor-exit v0

    .line 1692
    nop

    .line 1708
    :goto_1
    return-void

    .line 1691
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
