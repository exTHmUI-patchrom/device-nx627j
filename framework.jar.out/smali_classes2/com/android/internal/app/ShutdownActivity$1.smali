.class Lcom/android/internal/app/ShutdownActivity$1;
.super Ljava/lang/Thread;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownActivity;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ShutdownActivity;
    .param p2, "x0"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    iput-object p3, p0, Lcom/android/internal/app/ShutdownActivity$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    const-string/jumbo v0, "power"

    .line 53
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 55
    .local v0, "pm":Landroid/os/IPowerManager;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v1}, Lcom/android/internal/app/ShutdownActivity;->access$000(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v1}, Lcom/android/internal/app/ShutdownActivity;->access$100(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    invoke-static {v1}, Lcom/android/internal/app/ShutdownActivity;->access$100(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/internal/app/ShutdownActivity$1;->val$reason:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    goto :goto_1

    .line 60
    :catch_0
    move-exception v1

    .line 62
    :goto_1
    return-void
.end method
