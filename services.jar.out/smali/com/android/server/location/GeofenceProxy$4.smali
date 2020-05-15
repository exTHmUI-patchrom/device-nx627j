.class Lcom/android/server/location/GeofenceProxy$4;
.super Landroid/os/Handler;
.source "GeofenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GeofenceProxy;

    .line 152
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$100(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)V

    .line 183
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$100(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$400(Lcom/android/server/location/GeofenceProxy;)V

    .line 173
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$500(Lcom/android/server/location/GeofenceProxy;)V

    .line 174
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)V

    .line 176
    :cond_1
    monitor-exit v0

    .line 177
    goto :goto_0

    .line 176
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 158
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$100(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_2
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy$4;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v1}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)V

    .line 164
    :cond_2
    monitor-exit v0

    .line 165
    goto :goto_0

    .line 164
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 186
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
