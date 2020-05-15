.class Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser$MediaServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    .line 975
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->val$name:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 986
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->access$1600(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/service/media/IMediaBrowserService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/media/IMediaBrowserService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$102(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)Landroid/service/media/IMediaBrowserService;

    .line 995
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v1, v1, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->access$1700(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$202(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 996
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->access$002(Landroid/media/browse/MediaBrowser;I)I

    .line 1005
    :try_start_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->access$100(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v1, v1, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->access$600(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v2, v2, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->access$1800(Landroid/media/browse/MediaBrowser;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v3, v3, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    .line 1006
    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->access$200(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v3

    .line 1005
    invoke-interface {v0, v1, v2, v3}, Landroid/service/media/IMediaBrowserService;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    goto :goto_0

    .line 1007
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException during connect for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v3, v3, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->access$300(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
