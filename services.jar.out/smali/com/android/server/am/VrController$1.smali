.class Lcom/android/server/am/VrController$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "VrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VrController;


# direct methods
.method constructor <init>(Lcom/android/server/am/VrController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/VrController;

    .line 109
    iput-object p1, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 112
    iget-object v0, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    invoke-static {v0}, Lcom/android/server/am/VrController;->access$000(Lcom/android/server/am/VrController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 115
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    const/4 v4, 0x3

    invoke-static {v3, v2, v4, v1}, Lcom/android/server/am/VrController;->access$100(Lcom/android/server/am/VrController;IIZ)I

    .line 117
    iget-object v1, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/am/VrController;->access$276(Lcom/android/server/am/VrController;I)I

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    invoke-static {v3, v2, v1}, Lcom/android/server/am/VrController;->access$300(Lcom/android/server/am/VrController;IZ)I

    .line 120
    iget-object v1, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    const/4 v2, -0x3

    invoke-static {v1, v2}, Lcom/android/server/am/VrController;->access$272(Lcom/android/server/am/VrController;I)I

    .line 122
    :goto_0
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
