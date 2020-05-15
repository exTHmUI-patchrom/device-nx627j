.class Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;
.super Ljava/lang/Object;
.source "BSPActionMutexController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/actmutex/BSPActionMutexController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackRunnable"
.end annotation


# instance fields
.field private sCb:Lcn/nubia/mutex/IBSPMutexCallback;

.field private sFlag:Z

.field private sPckName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/actmutex/BSPActionMutexController;


# direct methods
.method public constructor <init>(Lcom/android/server/actmutex/BSPActionMutexController;Ljava/lang/String;Lcn/nubia/mutex/IBSPMutexCallback;Z)V
    .locals 0
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "cb"    # Lcn/nubia/mutex/IBSPMutexCallback;
    .param p4, "unORregister"    # Z

    .line 219
    iput-object p1, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->this$0:Lcom/android/server/actmutex/BSPActionMutexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->sPckName:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->sCb:Lcn/nubia/mutex/IBSPMutexCallback;

    .line 222
    iput-boolean p4, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->sFlag:Z

    .line 223
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 227
    iget-boolean v0, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->sFlag:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->this$0:Lcom/android/server/actmutex/BSPActionMutexController;

    invoke-static {v0}, Lcom/android/server/actmutex/BSPActionMutexController;->access$100(Lcom/android/server/actmutex/BSPActionMutexController;)Lcom/android/server/actmutex/BSPCallbackList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->sPckName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->sCb:Lcn/nubia/mutex/IBSPMutexCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/actmutex/BSPCallbackList;->register(Ljava/lang/String;Lcn/nubia/mutex/IBSPMutexCallback;)Z

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->this$0:Lcom/android/server/actmutex/BSPActionMutexController;

    invoke-static {v0}, Lcom/android/server/actmutex/BSPActionMutexController;->access$100(Lcom/android/server/actmutex/BSPActionMutexController;)Lcom/android/server/actmutex/BSPCallbackList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->sCb:Lcn/nubia/mutex/IBSPMutexCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/actmutex/BSPCallbackList;->unregister(Lcn/nubia/mutex/IBSPMutexCallback;)Z

    .line 232
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->this$0:Lcom/android/server/actmutex/BSPActionMutexController;

    iget-object v1, p0, Lcom/android/server/actmutex/BSPActionMutexController$CallbackRunnable;->sPckName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/actmutex/BSPActionMutexController;->access$000(Lcom/android/server/actmutex/BSPActionMutexController;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void
.end method
