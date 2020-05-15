.class Lcom/android/server/location/RemoteListenerHelper$1$1;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/RemoteListenerHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/RemoteListenerHelper$1;


# direct methods
.method constructor <init>(Lcom/android/server/location/RemoteListenerHelper$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/location/RemoteListenerHelper$1;

    .line 196
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$1$1;, "Lcom/android/server/location/RemoteListenerHelper$1$1;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$1$1;->this$1:Lcom/android/server/location/RemoteListenerHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 199
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$1$1;, "Lcom/android/server/location/RemoteListenerHelper$1$1;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1$1;->this$1:Lcom/android/server/location/RemoteListenerHelper$1;

    iget-object v0, v0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$100(Lcom/android/server/location/RemoteListenerHelper;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$1$1;->this$1:Lcom/android/server/location/RemoteListenerHelper$1;

    iget-object v1, v1, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$1$1;->this$1:Lcom/android/server/location/RemoteListenerHelper$1;

    iget v2, v2, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    invoke-virtual {v1, v2}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v1

    .line 201
    .local v1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$1$1;->this$1:Lcom/android/server/location/RemoteListenerHelper$1;

    iget-object v2, v2, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v2, v1}, Lcom/android/server/location/RemoteListenerHelper;->access$200(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 202
    .end local v1    # "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
