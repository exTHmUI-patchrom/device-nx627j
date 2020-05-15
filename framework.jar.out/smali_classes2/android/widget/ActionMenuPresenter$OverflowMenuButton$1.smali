.class Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;
.super Landroid/widget/ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroid/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/widget/ActionMenuPresenter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
    .param p2, "src"    # Landroid/view/View;

    .line 849
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .locals 1

    .line 852
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 853
    const/4 v0, 0x0

    return-object v0

    .line 856
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 861
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 862
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .line 870
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1200(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    const/4 v0, 0x0

    return v0

    .line 874
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 875
    const/4 v0, 0x1

    return v0
.end method
