.class Lcom/android/server/policy/SystemKeysCtrl$3;
.super Ljava/lang/Object;
.source "SystemKeysCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SystemKeysCtrl;->removePopWindowAtTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SystemKeysCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SystemKeysCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SystemKeysCtrl;

    .line 785
    iput-object p1, p0, Lcom/android/server/policy/SystemKeysCtrl$3;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$3;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SystemKeysCtrl;->access$900(Lcom/android/server/policy/SystemKeysCtrl;)V

    .line 789
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$3;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$202(Lcom/android/server/policy/SystemKeysCtrl;Z)Z

    .line 790
    return-void
.end method
