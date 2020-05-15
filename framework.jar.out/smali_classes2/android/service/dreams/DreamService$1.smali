.class Landroid/service/dreams/DreamService$1;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;

.field final synthetic val$started:Landroid/os/IRemoteCallback;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;

    .line 1126
    iput-object p1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    iput-object p2, p0, Landroid/service/dreams/DreamService$1;->val$started:Landroid/os/IRemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1129
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$100(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$200(Landroid/service/dreams/DreamService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1130
    :cond_0
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$300(Landroid/service/dreams/DreamService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$400(Landroid/service/dreams/DreamService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->access$502(Landroid/service/dreams/DreamService;Z)Z

    .line 1133
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v1}, Landroid/service/dreams/DreamService;->onDreamingStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    :try_start_1
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->val$started:Landroid/os/IRemoteCallback;

    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1139
    nop

    .line 1142
    :cond_2
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1135
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1136
    :try_start_2
    iget-object v2, p0, Landroid/service/dreams/DreamService$1;->val$started:Landroid/os/IRemoteCallback;

    invoke-interface {v2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1139
    nop

    .line 1138
    throw v1

    .line 1137
    :catch_1
    move-exception v0

    .line 1138
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
