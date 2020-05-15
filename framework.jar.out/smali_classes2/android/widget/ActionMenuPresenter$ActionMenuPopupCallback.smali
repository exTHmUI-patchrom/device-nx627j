.class Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;
.super Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "x1"    # Landroid/widget/ActionMenuPresenter$1;

    .line 1016
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .locals 1

    .line 1019
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1700(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1700(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
