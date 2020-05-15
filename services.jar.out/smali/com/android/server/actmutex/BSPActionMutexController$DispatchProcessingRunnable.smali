.class Lcom/android/server/actmutex/BSPActionMutexController$DispatchProcessingRunnable;
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
    name = "DispatchProcessingRunnable"
.end annotation


# instance fields
.field private sWillact:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/actmutex/BSPActionMutexController;


# direct methods
.method public constructor <init>(Lcom/android/server/actmutex/BSPActionMutexController;Ljava/lang/String;)V
    .locals 0
    .param p2, "a"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/android/server/actmutex/BSPActionMutexController$DispatchProcessingRunnable;->this$0:Lcom/android/server/actmutex/BSPActionMutexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/android/server/actmutex/BSPActionMutexController$DispatchProcessingRunnable;->sWillact:Ljava/lang/String;

    .line 207
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController$DispatchProcessingRunnable;->this$0:Lcom/android/server/actmutex/BSPActionMutexController;

    iget-object v1, p0, Lcom/android/server/actmutex/BSPActionMutexController$DispatchProcessingRunnable;->sWillact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/actmutex/BSPActionMutexController;->dispatchProcessingCompletedCallback(Ljava/lang/String;)V

    .line 211
    return-void
.end method
