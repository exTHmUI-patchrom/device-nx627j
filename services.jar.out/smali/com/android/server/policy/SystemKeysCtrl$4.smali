.class Lcom/android/server/policy/SystemKeysCtrl$4;
.super Ljava/lang/Object;
.source "SystemKeysCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SystemKeysCtrl;->showToast()V
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

    .line 806
    iput-object p1, p0, Lcom/android/server/policy/SystemKeysCtrl$4;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$4;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    iget-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl$4;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$1004(Lcom/android/server/policy/SystemKeysCtrl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SystemKeysCtrl;->setToastCounts(I)V

    .line 811
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$4;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SystemKeysCtrl;->access$400(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl$4;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$400(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 812
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 816
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
