.class Lcom/android/server/policy/SystemKeysCtrl$1;
.super Ljava/lang/Object;
.source "SystemKeysCtrl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SystemKeysCtrl;->setUpPopWindowView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SystemKeysCtrl;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SystemKeysCtrl;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SystemKeysCtrl;

    .line 711
    iput-object p1, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    iput-object p2, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 714
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/SystemKeysCtrl;->access$000(Lcom/android/server/policy/SystemKeysCtrl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-static {}, Lcom/android/server/policy/SystemKeysCtrl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SystemKeysCtrl"

    const-string v1, "... unlock the keys"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$202(Lcom/android/server/policy/SystemKeysCtrl;Z)Z

    .line 718
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$300(Lcom/android/server/policy/SystemKeysCtrl;I)V

    .line 719
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$400(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3070174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 722
    :cond_1
    invoke-static {}, Lcom/android/server/policy/SystemKeysCtrl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SystemKeysCtrl"

    const-string v1, "... lock the keys"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$202(Lcom/android/server/policy/SystemKeysCtrl;Z)Z

    .line 724
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$300(Lcom/android/server/policy/SystemKeysCtrl;I)V

    .line 725
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl$1;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$400(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x307006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    :goto_0
    return-void
.end method
