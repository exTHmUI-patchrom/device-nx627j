.class Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .locals 0

    .line 974
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "x1"    # Landroid/widget/ActionMenuPresenter$1;

    .line 974
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 987
    instance-of v0, p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 990
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 991
    .local v0, "cb":Lcom/android/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    .line 992
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 994
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 978
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 980
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v1, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 981
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v1

    .line 982
    .local v1, "cb":Lcom/android/internal/view/menu/MenuPresenter$Callback;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v0

    nop

    :cond_1
    return v0
.end method
