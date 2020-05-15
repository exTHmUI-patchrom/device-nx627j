.class Landroid/se/omapi/SEService$1;
.super Ljava/lang/Object;
.source "SEService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/se/omapi/SEService;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService$OnConnectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/se/omapi/SEService;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/se/omapi/SEService;

    .line 147
    iput-object p1, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-static {p2}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/se/omapi/SEService;->access$102(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)Landroid/se/omapi/ISecureElementService;

    .line 153
    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-static {v0}, Landroid/se/omapi/SEService;->access$200(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-static {v0}, Landroid/se/omapi/SEService;->access$200(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/se/omapi/SEService$SEListener;->onConnected()V

    .line 156
    :cond_0
    const-string v0, "OMAPI.SEService"

    const-string v1, "Service onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 151
    .end local p1    # "className":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/se/omapi/SEService$1;
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 160
    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/se/omapi/SEService;->access$102(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)Landroid/se/omapi/ISecureElementService;

    .line 161
    const-string v0, "OMAPI.SEService"

    const-string v1, "Service onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method
