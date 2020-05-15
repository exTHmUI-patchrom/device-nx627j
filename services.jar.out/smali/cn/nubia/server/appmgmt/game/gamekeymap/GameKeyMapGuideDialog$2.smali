.class Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$2;
.super Lcom/android/internal/widget/PagerAdapter;
.source "GameKeyMapGuideDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    .line 141
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$2;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$2;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$400(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$2;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$400(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 150
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$2;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$400(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog$2;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;->access$400(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapGuideDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .line 161
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
