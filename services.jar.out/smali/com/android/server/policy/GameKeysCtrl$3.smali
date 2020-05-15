.class Lcom/android/server/policy/GameKeysCtrl$3;
.super Ljava/lang/Object;
.source "GameKeysCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GameKeysCtrl;->removePopWindowAtTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GameKeysCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GameKeysCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 204
    iput-object p1, p0, Lcom/android/server/policy/GameKeysCtrl$3;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$3;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/GameKeysCtrl;->access$800(Lcom/android/server/policy/GameKeysCtrl;)V

    .line 208
    return-void
.end method
