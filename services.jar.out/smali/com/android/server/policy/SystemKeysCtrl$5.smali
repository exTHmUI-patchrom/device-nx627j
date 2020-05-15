.class Lcom/android/server/policy/SystemKeysCtrl$5;
.super Ljava/lang/Object;
.source "SystemKeysCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SystemKeysCtrl;->showKeyToast()V
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

    .line 821
    iput-object p1, p0, Lcom/android/server/policy/SystemKeysCtrl$5;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 824
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$5;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SystemKeysCtrl;->access$400(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl$5;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$400(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 826
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 827
    return-void
.end method
