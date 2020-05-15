.class Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout$1;
.super Ljava/lang/Object;
.source "FirTipFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;

    .line 51
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout$1;->this$0:Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout$1;->this$0:Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->access$000(Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;)V

    .line 55
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    return-void
.end method
