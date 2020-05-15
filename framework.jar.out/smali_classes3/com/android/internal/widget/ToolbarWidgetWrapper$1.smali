.class Lcom/android/internal/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field final synthetic this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 177
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v7, Lcom/android/internal/view/menu/ActionMenuItem;

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$000(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 179
    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$100(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 178
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$300(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 185
    :cond_0
    return-void
.end method
