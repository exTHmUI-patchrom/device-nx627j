.class Lcom/android/server/actmutex/BSPActionMutexController$1;
.super Ljava/lang/Object;
.source "BSPActionMutexController.java"

# interfaces
.implements Lcom/android/server/actmutex/BSPCallbackList$CallbackDied;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/actmutex/BSPActionMutexController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/actmutex/BSPActionMutexController;


# direct methods
.method constructor <init>(Lcom/android/server/actmutex/BSPActionMutexController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/actmutex/BSPActionMutexController;

    .line 24
    iput-object p1, p0, Lcom/android/server/actmutex/BSPActionMutexController$1;->this$0:Lcom/android/server/actmutex/BSPActionMutexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeList(Ljava/lang/String;)V
    .locals 1
    .param p1, "pckName"    # Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/android/server/actmutex/BSPActionMutexController$1;->this$0:Lcom/android/server/actmutex/BSPActionMutexController;

    invoke-static {v0, p1}, Lcom/android/server/actmutex/BSPActionMutexController;->access$000(Lcom/android/server/actmutex/BSPActionMutexController;Ljava/lang/String;)V

    .line 29
    return-void
.end method
