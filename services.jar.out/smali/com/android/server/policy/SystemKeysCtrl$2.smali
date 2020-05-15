.class Lcom/android/server/policy/SystemKeysCtrl$2;
.super Ljava/lang/Object;
.source "SystemKeysCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SystemKeysCtrl;->showPopWindow()V
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

    .line 736
    iput-object p1, p0, Lcom/android/server/policy/SystemKeysCtrl$2;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 739
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$2;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    iget-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl$2;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$400(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$502(Lcom/android/server/policy/SystemKeysCtrl;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 740
    iget-object v0, p0, Lcom/android/server/policy/SystemKeysCtrl$2;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    iget-object v1, p0, Lcom/android/server/policy/SystemKeysCtrl$2;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$700(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/policy/SystemKeysCtrl;->access$602(Lcom/android/server/policy/SystemKeysCtrl;Landroid/view/View;)Landroid/view/View;

    .line 741
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 742
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7e4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 743
    const/16 v1, 0x28

    .line 744
    .local v1, "flags":I
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 745
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 746
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 747
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 749
    iget-object v2, p0, Lcom/android/server/policy/SystemKeysCtrl$2;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    iget-object v3, p0, Lcom/android/server/policy/SystemKeysCtrl$2;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v3}, Lcom/android/server/policy/SystemKeysCtrl;->access$500(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/policy/SystemKeysCtrl;->access$800(Lcom/android/server/policy/SystemKeysCtrl;Landroid/view/WindowManager;)I

    move-result v2

    .line 751
    .local v2, "rotation":I
    if-nez v2, :cond_0

    .line 752
    const/16 v3, 0x51

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 753
    const v3, 0x30e001a

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    .line 754
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 755
    const/16 v3, 0x15

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 756
    const v3, 0x30e0018

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    .line 757
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 758
    const/16 v3, 0x31

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 759
    const v3, 0x30e001b

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    .line 760
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 761
    const/16 v3, 0x13

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 762
    const v3, 0x30e0019

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 764
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/SystemKeysCtrl$2;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v3}, Lcom/android/server/policy/SystemKeysCtrl;->access$500(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/SystemKeysCtrl$2;->this$0:Lcom/android/server/policy/SystemKeysCtrl;

    invoke-static {v4}, Lcom/android/server/policy/SystemKeysCtrl;->access$600(Lcom/android/server/policy/SystemKeysCtrl;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    return-void
.end method
