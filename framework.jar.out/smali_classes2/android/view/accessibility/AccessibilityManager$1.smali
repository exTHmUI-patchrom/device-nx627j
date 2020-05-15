.class Landroid/view/accessibility/AccessibilityManager$1;
.super Landroid/view/accessibility/IAccessibilityManagerClient$Stub;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/accessibility/AccessibilityManager;

    .line 281
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$notifyServicesStateChanged$0(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 307
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    .line 308
    invoke-interface {p1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;->onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V

    .line 307
    return-void
.end method


# virtual methods
.method public notifyServicesStateChanged()V
    .locals 6

    .line 296
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->access$000(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->access$100(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    monitor-exit v0

    return-void

    .line 300
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->access$100(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 301
    .local v1, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 304
    .local v0, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 305
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    .line 306
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->access$100(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 307
    .local v3, "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->access$100(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    new-instance v5, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$1$o7fCplskH9NlBwJvkl6NoZ0L_BA;

    invoke-direct {v5, p0, v3}, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$1$o7fCplskH9NlBwJvkl6NoZ0L_BA;-><init>(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    .end local v3    # "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 301
    .end local v0    # "numListeners":I
    .end local v1    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRelevantEventTypes(I)V
    .locals 1
    .param p1, "eventTypes"    # I

    .line 314
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iput p1, v0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    .line 315
    return-void
.end method

.method public setState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 290
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 291
    return-void
.end method
