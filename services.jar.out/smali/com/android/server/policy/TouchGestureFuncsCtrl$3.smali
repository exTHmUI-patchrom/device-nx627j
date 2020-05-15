.class Lcom/android/server/policy/TouchGestureFuncsCtrl$3;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TouchGestureFuncsCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .line 193
    iput-object p1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$3;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.action.supersnap.takescreenshot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "enterPattern"

    const-string/jumbo v2, "threeFingersService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "cn.nubia.supersnap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$3;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-static {v1}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$400(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GesturePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while trying to start super snapshot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
